//
//  Section.h
//  Navigation
//
//  Created by Kaê Coutinho - BEPiD on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Section : NSObject

@property (nonatomic,strong) NSArray * letterTitles;
@property (nonatomic,strong) NSArray * letterLanguages;
@property (nonatomic,strong) UIImage * letterImage;
@property (nonatomic,strong) NSArray * letterFonetics;

-(id)init;
-(id)initWithLetterTitle:(NSArray *)newLetterTitles forNewLetterLanguages:(NSArray *)newLetterLanguages letterImage:(UIImage *)newLetterImage andLetterFonetics:(NSArray *)newLetterFonetics;

@end