//
//  ViewController.h
//  weatherWear
//
//  Created by chava on 8/24/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Start : UIViewController<UIPageViewControllerDataSource, UIPageViewControllerDelegate>

@property (strong, nonatomic) UIPageViewController *pageViewController;

@end

