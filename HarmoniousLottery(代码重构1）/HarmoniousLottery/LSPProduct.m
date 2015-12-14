//
//  LSPProduct.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-10.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPProduct.h"

@implementation LSPProduct
- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        self.icon = dict[@"icon"];
        self.title = dict[@"title"];
        self.url = dict[@"url"];
        self.scheme = dict[@"customUrl"];
        self.identifier = dict[@"id"];
    }
    return self;
}

+ (instancetype)productWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}
@end
