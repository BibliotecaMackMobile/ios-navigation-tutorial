//
//  Sections.h
//  Navigation
//
//  Created by Kaê Coutinho - BEPiD on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Section.h"

@interface Sections : NSObject

@property (nonatomic,strong) NSArray * alphabetArray;
@property (nonatomic,strong) NSMutableDictionary * lettersDictionary;

+(id)sharedInstance;

@end