//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetrasViewController.h"
#import "LetraBViewController.h"

@interface LetrasViewController ()
{
    NSString *letras;
    NSInteger count;
    NSRange range;
    NSArray *palavras;
    UILabel *palavraLabel;
    UIImageView *imagem;
}
@end

@implementation LetrasViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    
    //carrega o array com as palavras
    [self loadData];
    
    //inicializa as variaveis auxiliares
    count = 0;
    letras = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    self.title = @"A";
    
    //cria o botao de "seguinte"
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    
    //cria o botao de retorno
    UIBarButtonItem *previous = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(previous:)];
    self.navigationItem.leftBarButtonItem = previous;
    previous.enabled = NO;
    
    //cria a label para a palavra
    palavraLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 400, 320, 50)];
    palavraLabel.text = palavras[count];
    palavraLabel.textAlignment = NSTextAlignmentCenter;
    palavraLabel.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:25.0];
    [self.view addSubview:palavraLabel];
    
    imagem = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, 200, 200)];
    imagem.image = [UIImage imageNamed:@"a"];
    imagem.center = self.view.center;
    [self.view addSubview:imagem];
}

- (void)next:(id)sender
{
    count ++;
    range = NSMakeRange(count, 1);
    self.title = [letras substringWithRange:range];
    
    if (count == letras.length - 1)
    {
        self.navigationItem.rightBarButtonItem.enabled = NO;
    } else if (count == 1){
        self.navigationItem.leftBarButtonItem.enabled = YES;
    }
    
    [self mudarFrase];
    [self mudarImagem];
}

- (void)previous:(id)sender
{
    count --;
    range = NSMakeRange(count, 1);
    self.title = [letras substringWithRange:range];
    
    if (count == 0)
    {
        self.navigationItem.leftBarButtonItem.enabled = NO;
    } else if (count == letras.length - 2)
    {
        self.navigationItem.rightBarButtonItem.enabled = YES;
    }
    
    [self mudarFrase];
    [self mudarImagem];
}

- (void)loadData
{
    NSString *path = [[NSBundle mainBundle]pathForResource:@"Letras" ofType:@"plist"];
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile:path];
    
    palavras = [dictionary valueForKey:@"Letras"];
}

- (void)mudarFrase
{
    palavraLabel.text = palavras[count];
}

- (void)mudarImagem
{
    
    imagem.image = [UIImage imageNamed:[[letras substringWithRange:range] lowercaseString]];
}

@end
