//
//  Home.h
//  weatherWear
//
//  Created by chava on 8/25/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *recommendImg;
@property (strong, nonatomic) IBOutlet UIButton *inventoryBtn;


- (IBAction)inventoryPressed:(id)sender;
- (IBAction)recommendPressed:(id)sender;


@end
