//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"

@implementation LetraAViewController


-(void) viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%d",_num);
    NSArray *keys = [NSArray arrayWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z", nil];
    NSArray *objects = [NSArray arrayWithObjects:@"Aranha",@"Barata",@"Carro",@"Diagrama",@"Elefante",@"Faca",@"Garfo",@"Homem",@"Irmão",@"Jaleco",@"Kaiak",@"Ladeira",@"Madeira",@"Norte",@"Ombro",@"Pizza",@"Queijo",@"Rato",@"Sardinha",@"Tempo",@"Urso",@"Vaca",@"Window",@"Xarope",@"You",@"Zebra", nil];

    NSString *title =[keys objectAtIndex:_num];
    self.title = title;
        UIBarButtonItem *next = [[UIBarButtonItem alloc]
                                 initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
        self.navigationItem.rightBarButtonItem=next;
        
    if(_num ==25)
        self.navigationItem.rightBarButtonItem=nil;
    
    UIButton *botao = [UIButton buttonWithType:UIButtonTypeSystem];
    [botao
     setTitle:[objects objectAtIndex:_num]
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [self.view addSubview:botao];
    [self Speak:[objects objectAtIndex:_num]];
 
}

-(void) Speak :(NSString *) text
{
    
    fala =[[ AVSpeechSynthesizer alloc] init];
    falau = [[AVSpeechUtterance alloc] init];
    falau = [AVSpeechUtterance speechUtteranceWithString:text];
    [falau setRate:0.01f];
    //[falau setVoice:<#(AVSpeechSynthesisVoice *)#>]
    falau.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-PT"];
    [fala speakUtterance:falau];
}


-(void)next:(id)sender {
    int var = _num +1;
    LetraAViewController *proximo = [[LetraAViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    
    proximo.num = var;
    proximo.palavra = @"Eduardo";
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}




@end
