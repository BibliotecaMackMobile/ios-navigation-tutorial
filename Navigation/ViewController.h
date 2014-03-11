//
//  ViewController.h
//  Navigation
//
//  Created by Bruno Rendeiro on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Letter.h"
@class LetterSingleton;

@interface ViewController : UIViewController
{
    NSArray  *sortedKeys;
}

@property (weak, nonatomic) IBOutlet UILabel *palavra1;
@property (weak, nonatomic) IBOutlet UIImageView *imagem;

-(void)proximaLetra;


@end
