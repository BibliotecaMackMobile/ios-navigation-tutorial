//
//  LetraDicionarioModel.m
//  Navigation
//
//  Created by Luiz on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraDicionarioModel.h"
#import "LetraDicionario.h"

@implementation LetraDicionarioModel

#pragma mark - padrão singleton

+(LetraDicionarioModel *)sharadManager {
    static LetraDicionarioModel *instancia;
    if (!instancia) {
        instancia = [[super allocWithZone:Nil] init];
    }
    return instancia;
}

+(id)allocWithZone:(struct _NSZone *)zone {
    return [self sharadManager];
}

-(id)init {
    if (self = [super init]) {
        LetraDicionario *a = [[LetraDicionario alloc] initWithNome:@"Abelha" andImagem:[UIImage imageNamed:@"Abelha.jpg"]];
        LetraDicionario *b = [[LetraDicionario alloc] initWithNome:@"Babuino" andImagem:[UIImage imageNamed:@"Babuino.jpg"]];
        LetraDicionario *c = [[LetraDicionario alloc] initWithNome:@"Coelho" andImagem:[UIImage imageNamed:@"Coelho.jpg"]];
        LetraDicionario *d = [[LetraDicionario alloc] initWithNome:@"Doninha" andImagem:[UIImage imageNamed:@"Doninha.jpg"]];
        LetraDicionario *e =[[LetraDicionario alloc] initWithNome:@"Esquilo" andImagem:[UIImage imageNamed:@"Esquilo.jpg"]];
        LetraDicionario *f = [[LetraDicionario alloc] initWithNome:@"Falcao" andImagem:[UIImage imageNamed:@"Falcao.jpg"]];
        LetraDicionario *g = [[LetraDicionario alloc] initWithNome:@"Garca" andImagem:[UIImage imageNamed:@"Garca.jpg"]];
        LetraDicionario *h = [[LetraDicionario alloc] initWithNome:@"Hipopotamo" andImagem:[UIImage imageNamed:@"Hipopotamo.jpg"]];
        LetraDicionario *i = [[LetraDicionario alloc] initWithNome:@"Iaque" andImagem:[UIImage imageNamed:@"Iaque.jpg"]];
        LetraDicionario *j = [[LetraDicionario alloc] initWithNome:@"Jacare" andImagem:[UIImage imageNamed:@"Jacare.jpg"]];
        LetraDicionario *k = [[LetraDicionario alloc] initWithNome:@"Kouprey" andImagem:[UIImage imageNamed:@"Kouprey.jpg"]];
        LetraDicionario *l = [[LetraDicionario alloc] initWithNome:@"Libelula" andImagem:[UIImage imageNamed:@"Libelula.jpg"]];
        LetraDicionario *m = [[LetraDicionario alloc] initWithNome:@"Medusa" andImagem:[UIImage imageNamed:@"Medusa.jpg"]];
        LetraDicionario *n = [[LetraDicionario alloc] initWithNome:@"Naja" andImagem:[UIImage imageNamed:@"Naja.jpg"]];
        LetraDicionario *o = [[LetraDicionario alloc] initWithNome:@"Orix" andImagem:[UIImage imageNamed:@"Orix.jpg"]];
        LetraDicionario *p = [[LetraDicionario alloc] initWithNome:@"Pantera" andImagem:[UIImage imageNamed:@"Pantera.jpg"]];
        LetraDicionario *q = [[LetraDicionario alloc] initWithNome:@"Queroquero" andImagem:[UIImage imageNamed:@"Queroquero.jpg"]];
        LetraDicionario *r = [[LetraDicionario alloc] initWithNome:@"Raposa" andImagem:[UIImage imageNamed:@"Raposa.jpg"]];
        LetraDicionario *s = [[LetraDicionario alloc] initWithNome:@"Salamandra" andImagem:[UIImage imageNamed:@"Salamandra.jpg"]];
        LetraDicionario *t = [[LetraDicionario alloc] initWithNome:@"Tartaruga" andImagem:[UIImage imageNamed:@"Tartaruga.jpg"]];
        LetraDicionario *u = [[LetraDicionario alloc] initWithNome:@"Urso" andImagem:[UIImage imageNamed:@"Urso.jpg"]];
        LetraDicionario *v = [[LetraDicionario alloc] initWithNome:@"Vespa" andImagem:[UIImage imageNamed:@"Vespa.jpeg"]];
        LetraDicionario *w = [[LetraDicionario alloc] initWithNome:@"Watt" andImagem:[UIImage imageNamed:@"Watt.png"]];
        LetraDicionario *x = [[LetraDicionario alloc] initWithNome:@"Xexe" andImagem:[UIImage imageNamed:@"Xexe.jpeg"]];
        LetraDicionario *y = [[LetraDicionario alloc] initWithNome:@"Yoda" andImagem:[UIImage imageNamed:@"Yoda.jpg"]];
        LetraDicionario *z = [[LetraDicionario alloc] initWithNome:@"Zebra" andImagem:[UIImage imageNamed:@"Zebra.jpg"]];
        
        [self setLista:[[NSDictionary alloc] initWithObjectsAndKeys:a, @"A", b, @"B", c, @"C", d, @"D", e, @"E", f, @"F", g, @"G", h, @"H", i, @"I", j, @"J", k, @"K", l, @"L", m, @"M", n, @"N", o, @"O", p, @"P", q, @"Q", r, @"R", s, @"S", t, @"T", u, @"U", v, @"V", w, @"W", x, @"X", y, @"Y", z, @"Z", nil]];
    }
    return self;
}

@end
