//
//  Home.m
//  weatherWear
//
//  Created by chava on 8/25/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import "Home.h"
#import "Inventory.h"
#import "Recommendation.h"

@interface Home ()

@end

@implementation Home

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


-(void)viewWillAppear:(BOOL)animated {
    
    self.recommendImg.image = [UIImage imageNamed:@"logo.png"];
}

- (IBAction)inventoryPressed:(id)sender {

    Inventory *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Inventory"];
    [self presentViewController:vc animated:YES completion:nil];

}

- (IBAction)recommendPressed:(id)sender {
    Recommendation *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Recommendation"];
    [self presentViewController:vc animated:YES completion:nil];

}
@end
