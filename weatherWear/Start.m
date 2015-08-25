//
//  ViewController.m
//  weatherWear
//
//  Created by chava on 8/24/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import "Start.h"
#import "Declarations.h"

@interface Start ()

@end

@implementation Start

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    introTitles   = [[NSMutableArray alloc] initWithObjects: @"Agrega tu ropa al inventario", @"Agrega color, descripcion\n y categoria", @"Presiona el boton\npara obtener una recomendacion", nil];
    introImgs     = [[NSMutableArray alloc] initWithObjects: @"intro_01.png", @"intro_02.png", @"intro_03.png", @"wwLogo.png", nil];
    

}

@end
