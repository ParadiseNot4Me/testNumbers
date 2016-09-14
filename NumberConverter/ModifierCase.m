//
//  ModifierCase.m
//  testnumber
//
//  Created by Иван Григорьев on 12.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import "ModifierCase.h"

@implementation ModifierCase

+ (instancetype)modifierCaseWithNominative:(NSString *)nominative genitive:(NSString *)genitive multiple:(NSString *)multiple {
    ModifierCase *modifierCase = [ModifierCase new];
    modifierCase.nominative = nominative;
    modifierCase.genitive = genitive;
    modifierCase.multiple = multiple;
    
    return modifierCase;
}

@end
