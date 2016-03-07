//
//  MTReport.h
//  Reporter
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MTReport : NSObject

- (instancetype)initWithUserId:(NSString *)userId eventName:(NSString *)name;

@property (nonatomic, readonly) NSString *userId;
@property (nonatomic, readonly) NSString *eventName;
@property (nonatomic, readonly) long createdAt;
@property (nonatomic, readonly) NSDictionary *metadata;

- (NSDictionary *)jsonRepresentation;

@end
