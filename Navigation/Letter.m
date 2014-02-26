//
//  Letter.m
//  Navigation
//
//  Created by Bruno Rendeiro on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Letter.h"

@implementation Letter

@synthesize palavra,foto;

-(id)initWithPalavra:(NSString *)p andFoto:(UIImage *)f
{
    self = [super init];
    if(self)
    {
        palavra = p;
        foto = f;
    }
    return self;
}



@end
