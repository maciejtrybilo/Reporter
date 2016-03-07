//
//  MTReport.m
//  Reporter
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MTReport.h"

@interface MTReportTests : XCTestCase

@end

@implementation MTReportTests

- (void)test_init
{
    MTReport *report = [[MTReport alloc] initWithUserId:@"12345" eventName:@"event name"];
    
    XCTAssertEqualObjects(report.userId, @"12345");
    XCTAssertEqualObjects(report.eventName, @"event name");
    
    XCTAssertGreaterThan(report.createdAt, 0);
}

- (void)test_jsonRepresentation
{
    MTReport *report = [[MTReport alloc] initWithUserId:@"12345" eventName:@"event name"];
    
    NSDictionary *json = [report jsonRepresentation];
    
    XCTAssertEqualObjects(json[@"user_id"], @"12345");
    XCTAssertEqualObjects(json[@"event_name"], @"event name");
    XCTAssertGreaterThan(json[@"created_at"], [NSNumber numberWithLong:0]);
}

@end
