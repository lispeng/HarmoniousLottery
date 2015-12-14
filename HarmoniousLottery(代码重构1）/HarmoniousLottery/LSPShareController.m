//
//  LSPShareController.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-15.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPShareController.h"
#import "LSPCellGroup.h"
#import "LSPArrowItem.h"
#import <MessageUI/MessageUI.h>
@interface LSPShareController ()<MFMessageComposeViewControllerDelegate,MFMailComposeViewControllerDelegate>

@end

@implementation LSPShareController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setContent];
}
- (void)setContent
{
    LSPCellGroup *group1 = [[LSPCellGroup alloc] init];
    LSPArrowItem *sina = [LSPArrowItem cellModelWithIcon:@"WeiboSina" title:@"新浪微博" vcClass:nil];
    LSPArrowItem *sns = [LSPArrowItem cellModelWithIcon:@"SmsShare" title:@"短信分享" vcClass:nil];
    __unsafe_unretained typeof(self) selfVc;
    sns.option = ^{
        
        MFMessageComposeViewController *vc = [[MFMessageComposeViewController alloc] init];
        if(![MFMessageComposeViewController canSendText]) return;
        vc.body = @"床前明月光,我想回家乡";
        vc.recipients = @[@"10086",@"12306"];
        vc.messageComposeDelegate = selfVc;
        [selfVc presentViewController:vc animated:YES completion:nil];

    };
    LSPArrowItem *email = [LSPArrowItem cellModelWithIcon:@"MailShare" title:@"邮件分享" vcClass:nil];
    email.option = ^{
        MFMailComposeViewController *mail = [[MFMailComposeViewController alloc] init];
        if (![MFMailComposeViewController canSendMail]) return;
        [mail setSubject:@"今天吃饭了吗？"];
        
        [mail setMessageBody:@"今天到底吃了没？没吃，就等着饿肚子吧" isHTML:NO];
        
        [mail setToRecipients:@[@"1002376529@qq.com",@"1007497883@qq.com"]];
        [mail setCcRecipients:@[@"zhangziyi@163.com"]];
        [mail setBccRecipients:@[@"wangfeng@163.com"]];
        
        UIImage *image = [UIImage imageNamed:@"22.jpg"];
        NSData *data = UIImagePNGRepresentation(image);
        [mail addAttachmentData:data mimeType:@"image/png" fileName:@"22.png"];
        mail.mailComposeDelegate = selfVc;
        [selfVc presentViewController:mail animated:YES completion:nil];

    };
    group1.items = @[sina,sns,email];
    [self.datas addObject:group1];
}
/*
- (void)shareMessage
{
    
    MFMessageComposeViewController *vc = [[MFMessageComposeViewController alloc] init];
    if(![MFMessageComposeViewController canSendText]) return;
    vc.body = @"床前明月光,我想回家乡";
    vc.recipients = @[@"10086",@"10010"];
    vc.messageComposeDelegate = selfVc;
    [selfVc presentViewController:vc animated:YES completion:nil];
}
*/
- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
/*
- (void)shareEmail
{
    __unsafe_unretained typeof(self) selfVc;
    MFMailComposeViewController *mail = [[MFMailComposeViewController alloc] init];
    if (![MFMailComposeViewController canSendMail]) return;
    [mail setSubject:@"今天吃饭了吗？"];
    
    [mail setMessageBody:@"今天到底吃了没？没吃，就等着饿肚子吧" isHTML:NO];
    
    [mail setToRecipients:@[@"1002376529@qq.com",@"1007497883@qq.com"]];
    [mail setCcRecipients:@[@"zhangziyi@163.com"]];
    [mail setBccRecipients:@[@"wangfeng@163.com"]];
    
    UIImage *image = [UIImage imageNamed:@"22.jpg"];
    NSData *data = UIImagePNGRepresentation(image);
    [mail addAttachmentData:data mimeType:@"image/png" fileName:@"22.png"];
    mail.mailComposeDelegate = selfVc;
    [selfVc presentViewController:mail animated:YES completion:nil];
    
}
*/
- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)dealloc
{
    NSLog(@"LSPShareController");
}
@end
