//
//  MackenzieObject.m
//  Navigation
//
//  Created by Rogerio Bordignon on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieObject.h"

@implementation MackenzieObject
@synthesize letterObject, wordObject, imageObject;

-(id)initWithLetter:(NSString *)newLetter
            andWord:(NSString *)newWord
           andImage:(NSString *)newImage {
    self = [super init];
    if(self) {
        [self setLetterObject:newLetter];
        [self setWordObject:newWord];
        [self setImageObject:newImage];
    }
    return self;
}


@end
