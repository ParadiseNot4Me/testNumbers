//
//  ModuleAssemblyBase.h
//  testnumber
//
//  Created by Иван Григорьев on 12.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import <Typhoon/Typhoon.h>

@protocol ServiceComponents;

@interface ModuleAssemblyBase : TyphoonAssembly

@property (strong, nonatomic, readonly) TyphoonAssembly <ServiceComponents> *serviceComponents;

@end
