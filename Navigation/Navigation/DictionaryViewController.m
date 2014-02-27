//
//  DictionaryViewController.m
//  Navigation
//
//  Created by Rafael Moris on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import "DictionaryViewController.h"
#import "KidsDictionary.h"


@interface DictionaryViewController ()

@end

@implementation DictionaryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    
    UISwipeGestureRecognizer *swipeGesture = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(nextItem:)];
    [swipeGesture setDirection:UISwipeGestureRecognizerDirectionLeft];
    [[self view]addGestureRecognizer:swipeGesture];
    
    UISwipeGestureRecognizer *swipeGestureRight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(previousItem:)];
    [swipeGestureRight setDirection:UISwipeGestureRecognizerDirectionRight];
    [[self view]addGestureRecognizer:swipeGestureRight];
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
        
    ItemDictionary *item = [[KidsDictionary sharedInstance]getActualItem];
    ItemDictionary *nextItem = [[KidsDictionary sharedInstance]getNextItem];
    
    [self setTitle:[item name]]; // Trocar titulo da tela
    
    UIBarButtonItem *nextItemBtn = [[UIBarButtonItem alloc]initWithTitle:[nextItem name] style:UIBarButtonItemStyleBordered target:self action:@selector(nextItem:)];
    [[self navigationItem]setRightBarButtonItem:nextItemBtn]; // Adiciona o botao criado na parte direita da navegação
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem]; // Criar um novo botao do tipo padrão do sistema
    [button addTarget:self action:@selector(readLetter:) forControlEvents:UIControlEventTouchDown];
    
    // Definir o texto deste botão como a sendo a palavra relacionada a nossa imagem
    [button setTitle:[NSString stringWithFormat:@"Clique para ouvir: %@", [item name]] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor whiteColor]];
    
    [button sizeToFit]; // Fazer com que o tamanho do botão seja o suficiente para monstrar todo o texto que dejamos
    
    [button setCenter:[[self view]center]]; // Centralizar botão no centro da tela
    [button setBackgroundColor:[UIColor grayColor]];
    [button setTintColor:[UIColor whiteColor]];
    [button setFrame:CGRectMake(0, self.view.bounds.size.height-40, self.view.bounds.size.width, 40)];
    
    UIImage *image = [UIImage imageNamed:[item imageName]]; // Criar imagem]
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image]; // Criar View da imagem
    [imageView setContentMode:UIViewContentModeScaleAspectFit]; // Garantir que a largura nao seja maior que tela e centraliza-la
    [imageView setFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)]; // Posicionar imagem na tela]
    [imageView setBackgroundColor:[UIColor whiteColor]];
    
    [[self view]addSubview:imageView]; // Adicionar Imagem na Tela
    [[self view]addSubview:button]; // Adicionar botao na tela
}

