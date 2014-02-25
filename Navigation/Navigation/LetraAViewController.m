//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"
#import "dicionario.h"
#import "shared.h"
#import <AVFoundation/AVFoundation.h>

@implementation LetraAViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    [self preencheDicionario];
    
    shared *c = [shared sharedInstance];
    dicionario *d = [[dicionario alloc]init];
    
    d = [c.listaDicionario objectAtIndex:c.count];
    
    CGRect myImageRect = CGRectMake( 10.0f, 100.0f, 300.0f, 300.0f);
    UIImageView *myImage = [[UIImageView alloc]initWithFrame:myImageRect];
    
    [myImage setImage:[UIImage imageNamed:d.imagem]];
    [self.view addSubview:myImage];
    
    myImage.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(ler:)];
    tap.delegate = self;
    [myImage addGestureRecognizer:tap];
    
    self.title = d.letra;
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIBarButtonItem *back = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(back:)];
    self.navigationItem.leftBarButtonItem=back;

    
    CGFloat currentY = 404.0;
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake( 62.0, currentY, 300.0, 35.0)];
    label.font = [UIFont fontWithName:@"Futura Medium Italic" size:30.0f];
    label.textColor = [UIColor blueColor];
    label.text = d.palavra;
    currentY = currentY + 35.0;
    [self.view addSubview:label];
 
}

-(void)ler:(id)sender
{
    shared *c = [shared sharedInstance];
    dicionario *d = [[dicionario alloc]init];
    
    d = [c.listaDicionario objectAtIndex:c.count];
    AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc]init];
    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:d.palavra];
    [utterance setRate:0.1f];
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"];
    [synthesizer speakUtterance:utterance];
}

-(void)next:(id)sender {
   shared *c = [shared sharedInstance];
//    if (c.count == 26) {
//        c.count = 0;
//        //[self.navigationController popToRootViewControllerAnimated:YES];
//        
//    }
    if (c.count == 25)
    {
        c.count = 0;
        [self.navigationController popToRootViewControllerAnimated:YES];
        return;
    }
    
    c.count = c.count + 1;
    LetraAViewController *viewController = [[LetraAViewController alloc] initWithNibName:nil bundle:NULL];
    [self.navigationController pushViewController:viewController animated:NO];
    //NSLog(@"%d", self.navigationController.viewControllers.count);
}

-(void)back:(id)sender{
    shared *c = [shared sharedInstance];
    if (c.count == 0)
        return;
    c.count = c.count - 2;
    //[[self navigationController] popViewControllerAnimated:YES];
    [self next:nil];
}

-(void) preencheDicionario{
    shared *ld = [shared sharedInstance];
    dicionario *d = [[dicionario alloc]init];
    
    d.letra = @"A";
    d.palavra = @"Abelha";
    d.imagem = @"abelha.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:0];
    
    d = [[dicionario alloc]init];
    d.letra = @"B";
    d.palavra = @"Banana";
    d.imagem = @"banana.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:1];
    
    d = [[dicionario alloc]init];
    d.letra = @"C";
    d.palavra = @"Carambola";
    d.imagem = @"carambola.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:2];
    
    d = [[dicionario alloc]init];
    d.letra = @"D";
    d.palavra = @"Danone";
    d.imagem = @"danone.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:3];
    
    d = [[dicionario alloc]init];
    d.letra = @"E";
    d.palavra = @"Escola";
    d.imagem = @"escola.gif";
    
    [ld.listaDicionario insertObject:d atIndex:4];
    
    d = [[dicionario alloc]init];
    d.letra = @"F";
    d.palavra = @"Floresta";
    d.imagem = @"floresta.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:5];
    
    d = [[dicionario alloc]init];
    d.letra = @"G";
    d.palavra = @"Gorila";
    d.imagem = @"gorila.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:6];
    
    d = [[dicionario alloc]init];
    d.letra = @"H";
    d.palavra = @"Hospital";
    d.imagem = @"hospital";
    
    [ld.listaDicionario insertObject:d atIndex:7];
    
    d = [[dicionario alloc]init];
    d.letra = @"I";
    d.palavra = @"iPod";
    d.imagem = @"ipod.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:8];
    
    d = [[dicionario alloc]init];
    d.letra = @"J";
    d.palavra = @"Jacaré";
    d.imagem = @"jacare.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:9];
    
    d = [[dicionario alloc]init];
    d.letra = @"K";
    d.palavra = @"Karina";
    d.imagem = @"karina.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:10];
    
    d = [[dicionario alloc]init];
    d.letra = @"L";
    d.palavra = @"Lasanha";
    d.imagem = @"lasanha.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:11];
    
    d = [[dicionario alloc]init];
    d.letra = @"M";
    d.palavra = @"Maçã";
    d.imagem = @"maca.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:12];
    
    d = [[dicionario alloc]init];
    d.letra = @"N";
    d.palavra = @"Navio";
    d.imagem = @"navio.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:13];
    
    d = [[dicionario alloc]init];
    d.letra = @"O";
    d.palavra = @"Orkut";
    d.imagem = @"orkut.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:14];
    
    d = [[dicionario alloc]init];
    d.letra = @"P";
    d.palavra = @"Pato";
    d.imagem = @"pato.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:15];
    
    d = [[dicionario alloc]init];
    d.letra = @"Q";
    d.palavra = @"Quadro";
    d.imagem = @"quadro.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:16];
    
    d = [[dicionario alloc]init];
    d.letra = @"R";
    d.palavra = @"Rato";
    d.imagem = @"rato.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:17];
    
    d = [[dicionario alloc]init];
    d.letra = @"S";
    d.palavra = @"Sapo";
    d.imagem = @"sapo.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:18];
    
    d = [[dicionario alloc]init];
    d.letra = @"T";
    d.palavra = @"Taturana";
    d.imagem = @"taturana.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:19];
    
    d = [[dicionario alloc]init];
    d.letra = @"U";
    d.palavra = @"Uva";
    d.imagem = @"uva.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:20];
    
    d = [[dicionario alloc]init];
    d.letra = @"V";
    d.palavra = @"Vassoura";
    d.imagem = @"vassoura.png";
    
    [ld.listaDicionario insertObject:d atIndex:21];
    
    d = [[dicionario alloc]init];
    d.letra = @"W";
    d.palavra = @"Windows";
    d.imagem = @"windows.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:22];
    
    d = [[dicionario alloc]init];
    d.letra = @"X";
    d.palavra = @"Xarope";
    d.imagem = @"xarope.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:23];
    
    d = [[dicionario alloc]init];
    d.letra = @"Y";
    d.palavra = @"Yoshi";
    d.imagem = @"yoshi.png";
    
    [ld.listaDicionario insertObject:d atIndex:24];
    
    d = [[dicionario alloc]init];
    d.letra = @"Z";
    d.palavra = @"Zumbi";
    d.imagem = @"zumbi.jpg";
    
    [ld.listaDicionario insertObject:d atIndex:25];
}


@end
