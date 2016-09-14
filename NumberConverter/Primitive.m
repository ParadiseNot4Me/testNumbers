//
//  ModifierCase.m
//  testnumber
//
//  Created by Иван Григорьев on 12.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import "Primitive.h"

@implementation Primitive

+ (instancetype)primitiveWithOrdinary:(NSString *)ordinary {
    return [Primitive primitiveWithOrdinary:ordinary thousands:nil];
}

+ (instancetype)primitiveWithOrdinary:(NSString *)ordinary thousands:(NSString *)thousands {
    Primitive *primitive = [Primitive new];
    primitive.ordinary = ordinary;
    primitive.thousands = thousands;
    
    return primitive;
}

@end
