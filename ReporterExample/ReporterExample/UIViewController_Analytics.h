//
//  UIViewController_Analytics.h
//  ReporterExample
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnalyticsViewController.h"

@interface UIViewController ()

- (void)configureAnalyticsWithName:(NSString *)name;

@end

@implementation UIViewController (Analytics)

- (void)configureAnalyticsWithName:(NSString *)name {
    AnalyticsViewController *analytics = [[AnalyticsViewController alloc] initWithName:name];
    [self addChildViewController:analytics];
    [analytics didMoveToParentViewController:self];
    [self.view addSubview:analytics.view];
}

@end
