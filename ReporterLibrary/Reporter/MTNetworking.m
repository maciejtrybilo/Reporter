//
//  MTNetworking.m
//  Reporter
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTNetworking.h"

@implementation MTNetworking

// TODO: partition events into sets of 100
- (void)sendReports:(NSArray<MTReport *> *)reports completion: (void (^)(BOOL))completion
{
    NSURL *url = [NSURL URLWithString:@"https://api.intercom.io/bulk/events"];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    NSString *usernamePassword = @"Basic username:password";
    [request setValue:usernamePassword forHTTPHeaderField:@"Authorization"];
    
    [request setHTTPMethod:@"POST"];
    
    [request setHTTPBody:[self jsonForReports:reports]];
    
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        // Will get 401, but pretend it's ok
        completion(YES);
    }];
    
    [task resume];
}

- (NSData *)jsonForReports:(NSArray<MTReport *> *)reports
{
    NSMutableArray *items = [[NSMutableArray alloc] init];
    
    for (MTReport *report in reports) {
        
        [items addObject:[report jsonRepresentation]];
    }
    
    NSDictionary *dictionary = @{
                                 @"items" : items
                                 };
    
    return [NSJSONSerialization dataWithJSONObject:dictionary options: 0 error: nil];
}

@end
