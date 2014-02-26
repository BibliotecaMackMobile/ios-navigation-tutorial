//
//  Dados.h
//  Navigation
//
//  Created by Lucas Domene Firmo on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dados : NSObject

@property (strong, nonatomic) NSArray *palavras;
@property (strong, nonatomic) NSString *alfabeto;
@property NSInteger count;

+ (Dados *)sharedInstance;
- (void)loadData;

@end
