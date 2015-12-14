//
//  LSPBaseSettingController.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-10.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPBaseSettingController.h"
#import "LSPCellGroup.h"
#import "LSPCellModel.h"
#import "LSPSwitchItem.h"
#import "LSPArrowItem.h"
#import "LSPCell.h"
#import "MBProgressHUD+MJ.h"
#import "LSPProductViewController.h"
#import "LSPMineController.h"
@interface LSPBaseSettingController ()

@end

@implementation LSPBaseSettingController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
}

- (id)init
{
    return [super initWithStyle:UITableViewStyleGrouped];
}
- (NSMutableArray *)datas
{
    if (_datas == nil) {
        _datas = [[NSMutableArray alloc] init];
    }
    return _datas;
}
- (id)initWithStyle:(UITableViewStyle)style
{
    return  [super initWithStyle:UITableViewStyleGrouped];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
        return self.datas.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    LSPCellGroup *group = self.datas[section];
    return group.items.count;
}

- (UITableViewCell *)
tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LSPCell *cell = [LSPCell cellWithTableView:tableView];
    
    LSPCellGroup *group = self.datas[indexPath.section];
    
    cell.item = group.items[indexPath.row];
    
    return  cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    LSPCellGroup *group = self.datas[indexPath.section];
    LSPCellModel *item = group.items[indexPath.row];
    //LSPCellModel *item = self.datas[indexPath.section][indexPath.row];
    if (item.option) {
        item.option();
        
    }
    else if ([item isKindOfClass:[LSPCellModel class]]) {
        
        LSPArrowItem *item1 = (LSPArrowItem *)item;
        if (item1.vcClass == nil) return;
        
        
        UIViewController *vc = [[item.vcClass alloc] init];
        vc.title = item.title;
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    LSPCellGroup *group = self.datas[section];
    return group.header;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    LSPCellGroup *group = self.datas[section];
    return group.footer;
}

@end
