//
//  LSPLuckyNumController.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-29.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPLuckyNumController.h"
#import "LSPView.h"
@interface LSPLuckyNumController ()

@property (weak,nonatomic) LSPView *wheel;

@end

@implementation LSPLuckyNumController

- (void)viewDidAppear:(BOOL)animated
{
    [self.wheel startRotate];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LSPView *wheel = [LSPView roundView];
    wheel.center = CGPointMake(self.view.frame.size.width * 0.5, self.view.frame.size.height * 0.5);
    [self.view addSubview:wheel];
    //[wheel startRotate];
    self.wheel = wheel;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
