//
//  AnalyticsViewController.m
//  ReporterExample
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

#import "AnalyticsViewController.h"
#import "Services.h"
#import "ViewReport.h"

@implementation AnalyticsViewController

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (!self) return nil;
    
    _name = name;
    self.view.alpha = 0.0;
    
    return self;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    ViewReport *screenView = [[ViewReport alloc] initWithName:self.name];
    [[Services sharedInstance].reporter addReport:screenView];
}

@end
