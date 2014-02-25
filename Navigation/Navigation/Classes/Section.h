//
//  Section.h
//  Navigation
//
//  Created by Kaê Coutinho - BEPiD on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Section : NSObject

@property (nonatomic,strong) NSString * letterTitle;
@property (nonatomic,strong) UIImage * letterImage;
@property (nonatomic,strong) NSString * letterFonetics;

-(id)init;
-(id)initWithLetterTitle:(NSString *)newLetterTitle letterImage:(UIImage *)newLetterImage andLetterFonetics:(NSString *)newLetterFonetics;

@end