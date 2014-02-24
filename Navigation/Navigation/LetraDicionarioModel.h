//
//  LetraDicionarioModel.h
//  Navigation
//
//  Created by Luiz on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LetraDicionarioModel : NSObject

// NSArray
@property (nonatomic, strong) NSMutableDictionary *lista;

//
+(LetraDicionarioModel*)sharadManager;

@end
