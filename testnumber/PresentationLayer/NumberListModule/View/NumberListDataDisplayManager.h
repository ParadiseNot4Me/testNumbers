//
//  NumberListDataDisplayManager.h
//  testnumber
//
//  Created by Иван Григорьев on 13.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol NumberListDataDisplayManagerDelegate

- (void)didUpdateTableViewModel;

@end

@interface NumberListDataDisplayManager : NSObject <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) id <NumberListDataDisplayManagerDelegate> delegate;

- (void)updateTableViewModelWithNumbers:(NSArray *)numbers;

@end