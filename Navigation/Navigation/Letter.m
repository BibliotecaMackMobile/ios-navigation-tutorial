//
//  Letter.m
//  Navigation
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Letter.h"

@implementation Letter

- (id)initWithTitle:(NSString *)title andImage:(UIImage *)image andWord:(NSString *)word {
    self = [super init];
    
    if (self) {
        _title = title;
        _myImage = image;
        _word = word;
    }
    
    return self;
}

@end