- (void)nextItem:(id)sender
{
    DictionaryViewController *next = [[DictionaryViewController alloc]initWithNibName:nil bundle:NULL]; // Cria uma segunda viu controle
    
    [[KidsDictionary sharedInstance]setActualIndex:[[KidsDictionary sharedInstance]actualIndex]+1];
    
    ItemDictionary *previousItem = [[KidsDictionary sharedInstance]getPreviousItem];
    ItemDictionary *item = [[KidsDictionary sharedInstance]getActualItem];
    ItemDictionary *nextItem = [[KidsDictionary sharedInstance]getNextItem];
    
    UIBarButtonItem *previousItemBtn = [[UIBarButtonItem alloc]initWithTitle:[previousItem name] style:UIBarButtonItemStyleBordered target:self action:@selector(previousItem:)];
    [[next navigationItem]setLeftBarButtonItem:previousItemBtn]; // Adiciona o botao criado na parte direita da navegação
    
    [next setTitle:[item name]]; // Trocar titulo da tela
    
    UIBarButtonItem *nextItemBtn = [[UIBarButtonItem alloc]initWithTitle:[nextItem name] style:UIBarButtonItemStyleBordered target:self action:@selector(nextItem:)];
    [[next navigationItem]setRightBarButtonItem:nextItemBtn]; // Adiciona o botao criado na parte direita da navegação
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem]; // Criar um novo botao do tipo padrão do sistema
    [button addTarget:self action:@selector(readLetter:) forControlEvents:UIControlEventTouchDown];
    
    // Definir o texto deste botão como a sendo a palavra relacionada a nossa imagem
    [button setTitle:[NSString stringWithFormat:@"Clique para ouvir: %@", [item name]] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor whiteColor]];
    
    [button sizeToFit]; // Fazer com que o tamanho do botão seja o suficiente para monstrar todo o texto que dejamos
    
    [button setCenter:[[self view]center]]; // Centralizar botão no centro da tela
    [button setBackgroundColor:[UIColor grayColor]];
    [button setTintColor:[UIColor whiteColor]];
    [button setFrame:CGRectMake(0, self.view.bounds.size.height-40, self.view.bounds.size.width, 40)];
    
    UIImage *image = [UIImage imageNamed:[item imageName]]; // Criar imagem]
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image]; // Criar View da imagem
    [imageView setContentMode:UIViewContentModeScaleAspectFit]; // Garantir que a largura nao seja maior que tela e centraliza-la
    [imageView setFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)]; // Posicionar imagem na tela]
    [imageView setBackgroundColor:[UIColor whiteColor]];
    
    [[next view]addSubview:imageView]; // Adicionar Imagem na Tela
    [[next view]addSubview:button]; // Adicionar botao na tela
    
    NSLog(@"1 -> %d", [[[self navigationController]viewControllers]count]);
    
    //[[self navigationController] pushViewController:next animated:YES];
    
    [[self navigationController]pushViewController:next animated:YES];
    
    if([[KidsDictionary sharedInstance]actualIndex] < [[[KidsDictionary sharedInstance]dictionary]count])
    {
//        NSLog(@"%d", [[[self navigationController]viewControllers]count]);
//        
//        DictionaryViewController *next = [[DictionaryViewController alloc]initWithNibName:nil bundle:NULL]; // Cria uma segunda viu controle
//        [[KidsDictionary sharedInstance]setActualIndex:[[KidsDictionary sharedInstance]actualIndex]+1];
//        [[self navigationController]pushViewController:next animated:YES]; // Adiciona no vetor de ViewControllers da navegação
//        
//        NSLog(@"%d", [[[self navigationController]viewControllers]count]);
        
        //[[self navigationController]popViewControllerAnimated:NO];
        //[[self navigationController] popToViewController:[[[self navigationController]viewControllers]objectAtIndex:0] animated:NO];
//      [self showSelectedItem];
    }
    
//    [[KidsDictionary sharedInstance]setActualIndex:[[KidsDictionary sharedInstance]actualIndex]+1];
//    
//    ItemDictionary *previousItem = [[KidsDictionary sharedInstance]getPreviousItem];
//    ItemDictionary *item = [[KidsDictionary sharedInstance]getActualItem];
//    ItemDictionary *nextItem = [[KidsDictionary sharedInstance]getNextItem];
//    
//    UIBarButtonItem *previousItemBtn = [[UIBarButtonItem alloc]initWithTitle:[previousItem name] style:UIBarButtonItemStyleBordered target:self action:@selector(previousItem:)];
//    [[self navigationItem]setLeftBarButtonItem:previousItemBtn]; // Adiciona o botao criado na parte direita da navegação
//
//    
//    [self setTitle:[item name]]; // Trocar titulo da tela
//    
//    UIBarButtonItem *nextItemBtn = [[UIBarButtonItem alloc]initWithTitle:[nextItem name] style:UIBarButtonItemStyleBordered target:self action:@selector(nextItem:)];
//    [[self navigationItem]setRightBarButtonItem:nextItemBtn]; // Adiciona o botao criado na parte direita da navegação
//    
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem]; // Criar um novo botao do tipo padrão do sistema
//    [button addTarget:self action:@selector(readLetter:) forControlEvents:UIControlEventTouchDown];
//    
//    // Definir o texto deste botão como a sendo a palavra relacionada a nossa imagem
//    [button setTitle:[NSString stringWithFormat:@"Clique para ouvir: %@", [item name]] forState:UIControlStateNormal];
//    [button setBackgroundColor:[UIColor whiteColor]];
//    
//    [button sizeToFit]; // Fazer com que o tamanho do botão seja o suficiente para monstrar todo o texto que dejamos
//    
//    [button setCenter:[[self view]center]]; // Centralizar botão no centro da tela
//    [button setBackgroundColor:[UIColor grayColor]];
//    [button setTintColor:[UIColor whiteColor]];
//    [button setFrame:CGRectMake(0, self.view.bounds.size.height-40, self.view.bounds.size.width, 40)];
//    
//    UIImage *image = [UIImage imageNamed:[item imageName]]; // Criar imagem]
//    UIImageView *imageView = [[UIImageView alloc]initWithImage:image]; // Criar View da imagem
//    [imageView setContentMode:UIViewContentModeScaleAspectFit]; // Garantir que a largura nao seja maior que tela e centraliza-la
//    [imageView setFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)]; // Posicionar imagem na tela]
//    [imageView setBackgroundColor:[UIColor whiteColor]];
//    
//    [[self view]addSubview:imageView]; // Adicionar Imagem na Tela
//    [[self view]addSubview:button]; // Adicionar botao na tela
//
//    NSArray *currentControllers = [[self navigationController]viewControllers];
//    if([currentControllers count] > 1)
//    {
//        NSLog(@"ABCD");
//        NSArray *newControllers = [[NSArray alloc]initWithObjects:[currentControllers objectAtIndex:1], nil];
//        [[self navigationController]setViewControllers:newControllers animated:YES];
//    }
    
}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    
    NSLog(@"2 -> %d", [[[self navigationController]viewControllers]count]);
    
    NSArray *currentControllers = [[self navigationController]viewControllers];
    if([currentControllers count] > 2)
    {
        NSArray *currentControllers = [[self navigationController]viewControllers];
        NSArray *newControllers = [[NSArray alloc]initWithObjects:[currentControllers objectAtIndex:1], [currentControllers objectAtIndex:2], nil];
        [[self navigationController]setViewControllers:currentControllers animated:YES];
    }
    
    NSLog(@"3 - > %d", [[[self navigationController]viewControllers]count]);
    
    //[[KidsDictionary sharedInstance]setActualIndex:[[KidsDictionary sharedInstance]actualIndex]-1];
}

