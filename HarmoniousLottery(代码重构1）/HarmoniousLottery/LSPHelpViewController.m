//
//  LSPHelpViewController.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-14.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPHelpViewController.h"
#import "LSPCellGroup.h"
#import "LSPCellModel.h"
#import "LSPArrowItem.h"
#import "LSPHelp.h"
#import "LSPHtmlController.h"
#import "LSPNavigationController.h"
@interface LSPHelpViewController ()

@property (strong,nonatomic) NSArray *htmls;

@end

@implementation LSPHelpViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setCells];
  
}

- (NSArray *)htmls
{
    if (_htmls == nil) {
        
        NSString *file = [[NSBundle mainBundle] pathForResource:@"help.json" ofType:nil];
        NSData *data = [NSData dataWithContentsOfFile:file];
        NSArray *htmlArr = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSMutableArray *dictArray = [NSMutableArray array];
        for (NSDictionary *dict in htmlArr) {
            
            LSPHelp *html = [LSPHelp helpWithDict:dict];
            
            [dictArray addObject:html];
        }
        
        _htmls = dictArray;
    }
    
    return _htmls;
}

- (void)setCells
{
    LSPCellGroup *group = [[LSPCellGroup alloc] init];
    
    NSMutableArray *items = [NSMutableArray array];
    for(LSPHelp *help in self.htmls)
    {
    
    LSPArrowItem *item = [LSPArrowItem cellWithTitle:help.title vcClass:nil];
    
        [items addObject:item];
    
    }
    
    group.items = items;
    
    [self.datas addObject:group];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    LSPHtmlController *html = [[LSPHtmlController alloc] init];
    LSPNavigationController *nav = [[LSPNavigationController alloc] initWithRootViewController:html];
    html.html = self.htmls[indexPath.row];
    [self presentViewController:nav animated:YES completion:nil];
}
@end
