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
@synthesize letterTitleLabel;
@synthesize letterLanguageLabel;

#pragma mark - Constructors

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
        letterIndex = 0;
        letterWord = 0;
        letterLanguage = 0;
        sections = [Sections sharedInstance];
        rightSwipeGesture = nil;
        leftSwipeGesture = nil;
        tapGesture = nil;
        speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
    }
    return self;
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil andLetterIndex:(NSUInteger)index
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
        letterIndex = index;
        letterWord = 0;
        letterLanguage = 0;
        sections = [Sections sharedInstance];
        rightSwipeGesture = nil;
        leftSwipeGesture = nil;
        tapGesture = nil;
        speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
    }
    return self;
}

#pragma mark - UIView

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
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
    [[self view] setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Clouds"]]];
    [[self navigationItem] setTitle:[[sections alphabetArray] objectAtIndex:letterIndex]];
    [[[self navigationItem] rightBarButtonItem] setTitle:@""];
    [letterImageView setImage:[[[[sections lettersDictionary] objectForKey:[[sections alphabetArray] objectAtIndex:letterIndex]] objectAtIndex:letterWord] letterImage]];
    [letterImageView setBackgroundColor:[UIColor whiteColor]];
    [letterImageView setUserInteractionEnabled:YES];
    [[letterImageView layer] setCornerRadius:30.0];
    [[letterImageView layer] setBorderWidth:1.0];
    [[letterImageView layer] setBorderColor:[[UIColor darkGrayColor] CGColor]];
    [[letterImageView layer] setMasksToBounds:YES];
    [letterTitleLabel setText:[[[[[sections lettersDictionary] objectForKey:[[sections alphabetArray] objectAtIndex:letterIndex]] objectAtIndex:letterWord] letterTitles] objectAtIndex:letterLanguage]];
    [letterTitleLabel setTextColor:[UIColor darkGrayColor]];
    [letterLanguageLabel setText:[[[[[sections lettersDictionary] objectForKey:[[sections alphabetArray] objectAtIndex:letterIndex]] objectAtIndex:letterWord] letterLanguages] objectAtIndex:letterLanguage]];
    [letterLanguageLabel setTextColor:[UIColor darkGrayColor]];
    [[self navigationItem] setBackBarButtonItem:nil];
    if(letterIndex == 0 || letterIndex == 25)
    {
        if(letterIndex == 0)
        {
            [[self navigationItem] setRightBarButtonItem:[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"RightArrow"] style:UIBarButtonItemStyleBordered target:self action:@selector(nextLetter:)]];
            [[[self navigationItem] rightBarButtonItem] setTintColor:[UIColor whiteColor]];
            [[self navigationItem] setLeftBarButtonItem:nil];
        }
        else
        {
            [[self navigationItem] setRightBarButtonItem:nil];
            [[self navigationItem] setLeftBarButtonItem:[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"LeftArrow"] style:UIBarButtonItemStyleBordered target:self action:@selector(previousLetter:)]];
            [[[self navigationItem] leftBarButtonItem] setTintColor:[UIColor whiteColor]];
        }
    }
    else
    {
        [[self navigationItem] setRightBarButtonItem:[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"RightArrow"] style:UIBarButtonItemStyleBordered target:self action:@selector(nextLetter:)]];
        [[[self navigationItem] rightBarButtonItem] setTintColor:[UIColor whiteColor]];
        [[self navigationItem] setLeftBarButtonItem:[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"LeftArrow"] style:UIBarButtonItemStyleBordered target:self action:@selector(previousLetter:)]];
        [[[self navigationItem] leftBarButtonItem] setTintColor:[UIColor whiteColor]];
    }
    [self createSwipeGestures];
    [self createTapGesture];
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
        if(letterIndex < 25)
            [self nextLetter:nil];
}

-(void)createTapGesture
{
    tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
    [tapGesture setNumberOfTapsRequired:1];
    [letterImageView addGestureRecognizer:tapGesture];
}

-(void)handleTapGesture:(UITapGestureRecognizer *)sender
{
    if([[[[[[sections lettersDictionary] objectForKey:[[sections alphabetArray] objectAtIndex:letterIndex]] objectAtIndex:letterWord] letterFonetics] objectAtIndex:letterLanguage] length] > 0)
        if(!speechSynthesizer.speaking)
        {
            letterSpeech = [AVSpeechUtterance speechUtteranceWithString:[[[[[sections lettersDictionary] objectForKey:[[sections alphabetArray] objectAtIndex:letterIndex]] objectAtIndex:letterWord] letterFonetics] objectAtIndex:letterLanguage]];
            [letterSpeech setRate:0.2];
            [letterSpeech setVoice:[AVSpeechSynthesisVoice voiceWithLanguage:[[sections languagesDictionary] objectForKey:[[[[[sections lettersDictionary] objectForKey:[[sections alphabetArray] objectAtIndex:letterIndex]] objectAtIndex:letterWord] letterLanguages] objectAtIndex:letterLanguage]]]];
            [speechSynthesizer speakUtterance: letterSpeech];
        }
}

#pragma mark - IBActions

-(IBAction)changeWord:(id)sender
{
    if(letterWord < ([[[sections lettersDictionary] objectForKey:[[sections alphabetArray] objectAtIndex:letterIndex]] count] - 1))
        letterWord++;
    else
        letterWord = 0;
    [letterTitleLabel setText:[[[[[sections lettersDictionary] objectForKey:[[sections alphabetArray] objectAtIndex:letterIndex]] objectAtIndex:letterWord] letterTitles] objectAtIndex:letterLanguage]];
    [letterImageView setImage:[[[[sections lettersDictionary] objectForKey:[[sections alphabetArray] objectAtIndex:letterIndex]] objectAtIndex:letterWord] letterImage]];
}

-(IBAction)changeLanguage:(id)sender
{
    if(letterLanguage < ([[[[[sections lettersDictionary] objectForKey:[[sections alphabetArray] objectAtIndex:letterIndex]] objectAtIndex:letterWord] letterLanguages] count] - 1))
        letterLanguage++;
    else
        letterLanguage = 0;
    [letterTitleLabel setText:[[[[[sections lettersDictionary] objectForKey:[[sections alphabetArray] objectAtIndex:letterIndex]] objectAtIndex:letterWord] letterTitles] objectAtIndex:letterLanguage]];
    [letterLanguageLabel setText:[[[[[sections lettersDictionary] objectForKey:[[sections alphabetArray] objectAtIndex:letterIndex]] objectAtIndex:letterWord] letterLanguages] objectAtIndex:letterLanguage]];
}

@end