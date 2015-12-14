//
//  LSPAwardAnimationController.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-11.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPAwardAnimationController.h"
#import "LSPCellGroup.h"
#import "LSPCellModel.h"
#import "LSPSwitchItem.h"
#import "LSPArrowItem.h"
#import "LSPCell.h"

@interface LSPAwardAnimationController ()

@end

@implementation LSPAwardAnimationController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setGroup1];
    // Do any additional setup after loading the view.
}
- (void)setGroup1
{
    LSPCellGroup *group1 = [[LSPCellGroup alloc] init];
    LSPSwitchItem *MorePush = [LSPSwitchItem cellModelWithIcon:nil title:@"中奖动画"];
    group1.items = @[MorePush];
    group1.header = @"当你有新中奖订单，启动程序通过动画提醒你。为避免过于频繁，高频彩不会提醒你。";
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
