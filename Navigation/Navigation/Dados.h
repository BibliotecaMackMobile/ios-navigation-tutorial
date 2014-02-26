//
//  Dados.h
//  Navigation
//
//  Created by Lucas on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dados : NSObject

@property (strong, nonatomic) NSArray *palavras;
@property NSInteger count;
@property (strong, nonatomic) NSString *alfabeto;

+ (Dados *)sharedInstance;
- (void)loadData;

@end
