//
//  Letter.h
//  Navigation
//
//  Created by Bruno Rendeiro on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Letter : NSObject
{
    NSString *palavra;
    UIImage *foto;
}

@property NSString *palavra;
@property UIImage *foto;

-(id) initWithPalavra:(NSString *)p andFoto:(UIImage *)f;

@end
