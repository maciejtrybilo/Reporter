//
//  MTReporterTests.m
//  Reporter
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "MTReporter.h"

@interface MTReporterTests : XCTestCase

@end

@implementation MTReporterTests

- (void)test_init
{
    MTReporter *reporter = [[MTReporter alloc] initWithReportingInterval:30];
    
    XCTAssertEqual(reporter.reportingInterval, 30);
}

@end
