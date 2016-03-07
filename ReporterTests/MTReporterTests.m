//
//  MTReporterTests.m
//  Reporter
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "MTReporter.h"
#import "MTReport.h"

@interface MockReport : NSObject <MTReport>
@end

@implementation MockReport
@end

@interface MTReporter ()

@property (nonatomic) NSMutableArray<id<MTReport>> *reports;

@end

@interface MTReporterTests : XCTestCase

@end

@implementation MTReporterTests

- (void)test_init
{
    MTReporter *reporter = [[MTReporter alloc] initWithReportingInterval:30];
    
    XCTAssertEqual(reporter.reportingInterval, 30);
}

- (void)test_addReport
{
    MTReporter *reporter = [[MTReporter alloc] initWithReportingInterval:30];
    
    XCTAssertEqual(reporter.reports.count, 0);
    
    MockReport *report = [[MockReport alloc] init];
    
    [reporter addReport:report];
    
    XCTAssertEqual(reporter.reports.count, 1);
}

@end
