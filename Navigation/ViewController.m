//
//  ViewController.m
//  Navigation
//
//  Created by Bruno Rendeiro on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "ViewController.h"
#import "LetterSingleton.h"
#import "Letter.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

@synthesize palavra1;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
//        [[LetterSingleton sharedInstance]criarLetter:l];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIBarButtonItem *bbi = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(proximaLetra)];
    self.navigationItem.rightBarButtonItem = bbi;
    UIBarButtonItem *bb2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(voltarLetra)];
    self.navigationItem.leftBarButtonItem = bb2;
    sortedKeys = [[[[LetterSingleton sharedInstance]alphabet] allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    self.title = [sortedKeys objectAtIndex:[LetterSingleton sharedInstance].index];
    Letter *aux = [[[LetterSingleton sharedInstance] alphabet] objectForKey:self.title];
    [palavra1 setText:aux.palavra];
    self.imagem.image = aux.foto;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)proximaLetra
{
    ViewController *nvc = [[ViewController alloc] initWithNibName:@"DictionaryView" bundle:nil];
    [[LetterSingleton sharedInstance] atualiza];
    [self.navigationController pushViewController:nvc animated:YES];
}

-(void)voltarLetra
{
    if ([LetterSingleton sharedInstance].index > 0)
    {
    [[LetterSingleton sharedInstance] atualiza2];
    [self.navigationController popViewControllerAnimated:YES];
    }
}
- (IBAction)falar:(id)sender
{
    sortedKeys = [[[[LetterSingleton sharedInstance]alphabet] allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    self.title = [sortedKeys objectAtIndex:[LetterSingleton sharedInstance].index];
    Letter *aux = [[[LetterSingleton sharedInstance] alphabet] objectForKey:self.title];
    
    AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc] init];
    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:aux.palavra];
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-br"];
    [synthesizer speakUtterance:utterance];
}

@end
