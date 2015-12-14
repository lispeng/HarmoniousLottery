//
//  LSPProductViewController.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-10.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPProductViewController.h"
#import "LSPProduct.h"
#import "LSPProductCell.h"
#define collectionViewCell @"collection"

@interface LSPProductViewController()

@property (strong,nonatomic) NSArray *products;

@end

@implementation LSPProductViewController
- (id)init
{
    UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc] init];
    flow.minimumInteritemSpacing = 0;
    flow.minimumLineSpacing = 10;
    flow.sectionInset = UIEdgeInsetsMake(flow.minimumLineSpacing, 0, 0, 0);
    flow.itemSize = CGSizeMake(80, 80);
    return [super initWithCollectionViewLayout:flow];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   // [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:collectionViewCell];
    
    UINib *nib = [UINib nibWithNibName:@"LSPProductCell" bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:collectionViewCell];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
}

- (NSArray *)products
{
    if (_products == nil) {
        
        //加载JSON文件
        NSString *file = [[NSBundle mainBundle] pathForResource:@"products.json" ofType:nil];
        NSData *data = [NSData dataWithContentsOfFile:file];
        NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        
        NSMutableArray *dicts = [NSMutableArray array];
        for(NSDictionary *dict in datas)
        {
            LSPProduct *product = [LSPProduct productWithDict:dict];
            [dicts addObject:product];
        }
        _products = dicts;
    }
    
    return _products;
}

/**
 *  数据源方法
 */

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    
    return self.products.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    LSPProductCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:collectionViewCell forIndexPath:indexPath];
    //cell.backgroundColor = [UIColor clearColor];
    cell.product = self.products[indexPath.item];
   
    return cell;
    
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    LSPProduct *item = self.products[indexPath.row];
    
    UIApplication *app = [UIApplication sharedApplication];
    NSString *urlString = [NSString stringWithFormat:@"%@://%@",item.scheme,item.identifier];
    NSURL *url = [NSURL URLWithString:urlString];
    if ([app canOpenURL:url]) {
        
        [app openURL:url];
    }
    else{
        [app openURL:[NSURL URLWithString:item.url]];
    }
}
@end
