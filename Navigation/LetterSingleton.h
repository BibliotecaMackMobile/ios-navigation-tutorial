//
//  LetterSingleton.h
//  Navigation
//
//  Created by Bruno Rendeiro on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Letter.h"

@interface LetterSingleton : NSObject
{
    int index;
}

@property int index;
@property (nonatomic, readonly) NSMutableDictionary *alphabet;

+(LetterSingleton *)sharedInstance;

-(void) criarLetter;
-(int) atualiza;

@end