/*
 
 [ ] [ ]
 
 */

- (void)previousItem:(id)sender
{
//    if([[KidsDictionary sharedInstance]actualIndex] >= 1)
//    {
//        [[KidsDictionary sharedInstance]setActualIndex:[[KidsDictionary sharedInstance] actualIndex]-1];
//        //[[self navigationController]popToRootViewControllerAnimated:YES]; // Adiciona no vetor de ViewControllers da navegação
//        
//        DictionaryViewController *previous = [[DictionaryViewController alloc]initWithNibName:nil bundle:NULL]; // Cria uma segunda viu controle
//        [[self navigationController]popViewControllerAnimated:YES];
//        [self showSelectedItem];
//    }
    

    DictionaryViewController *previous = [[DictionaryViewController alloc]initWithNibName:nil bundle:NULL]; // Cria uma segunda viu controle
    [[KidsDictionary sharedInstance]setActualIndex:[[KidsDictionary sharedInstance]actualIndex]-1];
    [[self navigationController]popViewControllerAnimated:YES];

    
//    if([[KidsDictionary sharedInstance]actualIndex] >= 1)
//    {
//        ItemDictionary *previousItem = [[KidsDictionary sharedInstance]getPreviousItem];
//        
//        UIBarButtonItem *previousItemBtn = [[UIBarButtonItem alloc]initWithTitle:[previousItem name] style:UIBarButtonItemStyleBordered target:self action:@selector(previousItem:)];
//        // [[self navigationItem]setLeftBarButtonItem:previousItemBtn]; // Adiciona o botao criado na parte direita da navegação
//    }
//    
//    ItemDictionary *item = [[KidsDictionary sharedInstance]getActualItem];
//    ItemDictionary *nextItem = [[KidsDictionary sharedInstance]getNextItem];
//    
//    
//    [self setTitle:[item name]]; // Trocar titulo da tela
//    
//    UIBarButtonItem *nextItemBtn = [[UIBarButtonItem alloc]initWithTitle:[nextItem name] style:UIBarButtonItemStyleBordered target:self action:@selector(nextItem:)];
//    [[self navigationItem]setRightBarButtonItem:nextItemBtn]; // Adiciona o botao criado na parte direita da navegação
//    
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem]; // Criar um novo botao do tipo padrão do sistema
//    [button addTarget:self action:@selector(readLetter:) forControlEvents:UIControlEventTouchDown];
//    
//    // Definir o texto deste botão como a sendo a palavra relacionada a nossa imagem
//    [button setTitle:[NSString stringWithFormat:@"Clique para ouvir: %@", [item name]] forState:UIControlStateNormal];
//    [button setBackgroundColor:[UIColor whiteColor]];
//    
//    [button sizeToFit]; // Fazer com que o tamanho do botão seja o suficiente para monstrar todo o texto que dejamos
//    
//    [button setCenter:[[self view]center]]; // Centralizar botão no centro da tela
//    [button setBackgroundColor:[UIColor grayColor]];
//    [button setTintColor:[UIColor whiteColor]];
//    [button setFrame:CGRectMake(0, self.view.bounds.size.height-40, self.view.bounds.size.width, 40)];
//    
//    UIImage *image = [UIImage imageNamed:[item imageName]]; // Criar imagem]
//    UIImageView *imageView = [[UIImageView alloc]initWithImage:image]; // Criar View da imagem
//    [imageView setContentMode:UIViewContentModeScaleAspectFit]; // Garantir que a largura nao seja maior que tela e centraliza-la
//    [imageView setFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)]; // Posicionar imagem na tela]
//    [imageView setBackgroundColor:[UIColor whiteColor]];
//    
//    [[self view]addSubview:imageView]; // Adicionar Imagem na Tela
//    [[self view]addSubview:button]; // Adicionar botao na tela
//    
//    NSArray *currentControllers = [[self navigationController]viewControllers];
//    if([currentControllers count] > 1)
//    {
//        NSLog(@"ABCD");
//        NSArray *newControllers = [[NSArray alloc]initWithObjects:[currentControllers objectAtIndex:0], nil];
//        [[self navigationController]setViewControllers:newControllers animated:YES];
//    }
}

