//
//  ModifierCase.h
//  testnumber
//
//  Created by Иван Григорьев on 12.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Primitive : NSObject

@property (strong, nonatomic) NSString *ordinary;
@property (strong, nonatomic) NSString *thousands;

+ (instancetype)primitiveWithOrdinary:(NSString *)ordinary;
+ (instancetype)primitiveWithOrdinary:(NSString *)ordinary thousands:(NSString *)thousands;

@end
