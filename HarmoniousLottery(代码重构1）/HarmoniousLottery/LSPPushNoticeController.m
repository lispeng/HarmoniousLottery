//
//  LSPPushNoticeController.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-10.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPPushNoticeController.h"
#import "LSPCellGroup.h"
#import "LSPCellModel.h"
#import "LSPSwitchItem.h"
#import "LSPArrowItem.h"
#import "LSPCell.h"
#import "LSPOpenAwardController.h"
#import "LSPAwardAnimationController.h"
#import "LSPScoreNoticeController.h"
@interface LSPPushNoticeController ()

@end

@implementation LSPPushNoticeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setGroup1];
    // Do any additional setup after loading the view.
}

- (void)setGroup1
{
    LSPCellGroup *group1 = [[LSPCellGroup alloc] init];
    LSPArrowItem *MorePush = [LSPArrowItem cellModelWithIcon:nil title:@"开奖号码推送" vcClass:[LSPOpenAwardController class]];
    LSPArrowItem *handShake = [LSPArrowItem cellModelWithIcon:nil title:@"中奖动画" vcClass:[LSPAwardAnimationController class]];
    LSPArrowItem *soundEffect = [LSPArrowItem cellModelWithIcon:nil title:@"比分直播提醒" vcClass:[LSPScoreNoticeController class]];
    LSPArrowItem *time = [LSPArrowItem cellModelWithIcon:nil title:@"购彩定时提醒"];
    group1.items = @[MorePush,handShake,soundEffect,time];
    
    [self.datas addObject:group1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
