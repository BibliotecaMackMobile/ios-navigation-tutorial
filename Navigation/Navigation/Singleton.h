//
//  Singleton.h
//  Navigation
//
//  Created by Gustavo Luís Soré on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

@property (strong, nonatomic) NSDictionary *dictionary;
@property (strong, nonatomic) NSArray *array;
@property (nonatomic) int cont;

+(Singleton *)getInstancia;

@end
