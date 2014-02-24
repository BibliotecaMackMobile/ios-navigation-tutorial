//
//  LetraBuild.h
//  Navigation
//
//  Created by Luiz on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LetraBuild : NSObject

@property (nonatomic, weak) UIView *view;

-(CGRect)makeRectWithX:(CGFloat)x andY:(CGFloat)y andLargura:(CGFloat)largura andAltura:(CGFloat)altura;
+(LetraBuild *)sharedManager;
+(void)takeView:(UIView*)valorView;

@end
