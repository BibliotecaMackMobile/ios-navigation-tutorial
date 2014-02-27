//
//  LetrasViewController.h
//  Navigation
//
//  Created by VIHP on 2/26/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LetrasViewController : UIViewController
{
    NSArray *letras;
    NSArray *objetos;
    NSArray *imagens;
}
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *fieldLabel;

-(void) proximaLetra: (id)sender;
-(void) letraAnterior: (id)sender;

- (IBAction)falar:(id)sender;

@end
