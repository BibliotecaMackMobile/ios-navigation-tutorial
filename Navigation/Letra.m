//
//  Letra.m
//  Navigation
//
//  Created by Vinicius Soares Lima on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Letra.h"

@implementation Letra
-(id) initWithLetter:(NSString*)newletter andWord:(NSString*)newword andImagename:(NSString*)newImage{
    self = [super init];
    [self setLetter:newletter];
    [self setWord:newword];
    [self setImage:newImage];
    
    return self;
}



@end
