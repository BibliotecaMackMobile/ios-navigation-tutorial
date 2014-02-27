//
//  LetraViewController.m
//  Navigation
//
//  Created by Isabela Mayumi R. Suitsu  on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraViewController.h"
#import "Dicionario.h"

@interface LetraViewController ()

@end

@implementation LetraViewController
@synthesize imageView, botPalavra;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id)initWithLetra:(char )l{
    self= [super init];
    if (self){
        letra= l;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    //casting de char para String
    NSString *l= [NSString stringWithFormat:@"%c", letra];
    
    //titulo da view
    self.title= l;
    
    //NSLog(@"%@", l);

    if (![l isEqualToString:@"Z"]){
        //botao proximo
        UIBarButtonItem *next= [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(nextView:)];
        self.navigationItem.rightBarButtonItem= next;
    }
    
    Letra *obj= [[[Dicionario sharedInstance]letrasDicionario]objectForKey:l];
    //NSLog(@"%@", obj.palavra);
    [botPalavra setTitle:obj.palavra forState:UIControlStateNormal];
    [imageView setImage:obj.imagem];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)nextView:(id)sender{
    
   letra++;
  //  char c = letra + 1;
    
    LetraViewController *proximo= [[LetraViewController alloc]initWithLetra:letra];

    [self.navigationController pushViewController:proximo animated:YES];
    //[self navigationController ]
}

@end
