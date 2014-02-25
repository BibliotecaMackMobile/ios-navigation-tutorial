//
//  LetterViewController.m
//  Navigation
//
//  Created by Lucas Augusto Cordeiro on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetterViewController.h"


@interface LetterViewController ()

@end

@implementation LetterViewController
@synthesize synthesizer;
@synthesize utterance;
static int vari = 0;
static char ref;
static char ref2;

- (void)viewDidLoad
{
	[super viewDidLoad];
    synthesizer = [AVSpeechSynthesizer new];
    
    
    Singleton* sing = [Singleton instanciar];
    Letter* let = [Letter new];
    let = [[sing array]objectAtIndex:vari];
    ref2 = ref;
    ref = let.letter;
    
    self.title = [NSString stringWithFormat:@"%c", let.letter ];
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeSystem];
    [botao addTarget:self action:@selector(sound:) forControlEvents:UIControlEventTouchUpInside];
    [botao setTitle:let.word forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [self.view addSubview:botao];
    
}

-(void)next:(id)sender {
    LetterViewController *proximo = [[LetterViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
    
        if (ref == 'Z')
            vari = 0;
        else
            vari++;
    
    
}

-(void)sound:(id)sender{
    Singleton* sing = [Singleton instanciar];
    Letter* let = [Letter new];
    let = [[sing array]objectAtIndex:vari];
    
    utterance = [AVSpeechUtterance speechUtteranceWithString:let.word];
    utterance.rate = AVSpeechUtteranceMinimumSpeechRate;
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"ja-JP"];
    [synthesizer speakUtterance:utterance];
    
}

@end
