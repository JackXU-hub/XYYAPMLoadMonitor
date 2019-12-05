//
//  XYYAppDelegate.m
//  XYYAPMLoadMonitor
//
//  Created by xudaquan on 11/26/2019.
//  Copyright (c) 2019 xudaquan. All rights reserved.
//

#import "XYYAppDelegate.h"
#import <XYYAPMLoadMonitor/XYYAPMLoadMonitor.h>
@implementation XYYAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
 [[XYYAPMLoadMonitor shareManager]appInitTime];//APP 启动初始化时间
  XYYAPMLoadMonitor *manager = [XYYAPMLoadMonitor shareManager];
  manager.openLog = YES;//是否开启日志
  manager.logStrategy = XYYLogSendStrategyCustom;//设置日志发送策略
  manager.enableMonitor = YES;
  manager.appVersion = @"1.1.0";//集成SDK应用的版本号
  manager.sessionResumeInterval = 30;//上报时间间隔 单位为分钟
  manager.appLaunchDurationThreshold = 300;//设置App 首次启动耗时（冷启动）阀值 默认是300毫秒
  manager.appLaunchDurationThreshold = 100;//设置ViewController 启动耗时 默认100毫秒
  [manager startWithControllers:@[@"BaseViewController"] appKey:@"C692469853282DD6" bundleId:@"com.apm.demo"];
  [manager firstVCLoadDoneTime];//第一个页面加载完成时间 此句代码需要注入到最后一行
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
