//
//  MackenzieArray.m
//  Navigation
//
//  Created by Rogerio Bordignon on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieArray.h"

@implementation MackenzieArray
@synthesize dictionaryArray;

+ (MackenzieArray *)defaultDictionary {
    static MackenzieArray *defaultDictionary = nil;
    if(!defaultDictionary)
        defaultDictionary = [[super allocWithZone:nil] initSecret];
    
    return defaultDictionary;
}

+ (id)allocWithZone:(NSZone *)zone {
    return [self defaultDictionary];
}


- (id)initSecret{
    self = [super init];
    if(self) {
        dictionaryArray = [[NSMutableArray alloc] init];
        
    }
    return self;
}

@end
