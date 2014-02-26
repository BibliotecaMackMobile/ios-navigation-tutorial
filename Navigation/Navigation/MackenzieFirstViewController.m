//
//  MackenzieFirstViewController.m
//  Navigation
//
//  Created by Rogerio Bordignon on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieFirstViewController.h"

@interface MackenzieFirstViewController ()

@end

@implementation MackenzieFirstViewController
@synthesize lblLetter, lblWord, lblImage, AlfaDictionary;
static int contLetter = 0;

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
    // Do any additional setup after loading the view from its nib.
    AlfaDictionary = [[MackenzieArray alloc]init];
   self.title = @"Pokemon";
    UIBarButtonItem *nextLetter = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem = nextLetter;
    UIBarButtonItem *backLetter = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(back:)];
    self.navigationItem.leftBarButtonItem = backLetter;
    
    //---------
    
    [lblLetter setText:[[AlfaDictionary letterAtIndex:contLetter] letterObject]];
    [lblWord setText:[[AlfaDictionary letterAtIndex:contLetter] wordObject]];
    UIImage * image = [UIImage imageNamed:[[AlfaDictionary letterAtIndex:contLetter] letterObject]];
    [lblImage setImage:image]; //lblImage e a UIImageView
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

                                   
- (void) next:(id)sender {
    contLetter ++;
    if(contLetter > 25) {
        contLetter = 0;
        [self.navigationController popToRootViewControllerAnimated:YES]; //Volta ao primeiro
    }
    else {
        MackenzieFirstViewController * prox = [[MackenzieFirstViewController alloc] initWithNibName:nil bundle:nil];
        [self.navigationController pushViewController:prox animated:YES];
    }
}

- (void) back:(id)sender {
    if(contLetter > 0) {
        contLetter --;
        [self.navigationController popViewControllerAnimated:YES];
    }
}
- (IBAction)speakName:(id)sender {
    AVSpeechSynthesizer * synthesizer = [[AVSpeechSynthesizer alloc] init];
    AVSpeechUtterance * utterance = [AVSpeechUtterance speechUtteranceWithString:[lblWord text]];
    [utterance setRate:0.3f]; //Velocidade da voz
    [synthesizer speakUtterance:utterance];
}
@end
