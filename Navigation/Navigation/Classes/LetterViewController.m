//
//  LetterViewController.m
//  Navigation
//
//  Created by Kaê Coutinho - BEPiD on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetterViewController.h"

@interface LetterViewController()

-(void)initInterface;
-(void)nextLetter:(id)sender;
-(void)previousLetter:(id)sender;
-(void)createSwipeGestures;
-(void)handleSwipeGesture:(UISwipeGestureRecognizer *)sender;
-(void)createTapGesture;
-(void)handleTapGesture:(UITapGestureRecognizer *)sender;

@end

@implementation LetterViewController

@synthesize letterImageView;
@synthesize letterTitle;

#pragma mark - Constructors

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
        letterIndex = 0;
        sections = [Sections sharedInstance];
        rightSwipeGesture = nil;
        leftSwipeGesture = nil;
        tapGesture = nil;
        speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
        letterSpeech = [[AVSpeechUtterance alloc] initWithString:[[[sections lettersDictionary] objectForKey:[[sections alphabetArray] objectAtIndex:letterIndex]] letterFonetics]];
        [letterSpeech setRate:0.2];
        [letterSpeech setVoice:[AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"]];
    }
    return self;
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil andLetterIndex:(NSUInteger)index
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
        letterIndex = index;
        sections = [Sections sharedInstance];
        rightSwipeGesture = nil;
        leftSwipeGesture = nil;
        tapGesture = nil;
        speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
        letterSpeech = [[AVSpeechUtterance alloc] initWithString:[[[sections lettersDictionary] objectForKey:[[sections alphabetArray] objectAtIndex:letterIndex]] letterFonetics]];
        [letterSpeech setRate:0.2];
        [letterSpeech setVoice:[AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"]];
    }
    return self;
}

#pragma mark - UIView

-(void)viewWillAppear:(BOOL)animated
{
    
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self initInterface];
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
     
#pragma mark - Auxiliar Methods

-(void)initInterface
{
    [[self navigationItem] setTitle:[[sections alphabetArray] objectAtIndex:letterIndex]];
    [[[self navigationItem] rightBarButtonItem] setTitle:@""];
    [letterImageView setImage:[[[sections lettersDictionary] objectForKey:[[sections alphabetArray] objectAtIndex:letterIndex]] letterImage]];
    [letterImageView setUserInteractionEnabled:YES];
    [[letterImageView layer] setCornerRadius:30.0];
    [[letterImageView layer] setBorderWidth:1.0];
    [[letterImageView layer] setBorderColor:[[UIColor darkGrayColor] CGColor]];
    [[letterImageView layer] setMasksToBounds:YES];
    [letterTitle setText:[[[sections lettersDictionary] objectForKey:[[sections alphabetArray] objectAtIndex:letterIndex]] letterTitle]];
    [letterTitle setTextColor:[UIColor darkGrayColor]];
    [[self navigationItem] setBackBarButtonItem:nil];
    if(letterIndex == 0 || letterIndex == 25)
    {
        if(letterIndex == 0)
        {
            [[self navigationItem] setRightBarButtonItem:[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"RightArrow"] style:UIBarButtonItemStyleBordered target:self action:@selector(nextLetter:)]];
            [[[self navigationItem] rightBarButtonItem] setTintColor:[UIColor redColor]];
            [[self navigationItem] setLeftBarButtonItem:nil];
        }
        else
        {
            [[self navigationItem] setRightBarButtonItem:nil];
            [[self navigationItem] setLeftBarButtonItem:[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"LeftArrow"] style:UIBarButtonItemStyleBordered target:self action:@selector(previousLetter:)]];
            [[[self navigationItem] leftBarButtonItem] setTintColor:[UIColor redColor]];
        }
    }
    else
    {
        [[self navigationItem] setRightBarButtonItem:[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"RightArrow"] style:UIBarButtonItemStyleBordered target:self action:@selector(nextLetter:)]];
        [[[self navigationItem] rightBarButtonItem] setTintColor:[UIColor redColor]];
        [[self navigationItem] setLeftBarButtonItem:[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"LeftArrow"] style:UIBarButtonItemStyleBordered target:self action:@selector(previousLetter:)]];
        [[[self navigationItem] leftBarButtonItem] setTintColor:[UIColor redColor]];
    }
    [self createSwipeGestures];
    [self createTapGesture];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
}

-(void)nextLetter:(id)sender
{
    // 2-Views-Loaded-On-Memory Method
    //LetterViewController * nextViewController = [[LetterViewController alloc] initWithNibName:@"LetterViewController" bundle:nil andLetterIndex:(letterIndex + 1)];
    //[[self navigationController] setViewControllers:@[nextViewController] animated:YES];
    
    // Full-Stack-Memory Method
    LetterViewController * nextViewController = [[LetterViewController alloc] initWithNibName:@"LetterViewController" bundle:nil andLetterIndex:(letterIndex + 1)];
    [[self navigationController] pushViewController:nextViewController animated:YES];
}

-(void)previousLetter:(id)sender
{
    // 2-Views-Loaded-On-Memory Method
    //LetterViewController * previousViewController = [[LetterViewController alloc] initWithNibName:@"LetterViewController" bundle:nil andLetterIndex:(letterIndex - 1)];
    //[[self navigationController] setViewControllers:@[previousViewController,self] animated:NO];
    //[[self navigationController] popViewControllerAnimated:YES];
    
    // Full-Stack-Memory Method
    [[self navigationController] popViewControllerAnimated:YES];
}

#pragma mark - UIGestureRecognizer

-(void)createSwipeGestures
{
    rightSwipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeGesture:)];
    leftSwipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeGesture:)];
    [rightSwipeGesture setDirection:UISwipeGestureRecognizerDirectionRight];
    [leftSwipeGesture setDirection:UISwipeGestureRecognizerDirectionLeft];
    [[self view] addGestureRecognizer:rightSwipeGesture];
    [[self view] addGestureRecognizer:leftSwipeGesture];
}

-(void)handleSwipeGesture:(UISwipeGestureRecognizer *)sender
{
    if([sender direction] == UISwipeGestureRecognizerDirectionRight)
    {
        if(letterIndex > 0)
            [self previousLetter:nil];
    }
    else
    {
        if(letterIndex < 25)
            [self nextLetter:nil];
    }
}

-(void)createTapGesture
{
    tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
    [tapGesture setNumberOfTapsRequired:1];
    [letterImageView addGestureRecognizer:tapGesture];
}

-(void)handleTapGesture:(UITapGestureRecognizer *)sender
{
    if(!speechSynthesizer.speaking)
        [speechSynthesizer speakUtterance:letterSpeech];
}

@end