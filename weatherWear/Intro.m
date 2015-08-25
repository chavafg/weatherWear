//
//  Intro.m
//  weatherWear
//
//  Created by chava on 8/24/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import "Intro.h"
#import "Declarations.h"

@interface Intro ()

@end

@implementation Intro

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
//-------------------------------------------------------------------------------
-(void)viewWillAppear:(BOOL)animated {
    self.introLbl.text  = introTitles[self.iPageIndex];
    self.introImg.image = [UIImage imageNamed:introImgs[self.iPageIndex]];
    if (self.iPageIndex == 2)
    {
        self.introBtn.hidden = NO;
    }
    self.introLogoImg.image = [UIImage imageNamed:@"wwLogo.png"];
}

- (IBAction)introBtnPressed:(id)sender {
}
@end
