//
//  AppDelegate.m
//  3DTouchDemo
//
//  Created by 王恒求 on 2016/8/18.
//  Copyright © 2016年 王恒求. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "TouchViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    ViewController* vc = [[ViewController alloc]init];
    UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    self.window.rootViewController = nav;
    
    [self.window makeKeyAndVisible];
    
    [self createTouchItem:application];
    
    return YES;
}

#pragma mark 3DTouch

-(void)createTouchItem:(UIApplication*)application
{
    UIApplicationShortcutIcon *icon1 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeShare];
    UIApplicationShortcutIcon *icon2 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypePlay];
    UIApplicationShortcutIcon *icon3 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeContact];
    
    
    UIApplicationShortcutItem *shareItem = [[UIApplicationShortcutItem alloc]initWithType:@"shareItem" localizedTitle:@"分享" localizedSubtitle:@"点击分享" icon:icon1 userInfo:nil];
    UIApplicationShortcutItem *jumpItem = [[UIApplicationShortcutItem alloc]initWithType:@"jumpItem" localizedTitle:@"跳转" localizedSubtitle:@"跳转至页面" icon:icon2 userInfo:nil];
    UIApplicationShortcutItem *scanItem = [[UIApplicationShortcutItem alloc]initWithType:@"scanItem" localizedTitle:@"扫一扫" localizedSubtitle:@"扫描二维码" icon:icon3 userInfo:nil];
    
    application.shortcutItems=@[jumpItem,scanItem,shareItem];
}

-(void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler
{
    if ([shortcutItem.type isEqualToString:@"jumpItem"]) {
        TouchViewController *vc = [[TouchViewController alloc]init];
        [(UINavigationController*)self.window.rootViewController pushViewController:vc animated:YES];
        //[self.window.rootViewController presentViewController:vc animated:YES completion:nil];
    } else if ([shortcutItem.type isEqualToString:@"shareItem"]) {
        
    } else {
        
    }
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
