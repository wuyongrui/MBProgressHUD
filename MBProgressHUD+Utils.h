//
//  MBProgressHUD+Utils.h
//  MBProgressEasy
//
//  Created by wuyongrui on 16/1/10.
//  Copyright © 2016年 wuyr. All rights reserved.
//

#import "MBProgressHUD.h"

typedef NS_ENUM(NSInteger, MBProgressHUDShowTime) {
    /** Opacity animation */
    MBProgressHUDShowTimeSecond = 1,
    /** Opacity + scale animation */
    MBProgressHUDShowTimeSecond2 = 2
};


@interface MBProgressHUD (Utils)

+(MBProgressHUD *)showLoading;

+(void)dismissAllHub;

+(MBProgressHUD *)showLoadingInView:(UIView *)view;

+(void)dismissAllHubInView:(UIView *)view;

+(MBProgressHUD *)showTip:(NSString *)tip withTime:(MBProgressHUDShowTime)showTime;

+(MBProgressHUD *)showLoadingTip:(NSString *)tip;

@end
