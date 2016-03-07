//
//  AnalyticsViewController.h
//  ReporterExample
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnalyticsViewController : UIViewController

@property (nonatomic, readonly) NSString *name;
- (instancetype)initWithName:(NSString *)name;

@end
