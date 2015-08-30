//
//  clothesCell.h
//  weatherWear
//
//  Created by chava on 8/27/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface clothesCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *clothLbl;
@property (strong, nonatomic) IBOutlet UIButton *deleteClothBtn;
@property (strong, nonatomic) IBOutlet UIImageView *delImg;

- (IBAction)delClothPressed:(id)sender;


@end
