//
//  LetterViewController.m
//  Navigation
//
//  Created by Renan Cargnin on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetterViewController.h"
@import AVFoundation;

@interface LetterViewController ()

@end

@implementation LetterViewController

@synthesize letter;

static NSArray *words;

static LetterViewController *hiddenView;

- (id)initWithLetter:(NSString *)l
{
    self = [super init];
    if (self)
    {
        letter = l;
        if (words == nil)
        {
            words = [NSArray arrayWithObjects:@"Aranha", @"Burro", @"Cachorro", @"Dinossauro", @"Elefante", @"Foca", @"Girafa", @"Hipopótamo", @"Iena", @"Javali", @"Koala", @"Largatixa", @"Macaco", @"Naja", @"Ovelha", @"Pato não faz gol", @"Quati", @"Raposa", @"Sapo", @"Tartaruga", @"Urso", @"Vaca", @"Wolf", @"Ximango", @"Yorkshire", @"Zebra", nil];
        }
        
        AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc]init];
        AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:@"Bem vindo ao dicionário Aurélio da zueira"];
        [utterance setRate:0.1f];
        utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"];
        [synthesizer speakUtterance:utterance];
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

- (void)viewWillAppear:(BOOL)animated
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    if ([letter isEqualToString:@"A"])
        previousLetter = @"Z";
    else
        previousLetter = [NSString stringWithFormat:@"%c", [letter characterAtIndex:0] - 1];
    
    if ([letter isEqualToString:@"Z"])
        nextLetter = @"A";
    else
        nextLetter = [NSString stringWithFormat:@"%c", [letter characterAtIndex:0] + 1];
    
    self.title = letter;
    
    UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithTitle:[NSString stringWithFormat:@"< %@", previousLetter] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    
    [self.navigationItem setLeftBarButtonItem:back];
    
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithTitle:[NSString stringWithFormat:@"%@ >", nextLetter] style:UIBarButtonItemStylePlain target:self action:@selector(next)];
    
    [self.navigationItem setRightBarButtonItem:next];
    
    [lblWord setText:[words objectAtIndex:[letter characterAtIndex:0]-65]];
    [img setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@.png", letter]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)next
{
    if (hiddenView == nil)
    {
        hiddenView = [[LetterViewController alloc] initWithLetter:nextLetter];
    }
    else if (![[hiddenView letter] isEqualToString:nextLetter])
    {
        [hiddenView updateView:nextLetter];
    }
    
    if ([[self.navigationController viewControllers] count] == 2)
    {
        [[self navigationController] setViewControllers:[NSArray arrayWithObject:self]];
        [[self navigationController] pushViewController:hiddenView animated:YES];
    }
    else
        [[self navigationController] pushViewController:hiddenView animated:YES];
    
    hiddenView = self;
}

- (void)back
{    
    if (![[hiddenView letter] isEqualToString:previousLetter])
    {
        [hiddenView updateView:previousLetter];
    }
    
    [[self navigationController] setViewControllers:[NSArray arrayWithObjects:hiddenView, self, nil]];
    [[self navigationController] popViewControllerAnimated:YES];
    
    hiddenView = self;
}

- (void)updateView:(NSString *)l
{
    letter = l;
    int letterIntValue = [letter characterAtIndex:0];
    
    self.title = letter;
    
    [lblWord setText:[words objectAtIndex:letterIntValue-65]];
    [img setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@.png", letter]]];
}

+ (void)setHiddenView:(LetterViewController *)view
{
    hiddenView = view;
}

- (IBAction)speak:(id)sender {
    NSString *word = [words objectAtIndex:[letter characterAtIndex:0] - 65];
    
    AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc]init];
    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:word];
    [utterance setRate:0.1f];
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"];
    [synthesizer speakUtterance:utterance];
}

@end
