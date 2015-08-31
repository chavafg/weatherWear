//
//  ClothingAddition.m
//  weatherWear
//
//  Created by chava on 8/25/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import "ClothingAddition.h"
#import "Declarations.h"

NSString        *stSelectedState;

@interface ClothingAddition ()

@end

@implementation ClothingAddition

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)okBtnPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)bckBtnPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/**********************************************************************************************/
#pragma mark - Picker view methods
/**********************************************************************************************/
- (NSInteger)numberOfComponentsInPickerView: (UIPickerView *)pickerView {
    return 1;
}
//------------------------------------------------------------------
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    NSLog(@"icon %lu", (unsigned long)maClothSections.count);
    return maClothSections.count;
}
//------------------------------------------------------------------
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return maClothSections[row];
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
        stSelectedState = maClothSections[row];
    }
}


@end
