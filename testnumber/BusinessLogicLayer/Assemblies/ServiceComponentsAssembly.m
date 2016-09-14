//
//  ServiceComponentsAssembly.m
//  testnumber
//
//  Created by Иван Григорьев on 12.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import "ServiceComponentsAssembly.h"
#import "NumberService.h"
#import "NumberServiceImplementation.h"

@implementation ServiceComponentsAssembly

- (id <NumberService>)numberService {
    return [TyphoonDefinition withClass:[NumberServiceImplementation class]];
}

@end

