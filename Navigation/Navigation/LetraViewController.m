//
//  LetraViewController.m
//  Navigation
//
//  Created by Luiz on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraViewController.h"
#import "LetraDicionarioModel.h"
#import "LetraDicionario.h"

@interface LetraViewController ()

@end

@implementation LetraViewController

-(CGRect)makeRectWithX:(CGFloat)x andY:(CGFloat)y andLargura:(CGFloat)largura andAltura:(CGFloat)altura {
    CGFloat larguraView = [[self view] bounds].size.width;
    CGFloat alturaView = [[self view] bounds].size.height;
    
    CGFloat valorX = x * larguraView / 100;
    CGFloat valorY = 20 + (y * alturaView / 100);
    CGFloat valorLargura = largura * larguraView / 100;
    CGFloat valorAltura = altura * alturaView / 100;
    
    
    return CGRectMake(valorX, valorY, valorLargura, valorAltura);
}

-(IBAction)next:(id)sender {
    NSArray *aux = [[[LetraDicionarioModel sharadManager] lista] allKeys];
    int auxIndex = [self indexTela] % 25;
    LetraViewController *proximo = [[LetraViewController alloc] initWithLetra:[aux objectAtIndex:auxIndex] andIndex:auxIndex];
    [[self navigationController] pushViewController:proximo animated:YES];
}

-(id)initWithLetra:(NSString *)valorLetra andIndex:(int)valorIndex{
    self = [super initWithNibName:Nil bundle:nil];
    if (self) {
        [self setTitle:valorLetra];
        [self setIndexTela:valorIndex];
    }
    return self;
}

#pragma mark - ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    LetraDicionario *auxObj = [[[LetraDicionarioModel sharadManager] lista] objectForKey:@"C"];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    // BarButtonItem
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    [[self navigationItem] setRightBarButtonItem:next];
    
    // Imagem
    [self setImgViewImagem:[[UIImageView alloc] initWithFrame:[self makeRectWithX:30 andY:35 andLargura:40 andAltura:30]]];
    [[self imgViewImagem] setImage:[auxObj img]];
    
    // Botao
    [self setBtnPlayAudio:[[UIButton alloc] initWithFrame:[self makeRectWithX:40 andY:80 andLargura:90 andAltura:10]]];
    [[self btnPlayAudio] setTitle:[auxObj nome] forState:UIControlStateNormal];
    [[self btnPlayAudio] setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    // Adiciona no canvas
    [[self view] addSubview:[self imgViewImagem]];
    [[self view] addSubview:[self btnPlayAudio]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
