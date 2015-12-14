//
//  LSPCellGroup.h
//  HarmoniousLottery
//
//  Created by mac on 15-9-9.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSPCellGroup : NSObject

@property (copy,nonatomic) NSString *header;

@property (copy,nonatomic) NSString *footer;

@property (strong,nonatomic) NSArray *items;

@end
