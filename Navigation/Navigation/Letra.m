//
//  Letra.m
//  Navigation
//
//  Created by Rafael Fernandes de Oliveira Carvalho on 3/16/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "Letra.h"

@implementation Letra

- (instancetype)initWithLetra:(NSString *)letra andPalavra:(NSString *)palavra andImagem:(UIImage *)imagem {
    self = [super init];
    if (self) {
        _letra = letra;
        _palavra = palavra;
        _imagem = imagem;
    }
    return self;
}

@end
