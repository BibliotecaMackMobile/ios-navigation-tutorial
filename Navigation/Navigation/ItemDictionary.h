//
//  ItemDictionary.h
//  Navigation
//
//  Created by Rafael Moris on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemDictionary : NSObject

#pragma mark Property

@property NSString *name;
@property NSString  *imageName;

#pragma mark Init Methods

- (id)initWithName:(NSString *)__name andImageName:(NSString *)__imageName;

@end
