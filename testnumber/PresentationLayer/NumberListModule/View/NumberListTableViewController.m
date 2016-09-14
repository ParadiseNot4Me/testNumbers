//
//  NumberListTableViewController.m
//  testnumber
//
//  Created by Иван Григорьев on 13.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import "NumberListTableViewController.h"

#import "NumberListViewOutput.h"
#import "NumberListDataDisplayManager.h"

@interface NumberListTableViewController() <NumberListDataDisplayManagerDelegate>

@end

@implementation NumberListTableViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.output setupView];
}
- (IBAction)changeStateButtonPressed:(id)sender {
    [self.output switchView];
}

#pragma mark - NumberListViewInput

- (void)setupViewWithNumberList:(NSArray *)numbers {
    [self updateViewWithNumberList:numbers];
    self.dataDisplayManager.delegate = self;
    
    self.tableView.dataSource = self.dataDisplayManager;
    self.tableView.delegate = self.dataDisplayManager;
    
    self.tableView.tableFooterView = [UIView new];
    self.tableView.estimatedRowHeight = 44.f;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
}

- (void)updateViewWithNumberList:(NSArray *)numbers {
    [self.dataDisplayManager updateTableViewModelWithNumbers:numbers];
}

#pragma mark - NumberListDataDisplayManagerDelegate

- (void)didUpdateTableViewModel {
    [self.tableView reloadData];
}

@end