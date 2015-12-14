//
//  LSPProductCell.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-10.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPProductCell.h"
#import "LSPProduct.h"
@interface LSPProductCell()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;

@property (weak, nonatomic) IBOutlet UILabel *titleView;



@end
@implementation LSPProductCell
/*
+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionViewl
{
    UINib *nib = [UINib nibWithNibName:@"LSPProductCell" bundle:nil];
    
}
 */

- (void)awakeFromNib
{
    self.iconView.layer.cornerRadius = 8;
    self.iconView.clipsToBounds = YES;
}
- (void)setProduct:(LSPProduct *)product
{
    _product = product;
    
    NSArray *arr = [product.icon componentsSeparatedByString:@"@"];
    NSString *iconName = arr[0];
    self.iconView.image = [UIImage imageNamed:iconName];
    self.titleView.text = product.title;
}

@end
