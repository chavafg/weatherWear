//
//  Recommendation.m
//  weatherWear
//
//  Created by chava on 8/25/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import "Recommendation.h"

@interface Recommendation ()

@end

@implementation Recommendation

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    self.topImb.image =  [UIImage imageNamed:@"polo.png"];
    self.bottomImg.image =  [UIImage imageNamed:@"jeans.png"];
    self.extraImg.image =  [UIImage imageNamed:@"sueter.png"];
    self.shoesImg.image =  [UIImage imageNamed:@"shoes.png"];
    self.weatherImg.image =  [UIImage imageNamed:@"cloudy.png"];
    self.placeLbl.text  = @"Guadalajara, Jalisco";
    self.degreesLbl.text = @"27 Grados Centigrados";

    self.topLbl.text = @"Playera Tommy";
    self.extraLbl.text = @"Sueter CK";
    self.bottomLbl.text = @"Jeans Levi's";
    self.shoesLbl.text = @"Zapatos ";
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
@end
