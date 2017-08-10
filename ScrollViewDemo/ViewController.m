//
//  ViewController.m
//  ScrollViewDemo
//
//  Created by SXF on 2017/8/10.
//  Copyright © 2017年 SXF. All rights reserved.
//

#import "ViewController.h"
#import "XFScrollerView.h"
@interface ViewController ()<XFScrollerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    XFScrollerView  *scrollView = [[XFScrollerView alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 150) ImageArray:[NSArray arrayWithObjects:@"1.jpg",@"2.jpg",@"3.jpg", nil] TitleArray:[NSArray arrayWithObjects:@"11",@"22",@"33", nil]];
    
    scrollView.delegate = self;
    [self.view addSubview:scrollView];
    
    NSLog(@"1234567890-");
    
}
#pragma mark -  XFScrollerViewDelegate
- (void)XFScrollerViewClicked:(NSInteger)index{
    
     NSLog(@"index--%lu",(unsigned long)index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
