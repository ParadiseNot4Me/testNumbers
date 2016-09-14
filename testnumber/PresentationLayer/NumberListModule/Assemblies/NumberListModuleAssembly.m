//
//  NumberListModuleAssembly.m
//  testnumber
//
//  Created by Иван Григорьев on 12.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import "NumberListModuleAssembly.h"
#import "NumberListTableViewController.h"
#import "NumberListInteractor.h"
#import "NumberListPresenter.h"
#import "NumberListRouter.h"
#import "NumberListDataDisplayManager.h"
#import "ServiceComponents.h"

@implementation  NumberListModuleAssembly

- (NumberListTableViewController *)viewNumberList {
    return [TyphoonDefinition withClass:[NumberListTableViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterNumberList]];
                              [definition injectProperty:@selector(dataDisplayManager)
                                                    with:[self dataDisplayManagerNumberList]];
                          }];
}

- (NumberListInteractor *)interactorNumberList {
    return [TyphoonDefinition withClass:[NumberListInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterNumberList]];
                              [definition injectProperty:@selector(numberService)
                                                    with:[self.serviceComponents numberService]];
                          }];
}

- (NumberListPresenter *)presenterNumberList {
    return [TyphoonDefinition withClass:[NumberListPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewNumberList]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorNumberList]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerNumberList]];
                          }];
}

- (NumberListRouter *)routerNumberList {
    return [TyphoonDefinition withClass:[NumberListRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewNumberList]];
                          }];
}

- (NumberListDataDisplayManager *)dataDisplayManagerNumberList {
    return [TyphoonDefinition withClass:[NumberListDataDisplayManager class]];
}

@end
