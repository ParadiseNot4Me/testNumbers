//
//  NumberListDataDisplayManager.m
//  testnumber
//
//  Created by Иван Григорьев on 13.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import "NumberListDataDisplayManager.h"
#import "NumberConverter.h"

static NSString *cellIdentifier = @"DefaultTableViewCell";


@interface NumberListDataDisplayManager ()

@property (strong, nonatomic) NSArray *numbers;

@end

@implementation NumberListDataDisplayManager

- (void)updateTableViewModelWithNumbers:(NSArray *)numbers {
    self.numbers = numbers;
    [self.delegate didUpdateTableViewModel];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.numbers.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    NSString *number = self.numbers[indexPath.row];
    cell.textLabel.numberOfLines = 0;
    cell.textLabel.text = number;
    return cell;
}

@end
