//
//  NumberConverter.m
//  testnumber
//
//  Created by Иван Григорьев on 12.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import "NumberConverter.h"
#import "Primitive.h"
#import "ModifierCase.h"

NSString * const tenNames[] = {@"",@"десять", @"двадцать", @"тридцать", @"сорок", @"пятьдесят", @"шестьдесят", @"семьдесят", @"восемьдесят", @"девяносто"};

NSString * const hundredNames[] = {@"", @"сто", @"двести", @"триста", @"четыреста", @"пятьсот", @"шестьсот", @"семьсот", @"восемьсот", @"девятьсот"};

@implementation NumberConverter

+(NSString *)convert:(long long)number {
    if (number == 0) { return @"ноль"; }
    int index = 0;
    NSString *numberString = @"";
    do {
        NSString *convertThousand = [self convertThousand:number % 1000 withIndex:index];
        numberString = [NSString stringWithFormat:@"%@ %@",convertThousand, numberString];
        number /= 1000;
        index++;
    } while(number);
    
    return [self cleanString:numberString];
}

+(NSString *)convertThousand:(int)number withIndex:(int)index {
    NSString *numberString = @"";
    int digit = number % 10;
    int dozens = number % 100 - digit;
    int hundreds = number % 1000 - dozens - digit;
    
    if (number % 100 < 20){
        numberString = [self primitiveToNumber:number % 100 index:index];
    } else {
        numberString = [self primitiveToNumber:digit index:index];
        numberString = [NSString stringWithFormat:@"%@ %@",tenNames[dozens/10], numberString];
    }
    
    numberString = [NSString stringWithFormat:@"%@ %@",hundredNames[hundreds/100], numberString];
    
    if (number != 0) {
        if (digit+dozens < 20) {
            numberString = [self addModifier:numberString number:digit+dozens index:index];
        } else {
            numberString = [self addModifier:numberString number:digit index:index];
        }
    }
    
    return numberString;
}

+(NSString *)primitiveToNumber:(int)number index:(int)index {
    NSString *primitiveString = @"";
    Primitive *primitive = self.numNames[number];
    
    if ((index == 1) && primitive.thousands) {
        primitiveString = primitive.thousands;
    } else {
        primitiveString = primitive.ordinary;
    }
    
    return primitiveString;
}

+(NSString *)addModifier:(NSString *)numberString number:(int)number index:(int)index {
    ModifierCase *modifierCase = self.modifierCases[index];
    
    switch (number) {
        case 1:
            numberString = [numberString stringByAppendingFormat:@" %@",modifierCase.nominative];
            break;
        case 2:
        case 3:
        case 4:
            numberString = [numberString stringByAppendingFormat:@" %@",modifierCase.genitive];
            break;
        default:
            numberString = [numberString stringByAppendingFormat:@" %@",modifierCase.multiple];
            break;
    }
    
    return numberString;
}

+ (NSArray *)modifierCases {
    static NSArray *modifierCases;
    if (!modifierCases) {
        modifierCases = @[[ModifierCase modifierCaseWithNominative:@"" genitive:@"" multiple:@""],[ModifierCase modifierCaseWithNominative:@"тысяча" genitive:@"тысячи" multiple:@"тысяч"],[ModifierCase modifierCaseWithNominative:@"миллион" genitive:@"миллиона" multiple:@"миллионов"],[ModifierCase modifierCaseWithNominative:@"миллиард" genitive:@"миллиарда" multiple:@"миллиардов"],[ModifierCase modifierCaseWithNominative:@"триллион" genitive:@"триллиона" multiple:@"триллионов"],[ModifierCase modifierCaseWithNominative:@"квадриллион" genitive:@"квадриллиона" multiple:@"квадриллионов"],[ModifierCase modifierCaseWithNominative:@"квинтиллион" genitive:@"квинтиллиона" multiple:@"квинтиллионов"]];
    }
    return modifierCases;
}

+ (NSArray *)numNames {
    static NSArray *numNames;
    if (!numNames) {
        numNames = @[[Primitive primitiveWithOrdinary:@"" thousands:@""],[Primitive primitiveWithOrdinary:@"один" thousands:@"одна"],[Primitive primitiveWithOrdinary:@"два" thousands:@"две"],[Primitive primitiveWithOrdinary:@"три"],[Primitive primitiveWithOrdinary:@"четыре"],[Primitive primitiveWithOrdinary:@"пять"],[Primitive primitiveWithOrdinary:@"шесть"],[Primitive primitiveWithOrdinary:@"семь"],[Primitive primitiveWithOrdinary:@"восемь"],[Primitive primitiveWithOrdinary:@"девять"],[Primitive primitiveWithOrdinary:@"десять"],[Primitive primitiveWithOrdinary:@"одиннадцать"],[Primitive primitiveWithOrdinary:@"двенадцать"],[Primitive primitiveWithOrdinary:@"тринадцать"],[Primitive primitiveWithOrdinary:@"четырнадцать"],[Primitive primitiveWithOrdinary:@"пятнадцать"],[Primitive primitiveWithOrdinary:@"шестнадцать"],[Primitive primitiveWithOrdinary:@"семнадцать"],[Primitive primitiveWithOrdinary:@"восемнадцать"],[Primitive primitiveWithOrdinary:@"девятнадцать"]];
    }
    return numNames;
}

+(NSString *)cleanString:(NSString *)numberString {
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"  +" options:NSRegularExpressionCaseInsensitive error:nil];
    numberString = [regex stringByReplacingMatchesInString:numberString options:0 range:NSMakeRange(0, numberString.length) withTemplate:@" "];
    
    numberString = [numberString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return numberString;
}

@end
