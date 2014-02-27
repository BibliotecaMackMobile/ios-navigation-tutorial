//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetrasViewController.h"
#import "Dados.h"

@interface LetrasViewController ()
{
    UILabel *palavraLabel;
    UILabel *letraLabel;
    UIImageView *imagem;
    UISwipeGestureRecognizer *swipeLeft;
    UISwipeGestureRecognizer *swipeRight;
    UITapGestureRecognizer *imagemTap;
    CATransition *transition;
}
@end

@implementation LetrasViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    
    _synthesizer = [[AVSpeechSynthesizer alloc] init];
    
    //cria animacao para mudar imagens
    transition = [CATransition animation];
    transition.duration = 0.5f;
    //transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush;
    
    //carrega o array com as palavras
    [self loadData];
    [[Dados sharedInstance] loadData];
    
    //inicializa as variaveis auxiliares
    self.title = [[Dados sharedInstance].alfabeto substringWithRange:NSMakeRange([Dados sharedInstance].count, 1)];
    
    //cria o botao de "seguinte"
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    //cria o botao de retorno
    UIBarButtonItem *previous = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(previous:)];
    self.navigationItem.leftBarButtonItem = previous;
    previous.enabled = NO;
    
    NSLog(@"%f", self.view.bounds.size.height / 2);
    
    letraLabel = [[UILabel alloc] initWithFrame:CGRectMake(135, 80, 50, 50)];
    letraLabel.text = [[Dados sharedInstance].alfabeto substringWithRange:NSMakeRange([Dados sharedInstance].count, 1)];
    letraLabel.textAlignment = NSTextAlignmentCenter;
    letraLabel.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:35.0];
    [self.view addSubview:letraLabel];
    
    //cria a label para a palavra
    palavraLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height - 100, 320, 50)];
    palavraLabel.text = [Dados sharedInstance].palavras[[Dados sharedInstance].count];
    palavraLabel.textAlignment = NSTextAlignmentCenter;
    palavraLabel.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:30.0];
    [self.view addSubview:palavraLabel];
    
    //cria a image view e inicializa
    imagem = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, 200, 200)];
    imagem.image = [UIImage imageNamed:[[[Dados sharedInstance].alfabeto substringWithRange:NSMakeRange([Dados sharedInstance].count, 1)] lowercaseString]];
    imagem.center = self.view.center;
    imagem.userInteractionEnabled = YES;
    [self.view addSubview:imagem];
    
    imagemTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(falaPalavra)];
    [imagem addGestureRecognizer:imagemTap];
    
    swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(next:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeLeft];
    
    swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(previous:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    swipeRight.enabled = NO;
    [self.view addGestureRecognizer:swipeRight];
}

- (void)next:(id)sender
{
    //incrementa o contador e pega a posiçao atual na string
    [Dados sharedInstance].count ++;
    self.title = [[Dados sharedInstance].alfabeto substringWithRange:NSMakeRange([Dados sharedInstance].count, 1)];
    
    //se for a ultima letra desabilita o botao
    if ([Dados sharedInstance].count == [Dados sharedInstance].alfabeto.length - 1)
    {
        self.navigationItem.rightBarButtonItem.enabled = NO;
        swipeLeft.enabled = NO;
    } else if ([Dados sharedInstance].count == 1){ //habilita o botao de retorno
        self.navigationItem.leftBarButtonItem.enabled = YES;
        swipeRight.enabled = YES;
    }
    
    transition.subtype = kCATransitionFromRight;
    
    [self mudarFrase];
    [self mudarImagem];
}

- (void)previous:(id)sender
{
    //decrementa o contador e pega a posicao atual na string
    [Dados sharedInstance].count --;
    self.title = [[Dados sharedInstance].alfabeto substringWithRange:NSMakeRange([Dados sharedInstance].count, 1)];
    
    //se for a primeira posicao desabilita o botao de retorno
    if ([Dados sharedInstance].count == 0)
    {
        self.navigationItem.leftBarButtonItem.enabled = NO;
        swipeRight.enabled = NO;
    } else if ([Dados sharedInstance].count == [Dados sharedInstance].alfabeto.length - 2) // habilita o botao de seguinte
    {
        self.navigationItem.rightBarButtonItem.enabled = YES;
        swipeLeft.enabled = YES;
    }
    
    transition.subtype = kCATransitionFromLeft;
    
    [self mudarFrase];
    [self mudarImagem];
}

- (void)loadData
{
    //pega o caminho do plist onde estao as palavras e carrega o array "palavras"
    NSString *path = [[NSBundle mainBundle]pathForResource:@"Letras" ofType:@"plist"];
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile:path];
    
    [Dados sharedInstance].palavras = [dictionary valueForKey:@"Letras"];
}

- (void)mudarFrase
{
    palavraLabel.text = [Dados sharedInstance].palavras[[Dados sharedInstance].count];
    letraLabel.text = [[Dados sharedInstance].alfabeto substringWithRange:NSMakeRange([Dados sharedInstance].count, 1)];
}

- (void)mudarImagem
{
    [imagem.layer addAnimation:transition forKey:nil];
    
    imagem.image = [UIImage imageNamed:[[[Dados sharedInstance].alfabeto substringWithRange:NSMakeRange([Dados sharedInstance].count, 1)] lowercaseString]];
}

- (void)falaPalavra
{
    if(!_synthesizer.isSpeaking)
    {
        if ([[[Dados sharedInstance].alfabeto substringWithRange:NSMakeRange([Dados sharedInstance].count, 1)] isEqualToString:@"K"])
        {
            _utterance = [AVSpeechUtterance speechUtteranceWithString:@"Quiuí"];
        } else if ([[[Dados sharedInstance].alfabeto substringWithRange:NSMakeRange([Dados sharedInstance].count, 1)] isEqualToString:@"Y"])
        {
            _utterance = [AVSpeechUtterance speechUtteranceWithString:@"Ioga"];
        } else {
            _utterance = [AVSpeechUtterance speechUtteranceWithString:[Dados sharedInstance].palavras[[Dados sharedInstance].count]];
        }
        _utterance.rate = AVSpeechUtteranceMinimumSpeechRate;
        _utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-Br"];
        
        [_synthesizer speakUtterance:_utterance];
    }
}

@end
