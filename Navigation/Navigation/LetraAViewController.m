//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"
#import "LetraBViewController.h"
#import "dicionario.h"

@implementation LetraAViewController



-(void) viewDidLoad {
    [super viewDidLoad];
    [self preencheDicionario];
    
    shared *c = [shared sharedInstance];
    dicionario *d = [[dicionario alloc]init];
    
    d = [c.listaDicionario objectAtIndex:c.count];
    self.title = d.letra;
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton buttonWithType:UIButtonTypeSystem];
    [botao setTitle:d.palavra forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [self.view addSubview:botao];
    
 
}

-(void)next:(id)sender {
    shared *c = [shared sharedInstance];
    c.count = c.count + 1;
    LetraAViewController *proximo = [[LetraAViewController alloc] initWithNibName:nil bundle:NULL];
    [self.navigationController pushViewController:proximo animated:YES];
}

-(void) preencheDicionario{
    shared *ld = [shared sharedInstance];
    dicionario *d = [[dicionario alloc]init];
    
    d.letra = @"A";
    d.palavra = @"Aranha";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:0];
    
    d = [[dicionario alloc]init];
    d.letra = @"B";
    d.palavra = @"Bolacha";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:1];
    
    d = [[dicionario alloc]init];
    d.letra = @"C";
    d.palavra = @"Cachorro";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:2];
    
    d = [[dicionario alloc]init];
    d.letra = @"D";
    d.palavra = @"Dado";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:3];
    
    d = [[dicionario alloc]init];
    d.letra = @"E";
    d.palavra = @"Escola";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:4];
    
    d = [[dicionario alloc]init];
    d.letra = @"F";
    d.palavra = @"Fazenda";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:5];
    
    d = [[dicionario alloc]init];
    d.letra = @"G";
    d.palavra = @"Galinha";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:6];
    
    d = [[dicionario alloc]init];
    d.letra = @"H";
    d.palavra = @"Hospital";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:7];
    
    d = [[dicionario alloc]init];
    d.letra = @"I";
    d.palavra = @"I";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:8];
    
    d = [[dicionario alloc]init];
    d.letra = @"J";
    d.palavra = @"Japão";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:9];
    
    d = [[dicionario alloc]init];
    d.letra = @"K";
    d.palavra = @"K";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:10];
    
    d = [[dicionario alloc]init];
    d.letra = @"L";
    d.palavra = @"Lobo";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:11];
    
    d = [[dicionario alloc]init];
    d.letra = @"M";
    d.palavra = @"Maçã";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:12];
    
    d = [[dicionario alloc]init];
    d.letra = @"N";
    d.palavra = @"N";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:13];
    
    d = [[dicionario alloc]init];
    d.letra = @"O";
    d.palavra = @"Orelha";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:14];
    
    d = [[dicionario alloc]init];
    d.letra = @"P";
    d.palavra = @"Pato";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:15];
    
    d = [[dicionario alloc]init];
    d.letra = @"Q";
    d.palavra = @"Q";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:16];
    
    d = [[dicionario alloc]init];
    d.letra = @"R";
    d.palavra = @"Roda";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:17];
    
    d = [[dicionario alloc]init];
    d.letra = @"S";
    d.palavra = @"Senha";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:18];
    
    d = [[dicionario alloc]init];
    d.letra = @"T";
    d.palavra = @"T";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:19];
    
    d = [[dicionario alloc]init];
    d.letra = @"U";
    d.palavra = @"U";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:20];
    
    d = [[dicionario alloc]init];
    d.letra = @"V";
    d.palavra = @"Vassoura";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:21];
    
    d = [[dicionario alloc]init];
    d.letra = @"W";
    d.palavra = @"W";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:22];
    
    d = [[dicionario alloc]init];
    d.letra = @"X";
    d.palavra = @"X";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:23];
    
    d = [[dicionario alloc]init];
    d.letra = @"Y";
    d.palavra = @"Y";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:24];
    
    d = [[dicionario alloc]init];
    d.letra = @"Z";
    d.palavra = @"Z";
    //d.imagem = ;
    
    [ld.listaDicionario insertObject:d atIndex:25];
}


@end
