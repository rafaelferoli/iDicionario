//
//  Letra.h
//  Navigation
//
//  Created by Rafael Fernandes de Oliveira Carvalho on 3/16/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Letra : NSObject

@property NSString *letra;
@property NSString *palavra;
@property UIImage *imagem;

- (instancetype)initWithLetra: (NSString *)letra andPalavra: (NSString *)palavra andImagem: (UIImage *)imagem;

@end
