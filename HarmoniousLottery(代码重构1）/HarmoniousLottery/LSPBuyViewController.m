//
//  LSPBuyViewController.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-8.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPBuyViewController.h"
#import "TitleButton.h"

@interface LSPBuyViewController()
- (IBAction)titleClick:(UIButton *)sender;
@property (nonatomic, assign) BOOL isOpen;
@property (strong,nonatomic) UIView *boundView;

@end



@implementation LSPBuyViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
}



- (IBAction)titleClick:(UIButton *)sender {
    
    [UIView animateWithDuration:0.27 animations:^{
        
       // self.isOpen = !_isOpen;
      
        if (!(self.isOpen)) {
            
    sender.imageView.transform = CGAffineTransformMakeRotation(M_PI);
           self.isOpen = !_isOpen;
           
            [self createView];
        }
      else
        {
          // sender.imageView.transform = CGAffineTransformMakeRotation(M_PI);
            CGAffineTransform s = CGAffineTransformMakeRotation(M_PI);
            sender.imageView.transform = CGAffineTransformRotate(s, M_PI);
            [self.boundView removeFromSuperview];
            self.isOpen = !_isOpen;

        }
       
    }];
    
}

- (void)createView
{
    
    self.boundView = [[UIView alloc] init];
    
    CGFloat viewX = 0;
    CGFloat viewY = 64;
    CGFloat viewW = self.view.frame.size.width;
    CGFloat viewH = 100;
    
    self.boundView.frame = CGRectMake(viewX, viewY, viewW, viewH);
    
    self.boundView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.boundView];
    
}
@end
