//
//  LYFavoriteViewController.m
//  LYSideslipCellDemo
//
//  Created by Louis on 16/7/7.
//  Copyright © 2016年 Louis. All rights reserved.
//

#import "LYFavoriteViewController.h"
#import "LYFavoriteCell.h"

@interface LYFavoriteViewController ()

@end

@implementation LYFavoriteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 20;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LYFavoriteCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([LYFavoriteCell class]) forIndexPath:indexPath];
    cell.backgroundColor = [UIColor clearColor];
    
    UIButton *tagBtn = [cell rowActionWithStyle:LYSideslipCellActionStyleNormal title:nil];
    tagBtn.backgroundColor = [UIColor clearColor];
    [tagBtn setImage:[UIImage imageNamed:@"Fav_Edit_Tag"] forState:UIControlStateNormal];
    
    UIButton *deleteBtn = [cell rowActionWithStyle:LYSideslipCellActionStyleNormal title:nil];
    deleteBtn.backgroundColor = [UIColor clearColor];
    [deleteBtn setImage:[UIImage imageNamed:@"Fav_Edit_Delete"] forState:UIControlStateNormal];
    
    [cell setRightButtons:@[tagBtn, deleteBtn]];
    
    cell.avatarImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"icon%d", arc4random()%5]];
    
    cell.coverImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"icon%d", arc4random()%5]];
    
    cell.titleLabel.text = [NSString stringWithFormat:@"雷锋网 - %ld", indexPath.section];
    
    cell.contentLabel.text = @"前微软中国用户体验顾问带你深入体验Holoens. 啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦";
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 8;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 8)];
    view.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1];
    return view;
}

@end
