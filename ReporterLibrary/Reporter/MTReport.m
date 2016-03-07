//
//  MTReport.m
//  Reporter
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

#import <AdSupport/ASIdentifierManager.h>
#import <UIKit/UIKit.h>
#import "MTReport.h"

@implementation MTReport

- (instancetype)initWithUserId:(NSString *)userId eventName:(NSString *)name
{
    self = [super init];
    
    if (self) {
        _userId = userId;
        _eventName = name;
        _createdAt = (long)[[[NSDate alloc] init] timeIntervalSince1970];
        
        _metadata = @{@"IDFA"           : [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString],
                      @"device_name"    : [UIDevice currentDevice].name,
                      @"device_language": [[NSLocale preferredLanguages] objectAtIndex:0],
                      @"integer"        : [NSNumber numberWithInteger: arc4random() % 1000]
                      };
    }
    
    return self;
}

- (NSDictionary *)jsonRepresentation {
    
    NSMutableDictionary *dictionary = [@{
                                 @"user_id"     : self.userId,
                                 @"event_name"  : self.eventName,
                                 @"created_at"  : [NSNumber numberWithLong: self.createdAt],
                                 } mutableCopy];
    if (self.metadata != nil) {
        dictionary[@"metadata"] = self.metadata;
    }
    
    return dictionary;
}

@end