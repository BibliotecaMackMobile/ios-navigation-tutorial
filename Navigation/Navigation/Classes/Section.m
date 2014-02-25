//
//  Section.m
//  Navigation
//
//  Created by Kaê Coutinho - BEPiD on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Section.h"

@interface Section()

@end

@implementation Section

@synthesize letterTitles;
@synthesize letterLanguages;
@synthesize letterImage;
@synthesize letterFonetics;

-(id)init
{
    self = [super init];
    if(self)
    {
        letterTitles = nil;
        letterLanguages = nil;
        letterImage = [UIImage imageNamed:@"LetterImagePlaceholder"];
        letterFonetics = nil;
    }
    return self;
}

-(id)initWithLetterTitle:(NSArray *)newLetterTitles forNewLetterLanguages:(NSArray *)newLetterLanguages letterImage:(UIImage *)newLetterImage andLetterFonetics:(NSArray *)newLetterFonetics
{
    self = [super init];
    if(self)
    {
        letterTitles = newLetterTitles;
        letterLanguages = newLetterLanguages;
        letterImage = ((newLetterImage) ? newLetterImage : [UIImage imageNamed:@"LetterImagePlaceholder"]);
        letterFonetics = newLetterFonetics;
    }
    return self;
}

@end