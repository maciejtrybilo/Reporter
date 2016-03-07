//
//  MTReporter.m
//  Reporter
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

#include "MTReporter.h"
#include "MTNetworking.h"

@interface MTReporter ()

@property (nonatomic) NSMutableArray<MTReport *> *reports;
@property (nonatomic) NSArray<MTReport *> *reportsBeingSent;
@property (nonatomic) MTNetworking *networking;

@property (nonatomic) dispatch_queue_t queue;

@end

// TODO: Add persistence

@implementation MTReporter

- (instancetype)initWithReportingInterval:(NSTimeInterval)interval
{
    self = [super init];
    
    if (self) {
        _reportingInterval = interval;
        _reports = [[NSMutableArray< MTReport *> alloc] init];
        _networking = [[MTNetworking alloc] init];
        _queue = dispatch_queue_create("com.maciejtrybilo.Reporter.MTReporter", NULL);
    }
    
    [self sendReportsAfter:0];
    
    return self;
}

- (void)addReport:(MTReport *)report
{
    dispatch_async(self.queue, ^{
    
        [self.reports addObject:report];
    });
}

- (void)sendReportsAfter:(NSTimeInterval)interval
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(interval * NSEC_PER_SEC)), self.queue, ^{
        
        if (self.reports.count != 0) {
            
            self.reportsBeingSent = [self.reports copy];
            [self.reports removeAllObjects];
            
            NSLog(@"Sending %lu reports: %@", self.reportsBeingSent.count, [self.reportsBeingSent valueForKey:@"eventName"]);
            
            [self.networking sendReports:self.reportsBeingSent completion:^(BOOL success) {
                
                dispatch_async(self.queue, ^{
                    
                    if (!success) {
                        [self.reports addObjectsFromArray:self.reportsBeingSent];
                    }
                    
                    self.reportsBeingSent = nil;
                    [self sendReportsAfter:self.reportingInterval];
                });
                
            }];
            
        } else {
            
            NSLog(@"Nothing to send...");
            [self sendReportsAfter:self.reportingInterval];
        }
        
    });
}

@end
