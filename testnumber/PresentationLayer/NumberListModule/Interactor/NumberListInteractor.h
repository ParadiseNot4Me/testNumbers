//
//  NumberListInteractor.h
//  testnumber
//
//  Created by Иван Григорьев on 13.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NumberListInteractorInput.h"

@protocol NumberListInteractorOutput;
@protocol NumberService;

@interface NumberListInteractor : NSObject <NumberListInteractorInput>

@property (nonatomic, weak) id<NumberListInteractorOutput> output;
@property (strong, nonatomic) id <NumberService> numberService;

@end
