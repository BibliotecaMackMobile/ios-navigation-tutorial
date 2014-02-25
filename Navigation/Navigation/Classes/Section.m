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

@synthesize letterTitle;
@synthesize letterImage;
@synthesize letterFonetics;

-(id)init
{
    self = [super init];
    if(self)
    {
        letterTitle = nil;
        letterImage = [UIImage imageNamed:@"LetterImagePlaceholder"];
        letterFonetics = nil;
    }
    return self;
}

-(id)initWithLetterTitle:(NSString *)newLetterTitle letterImage:(UIImage *)newLetterImage andLetterFonetics:(NSString *)newLetterFonetics
{
    self = [super init];
    if(self)
    {
        letterTitle = newLetterTitle;
        letterImage = ((letterImage) ? newLetterImage : [UIImage imageNamed:@"LetterImagePlaceholder"]);
        letterFonetics = newLetterFonetics;
    }
    return self;
}

@end