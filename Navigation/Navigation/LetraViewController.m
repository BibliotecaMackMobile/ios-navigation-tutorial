//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//
#import  "LetraViewController.h"
#import <AVFoundation/AVFoundation.h>


@implementation LetraViewController


-(void) viewDidLoad {
    if(_index == nil)
    {
        _index = 0;
       
    }
        NSArray * letters = @[@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"X",@"Z"];
    
     NSArray * words = @[@"Alundra",@"Battlefield",@"Call of Duty",@"Doom",@"Elder Scrolls",@"Fallout",@"Gauntlet",@"Hearthstone",@"Indiana Jones",@"Jumanji",@"Killzone",@"League of Legends",@"Mario Bros",@"Necrodome",@"Order and Chaos",@"Planetside",@"Quake",@"Runescape",@"Sim City",@"TitanFall",@"Unreal Tournament",@"Valor",@"XMen",@"Zathura"];
    
    [super viewDidLoad];
    
    self.title = [letters objectAtIndex:_index];
    
    if(_index < 23)
    {
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
        self.navigationItem.rightBarButtonItem=next;
    }
    if(_index > 0)
    {
    UIBarButtonItem *back = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(back:)];
    self.navigationItem.leftBarButtonItem=back;
    }
    
    
    
    
    UIButton *botao = [UIButton
                                        buttonWithType:UIButtonTypeSystem];
    
    
    UILabel *word = [ [UILabel alloc ] init];
    [word setText:[words objectAtIndex:_index]];
    [word sizeToFit];
    CGRect frame = [self.view frame];
    CGPoint topLeft = CGPointMake(CGRectGetMinX(frame), CGRectGetMinY(frame));
    word.center = CGPointMake(160, 460);
    [self.view addSubview:word];
    
    UIImageView *image = [[UIImageView alloc]init];
    [image setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%i.jpg", _index]]];
    image.contentMode = UIViewContentModeScaleAspectFit;
    image.frame = CGRectMake(0, 0, 300, 300);
    image.center = self.view.center;
    [self.view addSubview:image];
    
    AVSpeechSynthesizer * speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
    AVSpeechUtterance * utterance = [[AVSpeechUtterance alloc] initWithString:[words objectAtIndex:_index]];
    utterance.rate = 0.2;
    [speechSynthesizer speakUtterance:utterance];
}

-(void)next:(id)sender {
    
    LetraViewController *proximo;
    if(self.navigationController.viewControllers.count > 1) {
        proximo = self.navigationController.viewControllers[0];
    } else  {
        proximo = [[LetraViewController alloc]
                                              initWithNibName:nil
                                                    bundle:NULL];
    }
    proximo.index = _index + 1;
    [ self.navigationController setViewControllers:[[NSArray alloc] initWithObjects:proximo, nil] animated:YES] ;
}

-(void)back:(id)sender {
        LetraViewController *proximo;
    if(self.navigationController.viewControllers.count > 1) {
        proximo = self.navigationController.viewControllers[0];
    } else  {
        proximo = [[LetraViewController alloc]
                   initWithNibName:nil
                   bundle:NULL];
    }
      proximo.index = _index - 1;
    [ self.navigationController setViewControllers:[[NSArray alloc] initWithObjects:proximo, self, nil] animated:NO] ;
    [self.navigationController popViewControllerAnimated:YES];
}



@end
