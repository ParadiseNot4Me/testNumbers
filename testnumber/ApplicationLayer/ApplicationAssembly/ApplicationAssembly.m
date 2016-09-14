//
//  ApplicationAssembly.m
//  testnumber
//
//  Created by Иван Григорьев on 12.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import "ApplicationAssembly.h"
#import "ApplicationConfigurator.h"
#import "ApplicationConfiguratorImplementation.h"
#import "AppDelegate.h"

@implementation ApplicationAssembly

- (AppDelegate *)appDelegate {
    return [TyphoonDefinition withClass:[AppDelegate class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(applicationConfigurator)
                                                    with:[self applicationConfigurator]];
                          }];
}

- (id <ApplicationConfigurator>)applicationConfigurator {
    return [TyphoonDefinition withClass:[ApplicationConfiguratorImplementation class]];
}

@end
