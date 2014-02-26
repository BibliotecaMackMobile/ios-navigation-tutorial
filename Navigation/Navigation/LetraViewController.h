//
//  LetraViewController.h
//  Navigation
//
//  Created by Isabela Mayumi R. Suitsu  on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LetraViewController : UIViewController
{
//    NSString *letra;
//    UIImage *imagem;
//    NSString *palavra;
    char letra;
}
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property IBOutlet UIButton *botPalavra;


-(id)initWithLetra:(char )l;


@end
