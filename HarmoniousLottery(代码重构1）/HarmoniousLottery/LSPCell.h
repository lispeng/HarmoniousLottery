//
//  LSPCell.h
//  HarmoniousLottery
//
//  Created by mac on 15-9-9.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LSPCellModel;
@interface LSPCell : UITableViewCell

@property (strong,nonatomic) LSPCellModel *item
;
+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
