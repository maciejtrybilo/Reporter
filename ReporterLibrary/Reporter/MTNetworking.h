//
//  MTNetworking.h
//  Reporter
//
//  Created by Maciej Trybilo on 07/03/2016.
//  Copyright © 2016 Maciej Trybilo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTReport.h"

@interface MTNetworking : NSObject

- (void)sendReports:(NSArray<MTReport *> *)reports completion: (void (^)(BOOL))completion;

@end
