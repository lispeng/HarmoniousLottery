//
//  LSPMineController.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-9.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPMineController.h"
#import "UIImage+LSP.h"
#import "LSPSettingViewControlle.h"
@interface LSPMineController()
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

- (IBAction)settingItemClick:(id)sender;


@end
@implementation LSPMineController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *normalImage = [UIImage resizableWithImage:@"RedButton"];
    UIImage *selectedImage = [UIImage resizableWithImage:@"RedButtonPressed"];
    
    [self.loginBtn setBackgroundImage:normalImage forState:UIControlStateNormal];
    [self.loginBtn setBackgroundImage:selectedImage forState:UIControlStateHighlighted];
    
    
}

- (IBAction)settingItemClick:(id)sender {
    
    LSPSettingViewControlle *vc = [[LSPSettingViewControlle alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
