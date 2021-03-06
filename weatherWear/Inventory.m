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
    maShirts = [[NSMutableArray alloc] initWithObjects:@"Playera Nike", @"Camisa Dockers", @"Playera Tommy", @"Polo DKNY", nil];
    maJeans = [[NSMutableArray alloc] initWithObjects:@"Jeans Levis", @"Short A&E", @"Pantalon Zara", @"Jeans CK", nil];
    maShoes = [[NSMutableArray alloc] initWithObjects:@"Zapatos ", @"Tenis Reebok", @"Sandalias Tommy", @"Botas CAT", nil];
    maClothSections = [[NSMutableArray alloc] initWithObjects:@"Playera", @"Jeans", @"Zapatos", @"Sueteres",nil];
    //@"Vestido",@"Chamarra",@"Polo",@"Camisa",@"Zapatillas",@"Sueter", nil];
    maClothCategory = [[NSMutableArray alloc] initWithObjects:@"Frio", @"Lluvioso", @"La Calor", @"Nublado", nil];
    maSueter = [[NSMutableArray alloc] initWithObjects:@"Sueter GAP", @"Sueter Aero", @"Sueter Lacoste", @"Sueter Banana Republic", nil];
    
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
    return maClothSections.count;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    if(section == 0)
        return maShirts.count;
    if(section == 1)
        return maJeans.count;
    if(section == 2)
        return maShoes.count;
    else
        return maSueter.count;
    

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
    if(indexPath.section == 0)
        cell.clothLbl.text  = maShirts[indexPath.row];
    if(indexPath.section == 1)
        cell.clothLbl.text  = maJeans[indexPath.row];
    if(indexPath.section == 2)
        cell.clothLbl.text  = maShoes[indexPath.row];
    if(indexPath.section == 3)
        cell.clothLbl.text  = maSueter[indexPath.row];
    
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
