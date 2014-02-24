//
//  Letra.h
//  Navigation
//
//  Created by Vinicius Soares Lima on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Letra : NSObject
@property (nonatomic, weak) NSString *letter;
@property (nonatomic, weak) NSString *word;
@property (nonatomic, weak) NSString *image;

-(id) initWithLetter:(NSString*)newletter andWord:(NSString*)newword andImagename:(NSString*)newImage;
@end
