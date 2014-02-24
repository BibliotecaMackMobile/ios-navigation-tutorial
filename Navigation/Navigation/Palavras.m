//
//  Palavras.m
//  Navigation
//
//  Created by Marcelo Mendonça Miranda on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Palavras.h"

@implementation Palavras
@synthesize letra;
@synthesize palavra;
@synthesize imagem;

//-(id)init {
//    self = [super init];
//    if (self) {
//        _letra = [[NSString alloc] init];
//        _palavra = [[NSString alloc] init];
//        _imagem = [[NSString alloc] init];
//    }
//    return self;
//}


+(Palavras *)sharedInstance {
    static Palavras *instancia = nil;
    if(!instancia){
        instancia = [[super alloc] init];
    }
    return instancia;
}


-(id)initWithDados: (NSString *) letra palavra:(NSString *) palavra imagem:(NSString *)imagem{
    
    self = [super init];
    if (self) {
        self.letra = [[NSString alloc] init];
        self.palavra = [[NSString alloc] init];
        self.imagem = [[NSString alloc] init];
    }
    self.letra = letra;
    self.palavra = palavra;
    self.imagem = imagem;
    return self;
}



@end
