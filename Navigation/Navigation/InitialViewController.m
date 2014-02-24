//
//  InitialViewController.m
//  Navigation
//
//  Created by Vinicius Soares Lima on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "InitialViewController.h"
#import "Dicionario.h"

@interface InitialViewController ()

@end

@implementation InitialViewController
static int cont =0;
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
    things = [[Dicionario alloc]init];
    self.title = [[[things getletra:cont] letter]uppercaseString];
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIBarButtonItem *back = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(back:)];
    if(cont>0){
        self.navigationItem.leftBarButtonItem=back;
    }
    [_Letter setText:[[[things getletra:cont] letter]uppercaseString]];
    [_word setText:[[things getletra:cont]word]];
   
    UIImage *aux = [UIImage imageNamed:[[things getletra:cont]image]];
    [_imege setImage:aux];
    
    // Do any additional setup after loading the view from its nib.
}

-(void)next:(id)sender {
    cont++;
    if (cont >25) {
        cont =0;
        [self.navigationController popToRootViewControllerAnimated:YES];
        
    }else{
    InitialViewController *proximo =[[InitialViewController alloc]initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:proximo animated:YES];
    }
}
-(void)back:(id)sender{
    if (cont>0) {
        cont--;
        [self.navigationController popViewControllerAnimated:YES];
    
    }
    }
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)ouvirBot:(id)sender {
    AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc]init];
    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:_word.text];
    [utterance setRate:0.1f];
    [synthesizer speakUtterance:utterance];
    
}

@end
