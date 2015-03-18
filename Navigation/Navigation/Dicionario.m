//
//  Dicionario.m
//  Navigation
//
//  Created by Rafael Fernandes de Oliveira Carvalho on 3/17/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "Dicionario.h"
#import "Letra.h"

@interface Dicionario()
@property NSMutableArray *letras;
@end

@implementation Dicionario

- (instancetype)init {
    _letras = [[NSMutableArray alloc] init];
    
    NSArray *letras = @[@"a",
                        @"b",
                        @"c",
                        @"d",
                        @"e",
                        @"f",
                        @"g",
                        @"h",
                        @"i",
                        @"j",
                        @"k",
                        @"l",
                        @"m",
                        @"n",
                        @"o",
                        @"p",
                        @"q",
                        @"r",
                        @"s",
                        @"t",
                        @"u",
                        @"v",
                        @"w",
                        @"x",
                        @"y",
                        @"z"];
    
    
    NSArray *palavras = @[@"Abajur",
                          @"Bola",
                          @"Cachorro",
                          @"Dado",
                          @"Elefante",
                          @"Foca",
                          @"Gato",
                          @"Hipopótamo",
                          @"Itália",
                          @"Jaca",
                          @"Kiwi",
                          @"Laranja",
                          @"Macaco",
                          @"Navio",
                          @"Ovo",
                          @"Pato",
                          @"Queijo",
                          @"Relógio",
                          @"Sapo",
                          @"Tatu",
                          @"Uva",
                          @"Vaca",
                          @"Wilson",
                          @"Xuxa",
                          @"Yorkshire",
                          @"Zebra"];
    
    for (int i = 0; i < 26; i++) {
        Letra *letra = [[Letra alloc] init];
        letra.letra = letras[i];
        letra.palavra = palavras[i];
        letra.imagem = [UIImage imageNamed:letras[i]];
        [_letras addObject:letra];
    }
    
    _letraAtual = [_letras firstObject];
    
    
    return self;
    
}

- (Letra *)proximo {
    if (_letraAtual == [_letras lastObject]) {
        _letraAtual = [_letras firstObject];
        return _letraAtual;
    }
    NSInteger indice = [_letras indexOfObject:_letraAtual];
    _letraAtual = _letras[indice + 1];
    return _letraAtual;
}

- (Letra *)anterior {
    if (_letraAtual == [_letras firstObject]) {
        _letraAtual = [_letras lastObject];
        return _letraAtual;
    }
    NSInteger indice = [_letras indexOfObject:_letraAtual];
    _letraAtual = _letras[indice - 1];
    return _letraAtual;
}

@end
