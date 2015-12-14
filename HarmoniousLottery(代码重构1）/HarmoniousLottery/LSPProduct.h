//
//  LSPProduct.h
//  HarmoniousLottery
//
//  Created by mac on 15-9-10.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
   "title": "网易电影票",
 "id": "com.netease.movie",
 "url": "http://itunes.apple.com/app/id583784224?mt=8",
 "icon": "movie@2x.png",
 "customUrl": "movieticket163"

 */
@interface LSPProduct : NSObject
@property (copy,nonatomic) NSString *icon;
@property (copy,nonatomic) NSString *title;
@property (copy,nonatomic) NSString *url;
@property (copy,nonatomic) NSString *scheme;
@property (copy,nonatomic) NSString *identifier;
- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)productWithDict:(NSDictionary *)dict;
@end
