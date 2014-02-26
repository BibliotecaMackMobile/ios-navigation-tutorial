//
//  ViewController.m
//  Navigation
//
//  Created by Bruno Rendeiro on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "ViewController.h"
#import "LetterSingleton.h"
#import "Letter.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize palavra1;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
//        [[LetterSingleton sharedInstance]criarLetter:l];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIBarButtonItem *bbi = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(proximaLetra)];
    self.navigationItem.rightBarButtonItem = bbi;
    sortedKeys = [[[[LetterSingleton sharedInstance]alphabet] allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    self.title = [sortedKeys objectAtIndex:[LetterSingleton sharedInstance].index];
    Letter *aux = [[[LetterSingleton sharedInstance] alphabet] objectForKey:self.title];
    NSLog(@"%@",aux.palavra);
   [_palavra11 setText:aux.palavra];
    NSLog(@"%@",_palavra11.text);
    self.imagem.image = aux.foto;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)proximaLetra
{
    ViewController *nvc = [[ViewController alloc] init];
    [[LetterSingleton sharedInstance] atualiza];
    [self.navigationController pushViewController:nvc animated:YES];
}

@end
