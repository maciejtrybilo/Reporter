//
//  MTReporter.h
//  Reporter
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

@import Foundation;

@interface MTReporter : NSObject

@property (nonatomic, readonly) int reportingInterval;

- (instancetype)initWithReportingInterval:(int)interval;

@end
