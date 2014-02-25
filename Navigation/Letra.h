//
//  Letra.h
//  Navigation
//
//  Created by Vinicius Soares Lima on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Letra : NSObject
@property (nonatomic, strong) NSString *letter;
@property (nonatomic, strong) NSString *word;
@property (nonatomic, strong) NSString *image;

-(id) initWithLetter:(NSString*)newletter andWord:(NSString*)newword andImagename:(NSString*)newImage;
@end
