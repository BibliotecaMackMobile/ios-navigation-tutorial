//
//  MackenzieObject.h
//  Navigation
//
//  Created by Rogerio Bordignon on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MackenzieObject : NSObject

@property (nonatomic, strong) NSString * letterObject;
@property (nonatomic, strong) NSString * wordObject;
@property (nonatomic, strong) NSString * imageObject;

-(id)initWithLetter:(NSString *)newLetter
            andWord:(NSString *)newWord
           andImage:(NSString *)newImage;

@end
