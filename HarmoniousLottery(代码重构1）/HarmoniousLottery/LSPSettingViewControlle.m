//
//  LSPSettingViewControlle.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-9.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPSettingViewControlle.h"
#import "LSPCellGroup.h"
#import "LSPArrowItem.h"
#import "LSPSwitchItem.h"
#import "LSPCellModel.h"
#import "LSPCell.h"
#import "MBProgressHUD+MJ.h"
#import "LSPProductViewController.h"
#import "LSPPushNoticeController.h"
#import "LSPMineController.h"
#import "LSPHelpViewController.h"
#import "LSPShareController.h"
#import "LSPAboutController.h"
@interface LSPSettingViewControlle()

@end

@implementation LSPSettingViewControlle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setGroup1];
    [self setGroup2];
}

- (id)init
{
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (id)initWithStyle:(UITableViewStyle)style
{
    return  [super initWithStyle:UITableViewStyleGrouped];
}
- (void)setGroup1
{
    LSPCellGroup *group1 = [[LSPCellGroup alloc] init];
    LSPArrowItem *MorePush = [LSPArrowItem cellModelWithIcon:@"MorePush" title:@"推送和提醒" vcClass:[LSPPushNoticeController class]];
    LSPSwitchItem *handShake = [LSPSwitchItem cellModelWithIcon:@"handShake" title:@"摇一摇机选"];
    LSPSwitchItem *soundEffect = [LSPSwitchItem cellModelWithIcon:@"sound_Effect" title:@"声音效果"];
    group1.items = @[MorePush,handShake,soundEffect];
   [self.datas addObject:group1];
}

- (void)setGroup2
{
    LSPCellGroup *group2 = [[LSPCellGroup alloc] init];
    LSPCellModel *MoreUpdate = [LSPArrowItem cellModelWithIcon:@"MoreUpdate" title:@"检查新版本"];
    MoreUpdate.option = ^{
        [MBProgressHUD showMessage:@"检查新版本"];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUD];
            [MBProgressHUD showError:@"没有版本更新"];
            
        });
        
    };
    LSPCellModel *MoreHelp = [LSPArrowItem cellModelWithIcon:@"MoreHelp" title:@"帮助" vcClass:[LSPHelpViewController class]];
    LSPCellModel *MoreShare = [LSPArrowItem cellModelWithIcon:@"MoreShare" title:@"分享" vcClass:[LSPShareController class]];
    LSPCellModel *MoreMessage = [LSPArrowItem cellModelWithIcon:@"MoreMessage" title:@"查看消息" vcClass:[LSPMineController class]];
    LSPCellModel *MoreNetease = [LSPArrowItem cellModelWithIcon:@"MoreNetease" title:@"产品推荐" vcClass:[LSPProductViewController class]];
    LSPCellModel *MoreAbout = [LSPArrowItem cellModelWithIcon:@"MoreAbout" title:@"关于" vcClass:[LSPAboutController class]];
    
    group2.items = @[MoreUpdate,MoreHelp,MoreShare,MoreMessage,MoreNetease,MoreAbout];
    [self.datas addObject:group2];
}

@end
