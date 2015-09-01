//
//  ClothingAddition.m
//  weatherWear
//
//  Created by chava on 8/25/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import "ClothingAddition.h"
#import "Declarations.h"

NSString        *stSelectedSection;
NSString        *stSelectedCategory;

@interface ClothingAddition ()

@end

@implementation ClothingAddition

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.scrollView 	setScrollEnabled:YES];
    [self.scrollView    setContentSize:CGSizeMake(320, 768)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    
    self.bckIcon.image = [UIImage imageNamed:@"back_button.png"];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



/**********************************************************************************************/
#pragma mark - Picker view methods
/**********************************************************************************************/
- (NSInteger)numberOfComponentsInPickerView: (UIPickerView *)pickerView {
    return 1;
}
//------------------------------------------------------------------
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    NSLog(@"icon %lu", (unsigned long)maClothSections.count);
    
    if (pickerView == self.clothesPicker){
        return maClothSections.count;
    }
    else
        return maClothCategory.count;
}
//------------------------------------------------------------------
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (pickerView == self.clothesPicker){
        return maClothSections[row];
    }
    else
        return maClothCategory[row];
}
//------------------------------------------------------------------
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
    return 30;
}
//------------------------------------------------------------------
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"Picker");
    if (pickerView == self.clothesPicker)
    {
        stSelectedSection = maClothSections[row];
    }
    else
        stSelectedSection = maClothCategory[row];
    
}


- (IBAction)bckBtnPressed:(id)sender {
   [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)okBtnPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
