//
//  Services.m
//  
//
//  Created by Maciej Trybilo on 07/03/2016.
//
//

#import "Services.h"

@implementation Services

+ (instancetype)sharedInstance
{
    static Services *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[Services alloc] init];
    });
    
    return _sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        //_reporter = [[MTReporter alloc] initWithReportingInterval: 30];
    }
    
    return self;
}

@end
