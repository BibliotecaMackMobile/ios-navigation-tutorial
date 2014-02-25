//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"
#import "LetraBViewController.h"
@implementation LetraAViewController


-(void) viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%d",_num);
    NSString *title =[_letras objectAtIndex:_num];
    self.title = title;
        UIBarButtonItem *next = [[UIBarButtonItem alloc]
                                 initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:) ];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]
                                            initWithBarButtonSystemItem:UIBarButtonSystemItemRewind
                                             target:self action:@selector(back:) ];
    self.navigationItem.rightBarButtonItem=next;
    
    
    if(_num ==25)
        self.navigationItem.rightBarButtonItem=nil;
    
    UIButton *botao = [UIButton buttonWithType:UIButtonTypeSystem];
    [botao setFrame:CGRectMake(70 , 180, 180, 80)];
    [botao
    setTitle:[_palavras objectAtIndex:_num]
    forState:UIControlStateNormal];
    //[botao sizeToFit];
    [botao setFont:[UIFont systemFontOfSize:35]];
    //botao.center = self.view.center;
    
    nomeImagem =  [[_palavras objectAtIndex:_num]stringByAppendingString:@".jpg"];
     _imagem = [UIImage imageNamed:nomeImagem];
    UIImageView * novo = [[UIImageView alloc]initWithImage:_imagem];
    novo.center = self.view.center;
    [self.view addSubview:novo];
    [self.view addSubview:botao];
    UILabel *myLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 65, 80, 80)];
    //[myLabel setBackgroundColor:[UIColor whiteColor]];
    [myLabel setText:[_letras objectAtIndex:_num]];
    [[self view] addSubview:myLabel];
    [myLabel setFont:[UIFont systemFontOfSize:92]];
    [self Speak:[_palavras objectAtIndex:_num]];
    novo.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self action:@selector(Ler)];
    tap.delegate = self;
    [novo addGestureRecognizer:tap];
    
    
 }
-(void) Ler
{
    [self Speak:[_palavras objectAtIndex:_num]];
}
-(void) Speak :(NSString *) text
{
    
    fala =[[ AVSpeechSynthesizer alloc] init];
    falau = [[AVSpeechUtterance alloc] init];
    falau = [AVSpeechUtterance speechUtteranceWithString:text];
    [falau setRate:0.001f];
    falau.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"];
    [fala speakUtterance:falau];
}

-(void)back:(id)sender {
    _num = _num-1;
    if(_num < 0)
        _num = 0;
     [self.navigationController popViewControllerAnimated:YES];

}

-(void)next:(id)sender {
    //_num = _num +1;
    LetraBViewController *proximo = [[LetraBViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self dismissViewControllerAnimated:YES completion:nil];
    proximo.num = _num+1;
    proximo.palavras = _palavras;
    proximo.letras = _letras;
    
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}




@end
