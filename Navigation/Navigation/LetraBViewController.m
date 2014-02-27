//
//  LetraBViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraBViewController.h"
#import "Palavra.h"
#import "Dicionario.h"
#import "LetrasViewController.h"

@implementation LetraBViewController

-(id) initWithPalavra:(Palavra *)palavra
{
    self = [super init];
    if (self) {
        _palavra = palavra;
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



-(void) viewDidLoad {
    [super viewDidLoad];
    self.title = [_palavra letra];
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeRoundedRect];
    [botao
     setTitle:[_palavra palavra]
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [self.view addSubview:botao];
    
    _myImage = [[UIImageView alloc] initWithFrame:CGRectMake(90, 90, 150, 150)];
    
    _myImage.image = [UIImage imageNamed:[_palavra imagem]];
    
    [self.view addSubview:_myImage];
}

-(void)next:(id)sender {
    LetrasViewController *proximo = [[LetrasViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}


@end
