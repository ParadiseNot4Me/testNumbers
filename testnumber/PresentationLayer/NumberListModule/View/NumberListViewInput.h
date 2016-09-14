//
//  NumberListViewInput.h
//  testnumber
//
//  Created by Иван Григорьев on 13.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NumberListViewInput <NSObject>

- (void)setupViewWithNumberList:(NSArray *)number;

- (void)updateViewWithNumberList:(NSArray *)number;

@end
