//
//  ReportingScreenView.m
//  ReporterExample
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

#import "ViewReport.h"

@implementation ViewReport

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    
    if (self) {
        _name = name;
    }
    
    return self;
}

@end
