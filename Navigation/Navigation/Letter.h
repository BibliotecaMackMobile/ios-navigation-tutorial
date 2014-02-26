//
//  Letter.h
//  Navigation
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Letter : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) UIImage *myImage;
@property (strong, nonatomic) NSString *word;

- (id)initWithTitle:(NSString *)title andImage:(UIImage *)image andWord:(NSString *)word;

@end
