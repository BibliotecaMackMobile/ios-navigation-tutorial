//
//  shared.h
//  Navigation
//
//  Created by Gregory on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LetraAViewController.h"

@interface shared : NSObject
@property int count;
@property NSMutableArray *listaDicionario;
@property LetraAViewController *viewController;
+(shared*)sharedInstance;
@end
