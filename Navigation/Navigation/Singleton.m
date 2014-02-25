//
//  Singleton.m
//  Navigation
//
//  Created by Lucas Augusto Cordeiro on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Singleton.h"
#import "Letter.h"

@implementation Singleton
@synthesize array;

static Singleton* instancia = nil;

+ (id)allocWithZone:(struct _NSZone *)zone
{
    return  [self instanciar];
}


+(id)instanciar{
    if(!instancia)
        instancia = [[super allocWithZone:nil]init];
    return instancia;
}

- (id) init
{
    self = [super init];
    if (self) {
        array = [[NSMutableArray alloc] init];
        
        for(char cha = 'A'; cha <= 'Z'; cha++){
            Letter* object = [Letter new];
            [object setWord:@"TextoTest"];
            [object setLetter:cha];
            [array addObject:object];
        }
    }
    return self;
}

-(void)addLetter:(Letter*)letter{
    [array addObject:letter];
}

@end
