//
//  AlfabetoLetra.h
//  Navigation
//
//  Created by Lucas da Silva Pereira on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlfabetoLetra : NSObject
{
    NSString *letra;
}
@property (strong, nonatomic) NSString *palavra;
@property (strong, nonatomic) UIImage *imagem;

-(id)initWithLetra:(char)l ePalavra:(NSString*)p eImagem:(UIImage*)img;
-(NSString*)letra;
-(void)setLetra:(char)l;
@end
