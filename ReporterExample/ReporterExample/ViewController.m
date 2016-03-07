//
//  ViewController.m
//  ReporterExample
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

#import "ViewController.h"
#import "Services.h"
#import "UIViewController_Analytics.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configureAnalyticsWithName: @"ViewController0"];
}

@end