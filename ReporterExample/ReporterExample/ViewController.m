//
//  ViewController.m
//  ReporterExample
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

#import "ViewController.h"
#import "Services.h"
#import "ReportingEvent.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ReportingEvent *event = [[ReportingEvent alloc] init];
    [[Services sharedInstance].reporter addReport:event];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end