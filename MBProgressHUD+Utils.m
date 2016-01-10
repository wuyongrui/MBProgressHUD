//
//  MBProgressHUD+Utils.m
//  MBProgressEasy
//
//  Created by wuyongrui on 16/1/10.
//  Copyright © 2016年 wuyr. All rights reserved.
//

#import "MBProgressHUD+Utils.h"

@implementation MBProgressHUD (Utils)

+(UIWindow *)shareWindow {
    return [UIApplication sharedApplication].windows.lastObject;
}

+(MBProgressHUD *)showLoading {
    return [self showLoadingInView:[self shareWindow]];
}

+(void)dismissAllHub {
    [self dismissAllHubInView:[self shareWindow]];
}

+(MBProgressHUD *)showLoadingInView:(UIView *)view {
    [self dismissAllHubInView:view];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.labelText = NULL;
    hud.userInteractionEnabled = YES;
    return hud;
}

+(void)dismissAllHubInView:(UIView *)view {
    [MBProgressHUD hideAllHUDsForView:view animated:YES];
}

+(MBProgressHUD *)showTip:(NSString *)tip withTime:(MBProgressHUDShowTime)showTime {
    [self dismissAllHub];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[self shareWindow] animated:YES];
    hud.detailsLabelText = tip;
    hud.detailsLabelFont = [UIFont systemFontOfSize:16.0];
    hud.mode = MBProgressHUDModeText;
    [hud hide:YES afterDelay:showTime];
    return hud;
}

+(MBProgressHUD *)showLoadingTip:(NSString *)tip {
    [self dismissAllHub];
    MBProgressHUD *hud = [self showLoading];
    hud.labelText = tip;
    return hud;
}

@end
