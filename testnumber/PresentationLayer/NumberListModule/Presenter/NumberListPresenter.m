//
//  NumberListPresenter.m
//  testnumber
//
//  Created by Иван Григорьев on 13.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import "NumberListPresenter.h"
#import "NumberListViewInput.h"
#import "NumberListInteractorInput.h"
#import "NumberListRouterInput.h"

@interface NumberListPresenter ()

@property (assign, nonatomic, getter=isSpellOut) BOOL spellOut;

@end

@implementation NumberListPresenter

#pragma mark - NumberListViewOutput

- (void)setupView {
    NSArray *numbers = [self.interactor obtainNumberListSpellOut:self.isSpellOut];
    [self.view setupViewWithNumberList:numbers];
}

- (void)switchView {
    self.spellOut = !self.spellOut;
    NSArray *numbers = [self.interactor obtainNumberListSpellOut:self.isSpellOut];
    [self.view updateViewWithNumberList:numbers];
}

@end
