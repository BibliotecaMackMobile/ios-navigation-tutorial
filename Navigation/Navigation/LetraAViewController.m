//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"

@implementation LetraAViewController

@synthesize letter,singleton,ttitle,word,p,imgView;

-(void) viewDidLoad {
    [super viewDidLoad];
    
    //iniciando medidas de centro de tela
    int widthMed = (self.view.frame.size.width/2);
    int heightMed = (self.view.frame.size.height/2);
    
    //inicia a variavel singleton com a instancia da classe Singleton(desnecessário)
    singleton = [Singleton getInstancia];
    
    //atribui à variavel p(produto) o produto que atual da navegação
    p = [singleton.dictionary objectForKey:[singleton.array objectAtIndex:singleton.cont]];
    
    //aloca os elementos gráficos e desenha da tela
    letter = [[UILabel alloc]initWithFrame:CGRectMake(widthMed-50, 65 , 120 , 120)];
    word = [[UILabel alloc]initWithFrame:CGRectMake(widthMed-55, 410, 130 , 27)];
    letter.font = [UIFont fontWithName:@"Arial" size:130.0f];
    word.font = [UIFont fontWithName:@"Arial" size:27.0f];
    letter.text = ttitle;
    word.text = p.word;
    self.title = ttitle;
    
    //alocando a imagem
    imgView = [[UIImageView alloc] initWithFrame:CGRectMake(widthMed-90, heightMed-90, 180, 180)];
    [imgView setImage:p.image];
    
    //criando os botoes
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    UIBarButtonItem *back = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(back:)];
    self.navigationItem.rightBarButtonItem=next;
    self.navigationItem.leftBarButtonItem=back;
    
    
    UIButton *botao = [UIButton
                                        buttonWithType:UIButtonTypeSystem];
    [botao
     setTitle:@"Mostre uma palavra, uma figura e leia a palavra ao apertar um botao"
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    //[self.view addSubview:botao];
    [self.view addSubview:letter];
    [self.view addSubview:word];
    [self.view addSubview:imgView];
 
}

-(void)next:(id)sender {
    singleton.cont++;
    p = [singleton.dictionary objectForKey:[singleton.array objectAtIndex:singleton.cont]];
//    if(singleton.cont == singleton.array.count){
//        for(int i = 0;i < singleton.array.count;i++){
//            [self.navigationController popViewControllerAnimated:YES];
//        }
//    }
    LetraAViewController *proximo = [[LetraAViewController alloc]
                                              initWithNibName:nil
                                            bundle:NULL];
    proximo.ttitle = p.title;
    proximo.letter.text = p.title;
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}

-(void)back:(id)sender {
//    if(singleton.cont == 0){
//        LetraAViewController *proximo = [[LetraAViewController alloc]
//                                         initWithNibName:nil
//                                         bundle:NULL];
//        for(int i = 0;i < singleton.array.count-1;i++){
//            
//            [self.navigationController pushViewController:proximo
//                                                 animated:YES];
//        
//        }
//        return;
//    }
    singleton.cont--;
    [self.navigationController popViewControllerAnimated:YES];
    
}




@end
