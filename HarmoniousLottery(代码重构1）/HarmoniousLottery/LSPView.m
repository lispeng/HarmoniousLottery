//
//  LSPView.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-29.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPView.h"
#import "LSPRoundButton.h"
@interface LSPView()

@property (weak, nonatomic) IBOutlet UIImageView *rotateView;

@property (weak, nonatomic) LSPRoundButton *btnSelected;

@property (strong, nonatomic) CADisplayLink *link;

- (IBAction)startChioce;


@end
@implementation LSPView

+ (LSPView *)roundView
{
    return [[[NSBundle mainBundle] loadNibNamed:@"LSPView" owner:nil options:nil] lastObject];
}

- (void)awakeFromNib
{
    
    self.rotateView.userInteractionEnabled = YES;
    
    UIImage *bigImage = [UIImage imageNamed:@"LuckyAstrology"];
    UIImage *bigImageSelected = [UIImage imageNamed:@"LuckyAstrologyPressed"];
    
    CGFloat imageW = bigImage.size.width / 12 * [UIScreen mainScreen].scale;
    CGFloat imageH = bigImage.size.height * [UIScreen mainScreen].scale;
    
    for (int index = 0; index < 12; index ++) {
        
        LSPRoundButton *btn = [LSPRoundButton buttonWithType:UIButtonTypeCustom];
        
        CGFloat imageX = index * imageW;
        CGFloat imageY = 0;
        CGRect imageRect = CGRectMake(imageX, imageY, imageW, imageH);
        
        CGImageRef smallImage = CGImageCreateWithImageInRect(bigImage.CGImage, imageRect);
        CGImageRef smallImageSelected = CGImageCreateWithImageInRect(bigImageSelected.CGImage, imageRect);
        
        
        [btn setImage:[UIImage imageWithCGImage:smallImage] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageWithCGImage:smallImageSelected] forState:UIControlStateSelected];
        
        [btn setBackgroundImage:[UIImage imageNamed:@"LuckyRototeSelected"] forState:UIControlStateSelected];
        
        btn.bounds = CGRectMake(0, 0, 68, 143);
        
        btn.layer.anchorPoint = CGPointMake(0.5, 1);
        btn.layer.position = CGPointMake(self.rotateView.frame.size.width * 0.5, self.rotateView.frame.size.height * 0.5);
        
        CGFloat angle = (30 * index) / 180.0 * M_PI;
        btn.transform = CGAffineTransformMakeRotation(angle);
        
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
        
        [self.rotateView addSubview:btn];
        
        if (index == 0) {
            
            [self btnClick:btn];
        }
        
        
    }
    
}

- (void)btnClick:(LSPRoundButton *)sender
{
    self.btnSelected.selected = NO;
    sender.selected = YES;
    self.btnSelected = sender;
    
}

- (void)startRotate
{
    if(self.link) return;
    
    CADisplayLink *dis = [CADisplayLink displayLinkWithTarget:self selector:@selector(update)];
    
    [dis addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
    
    self.link = dis;
    
    
    
}

- (void)stopRotate
{
    [self.link invalidate];
    self.link = nil;
    
}

- (void)update
{
    self.rotateView.transform = CGAffineTransformRotate(self.rotateView.transform, M_PI / 500);
}
/*
- (IBAction)startChioce {
    
    [self stopRotate];
    
    CABasicAnimation *anim = [CABasicAnimation animation];
    
    anim.keyPath = @"transform.rotation";
    
    anim.toValue = @(2 * M_PI * 3);
    anim.duration = 1.5;
    
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.delegate = self;
    [self.rotateView.layer addAnimation:anim forKey:nil];
    
    
    
    self.userInteractionEnabled = NO;
    
    
}
*/
- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    NSLog(@"animationDidStop");
    self.userInteractionEnabled = YES;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self startRotate];
    });
}

- (IBAction)startChioce {
    
    [self stopRotate];
    
    CABasicAnimation *anim = [CABasicAnimation animation];
    
    anim.keyPath = @"transform.rotation";
    
    anim.toValue = @(2 * M_PI * 3);
    anim.duration = 1.5;
    
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.delegate = self;
    [self.rotateView.layer addAnimation:anim forKey:nil];
    
    
    
    self.userInteractionEnabled = NO;
}
@end
