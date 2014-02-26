//
//  LetraAViewController.m
//  ios-navigation
//
//  Created by Diego Jurfest Ceccon on 25/02/14.
//  Copyright (c) 2014 ___DIEGOJURFESTCECCON___. All rights reserved.
//

#import "LetraAViewController.h"


@implementation LetraAViewController
@synthesize avspeech, avutterance ,palavras;

int count = 0;

-(void) viewDidLoad {
    [super viewDidLoad];
    
    NSArray *letras = [[NSArray alloc] initWithObjects:@"A",@"B",@"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"L", @"M", @"N", @"O", @"P",@"Q", @"R",@"S",@"T",@"U",@"V",@"X",@"Z", nil];
    palavras = [[NSArray alloc] initWithObjects:@"ASTRONOMIA", @"BALÃO", @"CACHACA", @"DINOSSAURO",@"ELEFANTE",@"FADA",@"GAITA",@"HIPOPÓTAMO",@"ILHA",@"JARRA",@"LIMÃO",@"MAMÃO",@"NINHO",@"ÓPERA",@"PIPA",@"QUADRADO",@"RAIO",@"SALADA",@"TUCANO",@"URSO",@"VINHO",@"XÍCARA",@"ZORRO",nil];
    
    NSArray *pictures = [[NSArray alloc] initWithObjects:@"astronomia.jpg", @"balao", @"cachaca.jpeg",@"dinossauro.jpg", @"elefante.jpg", @"fada.jpg", @"gaita.jpg", @"hipopotamo.jpg", @"ilha.jpg", @"jarra.jpg", @"limao.jpg", @"mamao.JPG", @"ninho.jpg", @"opera.jpg", @"pipa.jpg", @"quadrado.jpg", @"raio.jpg", @"salada.jpg", @"tucano.jpg", @"urso.jpg", @"vinho.jpg",@"xicara.jpg",@"zorro.jpg",  nil];
    
    
    self.title = [letras objectAtIndex:count];
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIBarButtonItem *past = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(ant:)];
    self.navigationItem.leftBarButtonItem=past;
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeSystem];
    [botao
     setTitle:[palavras objectAtIndex:count]
     forState:UIControlStateNormal];
    [botao sizeToFit];
    
    botao.frame = CGRectMake(50, 50, 210, 100);
    [self.view addSubview:botao];
    
    UITapGestureRecognizer *gesto = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(algo:)];
    [gesto setNumberOfTapsRequired:1];
    
    
    UIImage *imag = [[UIImage alloc]init];
    imag = [UIImage imageNamed:[pictures objectAtIndex:count]];
    
    UIImageView* v = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, 200, 150)];
    [v setImage:imag];
    [self.view addSubview:v];
    v.center = self.view.center;
    
    [v addGestureRecognizer:gesto];
    [v setUserInteractionEnabled:YES];
}

-(void)next:(id)sender {
    if (count <22) {
        LetraAViewController *proximo = [[LetraAViewController alloc]
                                         initWithNibName:nil
                                         bundle:NULL];
        [self.navigationController pushViewController:proximo
                                             animated:YES];
        
        count = count + 1;
    }
    
}

-(void)ant:(id)sender {
    if (count >0) {
        LetraAViewController *anterior = [[LetraAViewController alloc]
                                          initWithNibName:nil
                                          bundle:NULL];
        [self.navigationController popViewControllerAnimated:YES];
        
        count = count - 1;
    }
    
}

-(void)vaifalar: (NSString *) a{
    avspeech = [[AVSpeechSynthesizer alloc]init];
    avutterance = [[AVSpeechUtterance alloc]initWithString:a];
    avutterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-br"];
    [avspeech speakUtterance:avutterance];
}

-(void)algo:(id)sender {
    [self vaifalar:[palavras objectAtIndex:count]];
}





@end

