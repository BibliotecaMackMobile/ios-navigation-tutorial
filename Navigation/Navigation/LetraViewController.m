//
//  LetraViewController.m
//  Navigation
//
//  Created by Jean de Freitas Gomes on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraViewController.h"
#import "Dicionario.h"
@interface LetraViewController ()

@end

static char letra = 65;

@implementation LetraViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated
{
    //Limpa o pilha de views para não acumular
    if ([[[self navigationController] viewControllers] count] > 2)
    {
        NSArray *cView = [[self navigationController] viewControllers];
        NSArray *nView = [cView subarrayWithRange:NSMakeRange([cView count] -2, [cView count] - 1)];
        [[self navigationController] setViewControllers:nView];
    }
    
    //Seta o título da página com a letra
    [[self navigationItem] setTitle:[[NSString alloc] initWithFormat:@"%c", letra]];
    
    //Coloca o botão para ir para próxima letra
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem = next;
    if (letra == 90) next.enabled = false;
    
    //Coloca o botão para voltar para letra anterior
    UIBarButtonItem *butaum = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(voltar:)];
    self.navigationItem.leftBarButtonItem = butaum;
    if (letra == 65) butaum.enabled = false;
    
    //Adiciona o botão com a palavra referente a letra
    [_button setTitle: [[[Dicionario sharedInstance] getDicionario] valueForKey:[[NSString alloc] initWithFormat:@"%c",letra]] forState:UIControlStateNormal];
    
    //Adiciona a imagem
    NSString * nomeImg = [[NSString alloc] initWithFormat:@"%@.png", [[[Dicionario sharedInstance] getDicionario] valueForKey:[[NSString alloc] initWithFormat:@"%c",letra]]];
    
    UIImage *ibagem = [UIImage imageNamed: nomeImg];
    
    [_image setImage:ibagem];
}

-(IBAction)next:(id)sender
{
    letra++;
    LetraViewController *prox = [[LetraViewController alloc] initWithNibName:@"Letra_View" bundle:nil];
    [[self navigationController] pushViewController:prox animated:YES];
}

-(IBAction)voltar:(id)sender
{
    letra--;
    if ([[[self navigationController] viewControllers] count] == 1)
    {
        LetraViewController *l =[[LetraViewController alloc] initWithNibName:@"Letra_View" bundle:nil];
        NSMutableArray *nViews = [[NSMutableArray alloc] initWithArray:[[self navigationController] viewControllers]];
        [nViews insertObject:l atIndex:0];
        [[self navigationController] setViewControllers:nViews animated:YES];
    }
    NSLog(@"%d", [[[self navigationController] viewControllers] count]);
    [[self navigationController] popViewControllerAnimated:YES];
}

- (IBAction)startSpeak:(id)sender
{
    NSString *p;
    
    if (letra == 77) p = @"Maili";
    else p = [[[Dicionario sharedInstance] getDicionario] valueForKey:[[NSString alloc] initWithFormat:@"%c",letra]];
    _utt = [[AVSpeechUtterance alloc] initWithString:p];
    
    if ( letra == 87 ) _utt.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-us"];
    else _utt.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-br"];
    
    _syn = [[AVSpeechSynthesizer alloc] init];
    [_syn speakUtterance:_utt];
}
@end
