//
//  XFScrollerView.h
//  ScrollViewDemo
//
//  Created by SXF on 2017/8/10.
//  Copyright © 2017年 SXF. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol XFScrollerViewDelegate <NSObject>
@optional
- (void)XFScrollerViewClicked:(NSInteger)index;
@end

@interface XFScrollerView : UIView<UIScrollViewDelegate>{
    
    CGRect viewSize;
    UIScrollView *scrollView;
    NSArray *imageArray;
    NSArray *titleArray;
    UIPageControl *pageControl;
//    id<XFScrollerViewDelegate>delegate;
    int currentPageIndex;
    UILabel *noteTitle;
    
}
@property (nonatomic,weak) id<XFScrollerViewDelegate>delegate;

- (instancetype)initWithFrame:(CGRect)frame ImageArray:(NSArray *)imgArr TitleArray:(NSArray *)titArr;
@end
