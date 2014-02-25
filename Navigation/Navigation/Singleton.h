//
//  Singleton.h
//  Navigation
//
//  Created by Lucas Augusto Cordeiro on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Letter.h"

@interface Singleton : NSObject

@property(strong, nonatomic)NSMutableArray* array;

+(id)instanciar;
-(void)addLetter:(Letter*)letter;

@end
