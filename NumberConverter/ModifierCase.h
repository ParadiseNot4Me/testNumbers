//
//  ModifierCase.h
//  testnumber
//
//  Created by Иван Григорьев on 12.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ModifierCase : NSObject

@property (strong, nonatomic) NSString *nominative;
@property (strong, nonatomic) NSString *genitive;
@property (strong, nonatomic) NSString *multiple;

+ (instancetype)modifierCaseWithNominative:(NSString *)nominative genitive:(NSString *)genitive multiple:(NSString *)multiple;

@end
