//
//  MTReporter.h
//  Reporter
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

@import Foundation;
#import "MTReport.h"

@interface MTReporter : NSObject

@property (nonatomic, readonly) NSTimeInterval reportingInterval;

- (instancetype)initWithReportingInterval:(NSTimeInterval)interval;
- (void)addReport:(MTReport *)report;

@end
