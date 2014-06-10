//
//  SchUrlAppDelegate.m
//  SchUrl
//
//  Created by 贾朝阳 on 14-6-10.
//  Copyright (c) 2014年 jiazhaoyang. All rights reserved.
//

#import "SchUrlAppDelegate.h"

@implementation SchUrlAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    NSLog(@"%@", [url absoluteString]);
    if ([[url host] isEqualToString:@"www.daoqitu.com"]) {
        NSString *itemId = [[url query] substringFromIndex:[[url query] rangeOfString:@"uid="].location+3];
        NSLog(@"%@", itemId);
    }
    //MyViewController *controller = [[MyViewControlley alloc] initWithItemId:itemId];
    //[self.navigationController pushViewController:controller animated:YES];
     //[controller release];
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
