//
//  MTReporter.m
//  Reporter
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

#include "MTReporter.h"

@interface MTReporter ()

@property (nonatomic) NSMutableArray<id<MTReport>> *reports;

@end

@implementation MTReporter

- (instancetype)initWithReportingInterval:(int)interval
{
    self = [super init];
    
    if (self) {
        _reportingInterval = interval;
        _reports = [[NSMutableArray<id<MTReport>> alloc] init];
    }
    
    return self;
}

- (void)addReport:(id<MTReport>)report
{
    [self.reports addObject:report];
}

@end
