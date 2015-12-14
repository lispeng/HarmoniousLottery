//
//  LSPCellModel.h
//  HarmoniousLottery
//
//  Created by mac on 15-9-9.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void (^LSPCellModelOption)();
@interface LSPCellModel : NSObject

@property (copy,nonatomic) NSString *icon;

@property (copy,nonatomic) NSString *title;

@property (weak,nonatomic) Class vcClass;

@property (nonatomic,weak) UILabel *labelView;

@property (copy,nonatomic) NSString *subLabel;

@property (copy,nonatomic) LSPCellModelOption option;

+ (instancetype)cellModelWithIcon:(NSString *)icon title:(NSString *)title;

@end
