//
//  LSPHelp.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-14.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPHelp.h"

@implementation LSPHelp

- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        self.title =  dict[@"title"];
        self.html = dict[@"html"];
        self.ID = dict[@"id"];
    }
    return self;
}

+ (instancetype)helpWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

@end
