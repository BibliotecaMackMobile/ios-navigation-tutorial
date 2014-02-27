//
//  DictionaryViewController.h
//  Navigation
//
//  Created by Rafael Moris on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemDictionary.h"


@interface DictionaryViewController : UIViewController <UINavigationControllerDelegate>

- (void)showSelectedItem;
- (void)readLetter:(id)sender;

@end
