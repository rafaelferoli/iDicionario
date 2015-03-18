//
//  Dicionario.h
//  Navigation
//
//  Created by Rafael Fernandes de Oliveira Carvalho on 3/17/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Letra;

@interface Dicionario : NSObject

@property Letra *letraAtual;

- (Letra *)proximo;
- (Letra *)anterior;

@end
