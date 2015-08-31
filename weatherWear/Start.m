//
//  ViewController.m
//  weatherWear
//
//  Created by chava on 8/24/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import "Start.h"
#import "Declarations.h"
#import "Intro.h"

@interface Start ()

@end

@implementation Start

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    introTitles   = [[NSMutableArray alloc] initWithObjects: @"Agrega tu ropa al inventario", @"Agrega color, descripcion\n y categoria", @"Presiona el logo de weatherWear\ny obten una recomendacion", nil];
    introImgs     = [[NSMutableArray alloc] initWithObjects: @"intro_01.png", @"intro_02.png", @"intro_03.png", @"wwLogo.png", nil];
    
    [self createPageViews];
}

/**********************************************************************************************/
#pragma mark - Page controller methods and delegates
/**********************************************************************************************/
- (void)createPageViews {
    // Create page view controller
    self.pageViewController             = [self.storyboard instantiateViewControllerWithIdentifier:@"PageIntroController"];
    self.pageViewController.dataSource  = self;
    
    Intro *startingViewController       = [self viewControllerAtIndex:0];
    NSArray *viewControllers            = @[startingViewController];
    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    // Change the size of page view controller
    self.pageViewController.view.frame  = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
    [self addChildViewController:self.pageViewController];
    [self.view addSubview:self.pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];
    
    NSArray *subviews = self.pageViewController.view.subviews;
    UIPageControl *thisControl = nil;
    for (int i=0; i<[subviews count]; i++) {
        if ([[subviews objectAtIndex:i] isKindOfClass:[UIPageControl class]]) {
            thisControl = (UIPageControl *)[subviews objectAtIndex:i];
        }
    }
    thisControl.hidden = true;
}
//-------------------------------------------------------------------------------
- (Intro *)viewControllerAtIndex:(NSUInteger)index
{
    if (([introTitles count] == 0) || (index >= [introTitles count])) {
        return nil;
    }
    // Create a new view controller and pass suitable data.
    Intro *pageIntro        = [self.storyboard instantiateViewControllerWithIdentifier:@"Intro"];
    pageIntro.introLbl      = introTitles[index];
    pageIntro.introImg      = introImgs[index];
    pageIntro.iPageIndex    = index;
    
    return pageIntro;
}
//-------------------------------------------------------------------------------
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = ((Intro*) viewController).iPageIndex;
    
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    index--;
    return [self viewControllerAtIndex:index];
}
//-------------------------------------------------------------------------------
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = ((Intro*) viewController).iPageIndex;
    
    if (index == NSNotFound) {
        return nil;
    }
    index++;
    return [self viewControllerAtIndex:index];
}
//-------------------------------------------------------------------------------
- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return [introTitles count];
}
//-------------------------------------------------------------------------------
- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
}



@end
