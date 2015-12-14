//
//  LSPCell.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-9.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPCell.h"
#import "LSPCellModel.h"
#import "LSPArrowItem.h"
#import "LSPSwitchItem.h"
#import "LSPLabelItem.h"
@interface LSPCell()

@property (strong,nonatomic) UIImageView *cellArrowView;
@property (strong,nonatomic) UISwitch *rightSwitch;
@property (strong,nonatomic) UILabel *rightLabel;
@end

@implementation LSPCell

- (UIImageView *)cellArrowView
{
    if (_cellArrowView == nil) {
        _cellArrowView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    return _cellArrowView;
}

- (UISwitch *)rightSwitch
{
    if (_rightSwitch == nil) {
        _rightSwitch = [[UISwitch alloc] init];
        [_rightSwitch addTarget:self action:@selector(switchStateChanged) forControlEvents:UIControlEventValueChanged];
    }
    return _rightSwitch;
}
- (UILabel *)rightLabel
{
    if (_rightLabel == nil) {
        _rightLabel = [[UILabel alloc] init];
        _rightLabel.backgroundColor = [UIColor blueColor];
        _rightLabel.frame = CGRectMake(0, 0, 100, 30);
    }
    return _rightLabel;
}
+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"setting";
    
    LSPCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[LSPCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }

    return cell;
}

- (void)setItem:(LSPCellModel *)item
{
    _item = item;
    [self setData];
    [self setRightContent];
}
- (void)setData
{
    if ([self.item isKindOfClass:[LSPArrowItem class]]) {
        
        self.accessoryView = self.cellArrowView;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }
    else if ([self.item isKindOfClass:[LSPSwitchItem class]])
    {
        self.accessoryView = self.rightSwitch;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        self.rightSwitch.On = [defaults boolForKey:self.item.title];
        
    }
    else if ([self.item isKindOfClass:[LSPLabelItem class]])
    {
        self.accessoryView = self.rightLabel;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    else
    {
        self.accessoryView = nil;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }

}
- (void)setRightContent
{
    if (self.item.icon) {
        self.imageView.image = [UIImage imageNamed:self.item.icon];
    }
    self.textLabel.text = self.item.title;
    self.detailTextLabel.text = self.item.subLabel;
}
- (void)switchStateChanged
{
   // NSUserDefaults *default = [NSUserDefaults standardUserDefaults];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:self.rightSwitch.isOn forKey:self.item.title];
    [defaults synchronize];
}
@end
