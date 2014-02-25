//
//  LetterViewController.h
//  Navigation
//
//  Created by Renan Cargnin on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LetterViewController : UIViewController
{
    NSString *letter;
    NSString *previousLetter;
    NSString *nextLetter;
    
    __weak IBOutlet UIImageView *img;
    __weak IBOutlet UILabel *lblWord;
    
}

@property NSString *letter;

- (id)initWithLetter:(NSString *)l;
+ (void)setHiddenView:(LetterViewController *)view;

@end
