//
//  LSPHelp.h
//  HarmoniousLottery
//
//  Created by mac on 15-9-14.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSPHelp : NSObject

@property (copy,nonatomic) NSString *title;

@property (copy,nonatomic) NSString *html;

@property (copy,nonatomic) NSString *ID;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)helpWithDict:(NSDictionary *)dict;
@end
