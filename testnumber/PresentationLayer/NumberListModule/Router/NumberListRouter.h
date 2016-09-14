//
//  NumberListRouter.h
//  testnumber
//
//  Created by Иван Григорьев on 13.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>
#import "NumberListRouterInput.h"

@interface NumberListRouter : NSObject <NumberListRouterInput>

@property (weak, nonatomic) id <RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
