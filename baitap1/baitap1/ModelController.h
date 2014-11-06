//
//  ModelController.h
//  baitap1
//
//  Created by Ha Xuan Thuong on 11/6/14.
//  Copyright (c) 2014 Ha Xuan Thuong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end