//- (void)showSelectedItem
//{
//    
//    ItemDictionary *previousItem = [[KidsDictionary sharedInstance]getPreviousItem];
//    
//    UIBarButtonItem *previousItemBtn = [[UIBarButtonItem alloc]initWithTitle:[previousItem name] style:UIBarButtonItemStyleBordered target:self action:@selector(previousItem:)];
//    [[self navigationItem]setLeftBarButtonItem:previousItemBtn]; // Adiciona o botao criado na parte direita da navegação
//    
//    ItemDictionary *nextItem = [[KidsDictionary sharedInstance]getNextItem];
//    ItemDictionary *item = [[KidsDictionary sharedInstance]getActualItem];
//    
//    [self setTitle:[item name]]; // Trocar titulo da tela
//    
//    UIBarButtonItem *nextItemBtn = [[UIBarButtonItem alloc]initWithTitle:[nextItem name] style:UIBarButtonItemStyleBordered target:self action:@selector(nextItem:)];
//    [[self navigationItem]setRightBarButtonItem:nextItemBtn]; // Adiciona o botao criado na parte direita da navegação
//    
//    
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem]; // Criar um novo botao do tipo padrão do sistema
//    [button addTarget:self action:@selector(readLetter:) forControlEvents:UIControlEventTouchDown];
//    
//    // Definir o texto deste botão como a sendo a palavra relacionada a nossa imagem
//    [button setTitle:[NSString stringWithFormat:@"Clique para ouvir: %@", [item name]] forState:UIControlStateNormal];
//    [button setBackgroundColor:[UIColor whiteColor]];
//    
//    [button sizeToFit]; // Fazer com que o tamanho do botão seja o suficiente para monstrar todo o texto que dejamos
//    
//    [button setCenter:[[self view]center]]; // Centralizar botão no centro da tela
//    [button setBackgroundColor:[UIColor grayColor]];
//    [button setTintColor:[UIColor whiteColor]];
//    [button setFrame:CGRectMake(0, self.view.bounds.size.height-40, self.view.bounds.size.width, 40)];
//    
//    UIImage *image = [UIImage imageNamed:[item imageName]]; // Criar imagem]
//    UIImageView *imageView = [[UIImageView alloc]initWithImage:image]; // Criar View da imagem
//    [imageView setContentMode:UIViewContentModeScaleAspectFit]; // Garantir que a largura nao seja maior que tela e centraliza-la
//    [imageView setFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)]; // Posicionar imagem na tela]
//    [imageView setBackgroundColor:[UIColor whiteColor]];
//    
//    [[self view]addSubview:imageView]; // Adicionar Imagem na Tela
//    [[self view]addSubview:button]; // Adicionar botao na tela
//    
//    NSArray *currentControllers = [[self navigationController]viewControllers];
//    if([currentControllers count] > 1)
//    {
//        NSLog(@"ABCD");
//        NSArray *newControllers = [[NSArray alloc]initWithObjects:[currentControllers objectAtIndex:1], nil];
//        [[self navigationController]setViewControllers:newControllers animated:YES];
//    }
//}

- (void)readLetter:(id)sender
{
    ItemDictionary *item = [[KidsDictionary sharedInstance]getActualItem];
    
    AVSpeechSynthesisVoice *voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"];
    AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc]init];
    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:[item name]];
    [utterance setRate:0.2f];
    [synthesizer speakUtterance:utterance];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
