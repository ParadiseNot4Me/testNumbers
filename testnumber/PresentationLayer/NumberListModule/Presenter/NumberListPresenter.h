//
//  NumberListPresenter.h
//  testnumber
//
//  Created by Иван Григорьев on 13.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NumberListViewOutput.h"
#import "NumberListInteractorOutput.h"

@protocol NumberListViewInput;
@protocol NumberListInteractorInput;
@protocol NumberListRouterInput;

@interface NumberListPresenter : NSObject <NumberListViewOutput,NumberListInteractorOutput>

@property (nonatomic, weak) id<NumberListViewInput> view;
@property (nonatomic, strong) id<NumberListInteractorInput>  interactor;
@property (nonatomic, strong) id<NumberListRouterInput> router;

@end
