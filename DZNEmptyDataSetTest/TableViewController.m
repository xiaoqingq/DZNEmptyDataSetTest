//
//  TableViewController.m
//  DZNEmptyDataSetTest
//
//  Created by qing on 2017/11/21.
//  Copyright © 2017年 qing. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()<UITableViewDataSource,UITableViewDelegate>{
    
    NSMutableArray * _dataArray;
}

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"tableView";
    
    _dataArray = [[NSMutableArray alloc]init];
    
    [self setUI];
    
   
    
    
}

- (void)setUI{
    
    self.tableView.frame =CGRectMake(0, 64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-64);
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    self.noDataTitle = @"啥也没有～";
    self.btnTitle = @"网络不给力，请点击重试哦~";
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text = _dataArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
    
}



- (void)TapLoadButtonEvent{
    
    [_dataArray addObject:@"123"];
    [_dataArray addObject:@"haha"];
    [self.tableView reloadData];

}







@end
