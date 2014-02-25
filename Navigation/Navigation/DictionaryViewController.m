//
//  DictionaryViewController.m
//  Navigation
//
//  Created by Rafael Moris on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "DictionaryViewController.h"
#import "KidsDictionary.h"
#import "ItemDictionary.h"

@interface DictionaryViewController ()

@end

@implementation DictionaryViewController

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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    ItemDictionary *item = [[ItemDictionary alloc]init];
    [self showSelectedItem];
}

- (void)nextItem:(id)sender
{
    DictionaryViewController *next = [[DictionaryViewController alloc]initWithNibName:nil bundle:NULL]; // Cria uma segunda viu controle
    [[self navigationController]pushViewController:next animated:YES]; // Adiciona no vetor de ViewControllers da navegação
}

- (void)showSelectedItem
{
    
    [[KidsDictionary sharedInstance]setActualIndex:[[KidsDictionary sharedInstance]actualIndex]+1];
    ItemDictionary *item = [[KidsDictionary sharedInstance]getActualItem];
    
    [self setTitle:[item name]]; // Trocar titulo da tela
    
    // Cria um botao para acicionarmos a navegação
    //UIBarButtonItem *nextItemBtn = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(nextItem:)];
    UIBarButtonItem *nextItemBtn = [[UIBarButtonItem alloc]initWithTitle:@"Next" style:UIBarButtonItemStyleBordered target:self action:@selector(nextItem:)];
    
    [[self navigationItem]setRightBarButtonItem:nextItemBtn]; // Adiciona o botao criado na parte direita da navegação
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem]; // Criar um novo botao do tipo padrão do sistema
    
    // Definir o texto deste botão como a sendo a palavra relacionada a nossa imagem
    [button setTitle:[item name] forState:UIControlStateNormal];
    
    [button sizeToFit]; // Fazer com que o tamanho do botão seja o suficiente para monstrar todo o texto que dejamos
    
    [button setCenter:[[self view]center]]; // Centralizar botão no centro da tela
    
    UIImage *image = [UIImage imageNamed:[item imageName]]; // Criar imagem
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image]; // Criar View da imagem
    [imageView setFrame:CGRectMake(110, 120, 100, 100)]; // Posicionar imagem na tela
    
    [[self view]addSubview:imageView]; // Adicionar Imagem na Tela
    [[self view]addSubview:button]; // Adicionar botao na tela
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
