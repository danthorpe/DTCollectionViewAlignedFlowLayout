//
//  DTAppDelegate.m
//  DTCollectionViewAlignedFlowLayout
//
//  Created by Daniel Thorpe on 27/12/2012.
//  Copyright (c) 2012 Blinding Skies. All rights reserved.
//

#import "DTAppDelegate.h"

#import "Example.h"

@implementation DTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.viewController = [[Example alloc] init];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
