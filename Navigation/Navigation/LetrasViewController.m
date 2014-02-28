//
//  LetrasViewController.m
//  Navigation
//
//  Created by Marcus Vinicius Seixas on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetrasViewController.h"
#import "Palavra.h"
#import "Dicionario.h"
#import <AVFoundation/AVFoundation.h>

@interface LetrasViewController ()

@end

@implementation LetrasViewController
@synthesize botao;

-(id) initWithPalavra:(Palavra *)palavra
{
    self = [super init];
    if (self) {
        _palavra = palavra;
    }
    return self;
}

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
    self.title = [_palavra letra];
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    botao = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //botao = [[UIButton alloc] initWithFrame:CGRectMake(280, 0, 160, 30)];
    [botao setTitle:[_palavra palavra] forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    //[botao action:@selector(FalarApalavra)];
    [botao addTarget:self action:@selector(FalarApalavra:) forControlEvents:UIControlEventTouchUpInside];
    

    
    
    
    [self.view addSubview:botao];
    
    _myImage = [[UIImageView alloc] initWithFrame:CGRectMake(90, 80, 150, 150)];
    
    _myImage.image = [UIImage imageNamed:[_palavra imagem]];
    
    [self.view addSubview:_myImage];
}

-(void)next:(id)sender {
    
    LetrasViewController *proximo = [[LetrasViewController allocWithZone:Nil]initWithPalavra:[[Dicionario sharedInstancia]Atualizar]];
    
    [self.navigationController pushViewController:proximo animated:YES];
}

-(IBAction)FalarApalavra:(id)sender{
    
    
    AVSpeechSynthesisVoice * speechSynthesisVoice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"];
    AVSpeechUtterance * speechUtterance = [[AVSpeechUtterance alloc] initWithString: [_palavra palavra]];
    [speechUtterance setRate:0.3];
    
    AVSpeechSynthesizer * speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
    [speechUtterance setVoice:speechSynthesisVoice];
    [speechSynthesizer speakUtterance:speechUtterance];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
