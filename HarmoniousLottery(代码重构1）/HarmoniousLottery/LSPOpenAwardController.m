//
//  LSPOpenAwardController.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-11.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPOpenAwardController.h"
#import "LSPCellGroup.h"
#import "LSPCellModel.h"
#import "LSPSwitchItem.h"
#import "LSPArrowItem.h"
#import "LSPCell.h"
@interface LSPOpenAwardController ()

@end

@implementation LSPOpenAwardController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setGroup1];
    // Do any additional setup after loading the view.
}
- (void)setGroup1
{
    LSPCellGroup *group1 = [[LSPCellGroup alloc] init];
    LSPSwitchItem *MorePush = [LSPSwitchItem cellModelWithIcon:nil title:@"双色球"];
    LSPSwitchItem *handShake = [LSPSwitchItem cellModelWithIcon:nil title:@"大乐透"];
    group1.items = @[MorePush,handShake,];
    group1.header = @"打开设置即可在开奖后立即收到推送消息，获知开奖号码";
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
