//
//  Inventory.m
//  weatherWear
//
//  Created by chava on 8/25/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import "Inventory.h"
#import "clothesCell.h"
#import "Declarations.h"
#import "ClothingAddition.h"

@interface Inventory ()

@end

@implementation Inventory

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    
    self.bckIcon.image = [UIImage imageNamed:@"back_button.png"];
    self.addIcon.image = [UIImage imageNamed:@"add_btn.png"];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)initController{
    maShirts = [[NSMutableArray alloc] initWithObjects:@"Shirt 1", @"Shirt 2", @"Shirt 3", @"Shirt 4", nil];
    maJeans = [[NSMutableArray alloc] initWithObjects:@"Jeans 1", @"Jeans 2", @"Jeans 3", @"Jeans 4", nil];
    maShoes = [[NSMutableArray alloc] initWithObjects:@"Black Shoes", @"Sneakers", @"Sandals", @"Boots", nil];
    maClothSections = [[NSMutableArray alloc] initWithObjects:@"SHIRTS", @"Jeans", @"Shoes", @"Skirts", nil];
}


- (IBAction)bckBtnPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)addBtnPressed:(id)sender {
    ClothingAddition *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ClothingAddition"];
    [self presentViewController:vc animated:YES completion:nil];
}


/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Initialize cells
    clothesCell *cell = (clothesCell *)[tableView dequeueReusableCellWithIdentifier:@"clothesCell"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"clothesCell" bundle:nil] forCellReuseIdentifier:@"clothesCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"clothesCell"];
    }
    
    //Fill cell with info from arrays
    cell.clothLbl.text  = maShirts[indexPath.row];
    cell.delImg.image   = [UIImage imageNamed:@"delete_btn.png"];
    return cell;
}
//-------------------------------------------------------------------------------
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString * title = [maClothSections objectAtIndex:section];
    return title;
}

//-------------------------------------------------------------------------------

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //myIndex = (int)indexPath.row;
    //Mapa *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Mapa"];
    //[self presentViewController:viewController animated:YES completion:nil];
    
}


@end
