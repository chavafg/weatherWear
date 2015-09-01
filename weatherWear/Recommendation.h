//
//  Recommendation.h
//  weatherWear
//
//  Created by chava on 8/25/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Recommendation : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *okBtn;
@property (strong, nonatomic) IBOutlet UIImageView *topImb;
@property (strong, nonatomic) IBOutlet UIImageView *weatherImg;
@property (strong, nonatomic) IBOutlet UIImageView *shoesImg;
@property (strong, nonatomic) IBOutlet UIImageView *extraImg;
@property (strong, nonatomic) IBOutlet UIImageView *bottomImg;
@property (strong, nonatomic) IBOutlet UILabel *placeLbl;
@property (strong, nonatomic) IBOutlet UILabel *degreesLbl;
@property (strong, nonatomic) IBOutlet UILabel *topLbl;
@property (strong, nonatomic) IBOutlet UILabel *bottomLbl;
@property (strong, nonatomic) IBOutlet UILabel *shoesLbl;
@property (strong, nonatomic) IBOutlet UILabel *extraLbl;


- (IBAction)okBtnPressed:(id)sender;


@end
