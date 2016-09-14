//
//  NumberService.m
//  testnumber
//
//  Created by Иван Григорьев on 12.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import "NumberServiceImplementation.h"
#import "NumberService.h"

static NSString *const kFileName = @"input";


@implementation NumberServiceImplementation

- (NSArray *)obtainNumbers {
    NSArray *numbers = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:kFileName ofType:@"plist"]];
    return numbers;
}

@end
