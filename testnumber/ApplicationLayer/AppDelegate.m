//
//  AppDelegate.m
//  testnumber
//
//  Created by Иван Григорьев on 12.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import "AppDelegate.h"
#import "ApplicationConfigurator.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self.applicationConfigurator configurate];
    
    return YES;
}
@end
