//
//  DataSingleton.h
//  Navigation
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataSingleton : NSObject {
    NSDictionary *wordForLeter;
}

@property (strong, nonatomic) NSMutableArray *dataLetters;
@property NSUInteger currentIndex;

+ (id)sharedData;

- (void)addLetter:(NSObject *)letter;

@end
