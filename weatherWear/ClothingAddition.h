//
//  ClothingAddition.h
//  weatherWear
//
//  Created by chava on 8/25/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClothingAddition : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UILabel *titleLbl;
@property (strong, nonatomic) IBOutlet UIImageView *bckIcon;
@property (strong, nonatomic) IBOutlet UIButton *bckBtn;

@property (strong, nonatomic) IBOutlet UIPickerView *clothesPicker;
@property (strong, nonatomic) IBOutlet UIPickerView *categPicker;
@property (strong, nonatomic) IBOutlet UITextField *colorTxt;
@property (strong, nonatomic) IBOutlet UITextView *descTxt;


- (IBAction)bckBtnPressed:(id)sender;
- (IBAction)okBtnPressed:(id)sender;



@end
