//
//  NumberListTableViewController.h
//  testnumber
//
//  Created by Иван Григорьев on 13.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NumberListViewInput.h"

@protocol NumberListViewOutput;
@class NumberListDataDisplayManager;

@interface NumberListTableViewController : UITableViewController <NumberListViewInput>

@property (nonatomic, strong) id<NumberListViewOutput> output;
@property (strong, nonatomic) NumberListDataDisplayManager *dataDisplayManager;

@end
