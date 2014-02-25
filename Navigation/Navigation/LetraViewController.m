//
//  LetraViewController.m
//  Navigation
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraViewController.h"

@interface LetraViewController ()

@end

@implementation LetraViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
             andTitle:(NSString *)title
           andContent:(NSString *)content {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _myTitle = title;
        _content = content;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    DataSingleton *dados = [DataSingleton sharedData];
    
    self.title = _myTitle;
    
    _synthesizer = [[AVSpeechSynthesizer alloc] init];
    
    //botao para frente
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    //botao para tras
    UIBarButtonItem *previous = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(previous:)];
    self.navigationItem.leftBarButtonItem=previous;
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeSystem];

    [botao addTarget:self action:@selector(makeUtterance:) forControlEvents:UIControlEventTouchUpInside];
    [botao setTitle:_content forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    dados.currentIndex++;
    
    [self.view addSubview:botao];
}

-(void)next:(id)sender {
    DataSingleton *dados = [DataSingleton sharedData];
    
    if (dados.currentIndex == dados.dataLetters.count) {
        dados.currentIndex = 0;
    }
    
    Letter *l = [dados.dataLetters objectAtIndex:dados.currentIndex];
    
    LetraViewController *proximo = [[LetraViewController alloc]
                                    initWithNibName:nil
                                    bundle:NULL andTitle:l.title andContent:l.word];
    
    [self.navigationController pushViewController:proximo
                                         animated:YES];
}

-(void)previous:(id)sender {
    DataSingleton *dados = [DataSingleton sharedData];
    
    if (dados.currentIndex == 1) {
        dados.currentIndex = dados.dataLetters.count + 1;
    }
    
    dados.currentIndex = dados.currentIndex - 2;
    Letter *l = [dados.dataLetters objectAtIndex:dados.currentIndex];
    
    LetraViewController *anterior = [[LetraViewController alloc]
                                    initWithNibName:nil
                                    bundle:NULL andTitle:l.title andContent:l.word];
    
    [self.navigationController pushViewController:anterior animated:YES];
}

- (void)makeUtterance:(id)sender {
    DataSingleton *dados = [DataSingleton sharedData];
    NSString *word = [[dados.dataLetters objectAtIndex:dados.currentIndex - 1] word];
    
    _utterance = [AVSpeechUtterance speechUtteranceWithString:word];
    _utterance.rate = AVSpeechUtteranceMinimumSpeechRate;
    _utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-br"];
    [_synthesizer speakUtterance:_utterance];
}

@end
