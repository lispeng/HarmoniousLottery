//
//  LSPScoreNoticeController.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-11.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPScoreNoticeController.h"
#import "LSPCellGroup.h"
#import "LSPCellModel.h"
#import "LSPSwitchItem.h"
#import "LSPArrowItem.h"
#import "LSPCell.h"
#import "LSPLabelItem.h"
@interface LSPScoreNoticeController ()

@end

@implementation LSPScoreNoticeController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setGroup1];
    [self setGroup2];
    [self setGroup3];
}
- (void)setGroup1
{
    LSPCellGroup *group1 = [[LSPCellGroup alloc] init];
    
    LSPSwitchItem *notice = [LSPSwitchItem cellModelWithIcon:nil title:@"提醒我关注的比赛"];
    group1.footer = @"当我关注的比赛比分发生变化时，通过小弹窗或推送进行提醒";
        group1.items = @[notice];
    
    [self.datas addObject:group1];
}

- (void)setGroup2
{
    LSPCellGroup *group2 = [[LSPCellGroup alloc] init];
    group2.header = @"只在以下时间接受比分直播";
    LSPLabelItem *score = [LSPLabelItem cellModelWithIcon:nil title:@"起始时间"];
    group2.items  = @[score];
    [self.datas addObject:group2];
    

}
- (void)setGroup3
{
    LSPCellGroup *group3 = [[LSPCellGroup alloc] init];
   
  
    LSPLabelItem *endTime = [LSPLabelItem cellModelWithIcon:nil title:@"结束时间"];
    group3.items  = @[endTime];
    [self.datas addObject:group3];
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
