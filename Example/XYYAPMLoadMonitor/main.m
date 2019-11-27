//
//  main.m
//  XYYAPMLoadMonitor
//
//  Created by xudaquan on 11/26/2019.
//  Copyright (c) 2019 xudaquan. All rights reserved.
//

@import UIKit;
#import "XYYAppDelegate.h"
#import <XYYAPMLoadMonitor/XYYAPMLoadMonitor.h>
int main(int argc, char * argv[])
{
    @autoreleasepool {
        [[XYYAPMLoadMonitor shareManager]startAPPOpenTime];//应用启动开始时间
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([XYYAppDelegate class]));
    }
}
