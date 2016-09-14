//
//  NumberListInteractor.m
//  testnumber
//
//  Created by Иван Григорьев on 13.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import "NumberListInteractor.h"
#import "NumberService.h"
#import "NumberConverter.h"

@implementation NumberListInteractor

- (NSArray *)obtainNumberListSpellOut:(BOOL)spellOut {
    NSArray *numbers = [self.numberService obtainNumbers];
    NSMutableArray *stringNumbers = [NSMutableArray new];
    if (!spellOut) {
        for (NSNumber *number in numbers) {
            [stringNumbers addObject:[number stringValue]];
        }
    } else {
        for (NSNumber *number in numbers) {
            NSString *spellOutNumber = [NumberConverter convert:[number longLongValue]];
            [stringNumbers addObject:spellOutNumber];
        }
    }
  
    return stringNumbers;
}

@end
