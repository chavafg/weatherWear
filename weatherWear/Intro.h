//
//  Intro.h
//  weatherWear
//
//  Created by chava on 8/24/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Intro : UIViewController

@property NSUInteger                                iPageIndex;

@property (strong, nonatomic) IBOutlet UIImageView *introLogoImg;
@property (strong, nonatomic) IBOutlet UILabel *introLbl;
@property (strong, nonatomic) IBOutlet UIButton *introBtn;
@property (strong, nonatomic) IBOutlet UIImageView *introImg;



- (IBAction)introBtnPressed:(id)sender;

@end
