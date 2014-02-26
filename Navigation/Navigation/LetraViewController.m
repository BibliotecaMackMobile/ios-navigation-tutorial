//
//  LetraViewController.m
//  Navigation
//
//  Created by Luiz on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraViewController.h"
#import "LetraDicionarioModel.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

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
    NSString *auxTitulo = [self title];
    int auxIndex = ([[self key] indexOfObject:auxTitulo] + 1) % 26;
    LetraViewController *proximo = [[LetraViewController alloc] initWithLetra:[[self key] objectAtIndex:auxIndex]];
    [[self navigationController] pushViewController:proximo animated:YES];
}

-(id)initWithLetra:(NSString *)valorLetra {
    self = [super initWithNibName:Nil bundle:nil];
    if (self) {
        [self setTitle:valorLetra];
        [self setDicionario:(NSDictionary*)[[[LetraDicionarioModel sharadManager] lista] objectForKey:valorLetra]];
        [self setKey:[[NSArray alloc] initWithObjects:@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I",  @"J",  @"K",  @"L",  @"M",  @"N",  @"O",  @"P",  @"Q",  @"R",  @"S",  @"T",  @"U",  @"V",  @"W",  @"X", @"Y", @"Z", nil]];
    }
    return self;
}

-(IBAction)efeitoBtnPlayAudio:(id)sender {
    // SOM
    AVSpeechSynthesizer *v = [[AVSpeechSynthesizer alloc] init];
    AVSpeechUtterance *u = [AVSpeechUtterance speechUtteranceWithString:[[self lblNomeImagem] text]];
    u.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-br"];
    [u setRate:0.1f];
    [v speakUtterance:u];
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
    NSString *nome = [[self dicionario] objectForKey:@"Nome"];
    NSString *imagem = [[self dicionario] objectForKey:@"Imagem"];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    // BarButtonItem
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    [[self navigationItem] setRightBarButtonItem:next];
    
    // Imagem
    [self setImgViewImagem:[[UIImageView alloc] initWithFrame:[self makeRectWithX:30 andY:35 andLargura:40 andAltura:30]]];
    [[self imgViewImagem] setImage:[UIImage imageNamed:imagem]];
    UITapGestureRecognizer *g = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(efeitoBtnPlayAudio:)];
    [g setNumberOfTapsRequired:1];
    [[self view] addGestureRecognizer:g];
    [[self view] setUserInteractionEnabled:YES];
    
    // Label
    [self setLblNomeImagem:[[UILabel alloc] initWithFrame:[self makeRectWithX:30 andY:67 andLargura:40 andAltura:10]]];
    [[self lblNomeImagem] setText:nome];
    
    // Botao
//    [self setBtnPlayAudio:[[UIButton alloc] initWithFrame:[self makeRectWithX:0 andY:10 andLargura:100 andAltura:90]]];
//    [[self btnPlayAudio] addTarget:self action:@selector(efeitoBtnPlayAudio:) forControlEvents:UIControlEventTouchUpInside];
    
    // Adiciona no canvas
    [[self view] addSubview:[self imgViewImagem]];
    [[self view] addSubview:[self lblNomeImagem]];
//    [[self view] addSubview:[self lblNomeImagem]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
