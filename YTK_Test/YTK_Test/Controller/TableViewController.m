//
//  TableViewController.m
//  YTK_Test
//
//  Created by 王勇 on 2018/5/3.
//  Copyright © 2018年 Xi'an Shouhushen Network Technology. All rights reserved.
//

#import "TableViewController.h"
#import "YiRefreshHeader.h"
#import "YiRefreshFooter.h"
#import "TableViewModel.h"
#import "TableViewDataSource.h"
#import "TableViewDelegate.h"

#define Width [[UIScreen mainScreen] bounds].size.width
#define Height [[UIScreen mainScreen] bounds].size.height
#define iOS7 [[[UIDevice currentDevice]systemVersion] floatValue] >= 7.0
@interface TableViewController ()
{
    YiRefreshHeader *refreshHeader;
    YiRefreshFooter *refreshFooter;
    NSMutableArray  *totalSource;
    TableViewModel  *tableViewModel;
    UITableView     *tableView;
    TableViewDataSource *tableViewDataSource;
    TableViewDelegate   *tableViewDelegate;
}
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpUi];
}
- (void)setUpUi{
    if (iOS7) {
        self.edgesForExtendedLayout = UIRectEdgeBottom | UIRectEdgeLeft|UIRectEdgeRight;
    }
    
    self.title = @"MVVM";
    self.view.backgroundColor = [UIColor whiteColor];
    tableView = [[UITableView alloc]initWithFrame:CGRectMake(0,0,Width,Height-64) style:UITableViewStylePlain];
    tableViewDelegate = [[TableViewDelegate alloc]init];
    tableViewDataSource = [[TableViewDataSource alloc]init];
    tableView.delegate = tableViewDelegate;
    tableView.dataSource = tableViewDataSource;
    tableViewModel = [[TableViewModel alloc]init];
    totalSource = 0;
    
    refreshHeader = [[YiRefreshHeader alloc]init];
    refreshHeader.scrollView = tableView;
    [refreshHeader header];
    __weak typeof(self) weakSelf = self;
    refreshHeader.beginRefreshingBlock = ^{
        __strong typeof(self) strongSelf = weakSelf;
    
    };
    
    refreshFooter = [[YiRefreshFooter alloc]init];
    refreshFooter.scrollView = tableView;
    [refreshFooter footer];
    refreshFooter.beginRefreshingBlock = ^{
        __strong typeof(self) strongSelf = weakSelf;
    };
    
}

- (void)headerRefreshAction{
    
}
- (void)footerRefreshAction{
    
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
