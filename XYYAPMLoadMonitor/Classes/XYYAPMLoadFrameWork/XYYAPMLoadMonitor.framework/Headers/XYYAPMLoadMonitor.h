//
//  UserBehaviorMonitorManager.h

//
//  Created by jackxu on 2019/11/2.
//  Copyright © 2019年 micheal. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 日志发送策略
 */
typedef NS_ENUM(NSInteger, XYYLogSendStrategy) {
    XYYLogSendStrategyAppLaunch ,   //每次程序启动时发送（默认策略，推荐使用!）
    XYYLogSendStrategyDay ,         //每天的程序第一次进入启动
    XYYLogSendStrategyCustom        //根据设定的时间间隔发送
};

/**
 XYY移动应用统计接口
 当前版本 1.0.0
 */

@interface XYYAPMLoadMonitor : NSObject

/**
 获取统计对象的实例
 @return 一个统计对象实例
 */
+ (instancetype)shareManager;

/**
 @pragram controllers 需要监听的控制器(不要传ViewController) 如果需要监听所有页面 只需要将基类传进来即可
 @pragram appKey sdk Id
 @pragram bubleId 应用bundleId
 例如@[@"BaseViewController"]
 */
- (void)startWithControllers:(NSArray*)controllers appKey:(NSString*)appKey bundleId:(NSString*)bubleId;

///APP启动开始时间
- (void)startAPPOpenTime;
///APP初始化时间
- (void)appInitTime;
///第一个页面加载完成时间
- (void)firstVCLoadDoneTime;

/*
 日志发送时间间隔,单位为分钟（发送策略为LogSendStrategyCustom时生效）
 默认值 30
 */
@property (nonatomic, assign, readwrite) int  logSendInterval;

/**
 设置应用进入后台再回到前台为同一次启动的最大间隔时间，有效值范围0～600s
 例如设置值30s，则应用进入后台后，30s内唤醒为同一次启动
 默认值 30s
 */
@property (nonatomic, assign, readwrite) int sessionResumeInterval;

/**
 设置日志发送策略
 默认值 LogSendStrategyAppLaunch
 */
@property (nonatomic, assign, readwrite) XYYLogSendStrategy logStrategy;

//是否开启监控 默认开启
@property (nonatomic, assign)BOOL enableMonitor;

//是否开启log 默认关闭
@property (nonatomic, assign)BOOL openLog;

//外部调用APP版本
@property (nonatomic, copy)NSString *appVersion;



@end
