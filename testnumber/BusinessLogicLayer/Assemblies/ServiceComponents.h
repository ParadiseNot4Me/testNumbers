//
//  ServiceComponents.h
//  testnumber
//
//  Created by Иван Григорьев on 12.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NumberService;

@protocol ServiceComponents <NSObject>

- (id <NumberService>)numberService;

@end
