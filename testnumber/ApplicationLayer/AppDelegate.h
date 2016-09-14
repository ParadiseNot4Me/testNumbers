//
//  AppDelegate.h
//  testnumber
//
//  Created by Иван Григорьев on 12.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ApplicationConfigurator;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) id <ApplicationConfigurator> applicationConfigurator;

@end

