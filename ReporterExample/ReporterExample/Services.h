//
//  Services.h
//  
//
//  Created by Maciej Trybilo on 07/03/2016.
//
//

#import <Reporter.h>

@interface Services : NSObject

+ (instancetype)sharedInstance;

@property (nonatomic, readonly) MTReporter *reporter;

@end
