//
//  AppDelegate.m
//  BOMenuTableViewController
//
//  Created by Billy Öhgren on 7/23/12.
//  Copyright (c) 2012 Billy Ohgren. All rights reserved.
//

#import "AppDelegate.h"
#import "DemoViewController.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    DemoViewController *dmv = [[DemoViewController alloc] init];
    self.window.rootViewController = dmv;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
