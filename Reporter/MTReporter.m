//
//  MTReporter.m
//  Reporter
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

#include "MTReporter.h"

@implementation MTReporter

- (instancetype)initWithReportingInterval:(int)interval
{
    self = [super init];
    
    if (self) {
        _reportingInterval = interval;
    }
    
    return self;
}

@end
