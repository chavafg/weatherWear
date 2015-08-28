//
//  ClothingAddition.h
//  weatherWear
//
//  Created by chava on 8/25/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClothingAddition : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *bckIcon;
@property (strong, nonatomic) IBOutlet UIButton *okBtn;
@property (strong, nonatomic) IBOutlet UIButton *bckBtn;


- (IBAction)okBtnPressed:(id)sender;
- (IBAction)bckBtnPressed:(id)sender;


@end
