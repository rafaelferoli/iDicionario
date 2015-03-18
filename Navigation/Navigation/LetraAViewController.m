//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"
#import "Letra.h"


@implementation LetraAViewController



-(void) viewDidLoad {
    [super viewDidLoad];
    if (_dicionario == nil) {
        _dicionario = [[Dicionario alloc] init];
    }
    
    Letra *letra = _dicionario.letraAtual;
    
    self.title = letra.letra;
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIBarButtonItem *previous = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(previous:)];
    self.navigationItem.leftBarButtonItem=previous;
    
    _botao = [UIButton
                                        buttonWithType:UIButtonTypeSystem];
    [_botao
     setTitle:letra.palavra
     forState:UIControlStateNormal];
    [_botao sizeToFit];
    _botao.center = self.view.center;
    
    [self.view addSubview:_botao];
    
    _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(85, 300, 150, 150)];
    _imageView.center = self.view.center;
    _imageView.transform = CGAffineTransformMakeTranslation(0, 100);
    _imageView.image = letra.imagem;
    [self.view addSubview:_imageView];
    
 
}

- (void)viewWillAppear:(BOOL)animated {
    if (self.navigationController.viewControllers.count == 1) {
        self.navigationItem.leftBarButtonItem = nil;
    }
    Letra *letra = _dicionario.letraAtual;
    self.title = letra.letra;
    [_botao
     setTitle:letra.palavra
     forState:UIControlStateNormal];
    _imageView.image = letra.imagem;
}

- (void) previous:(id)sender {
    [_dicionario anterior];
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)next:(id)sender {
    LetraAViewController *proximo = [[LetraAViewController alloc]
                                              initWithNibName:nil
                                            bundle:NULL];
    proximo.dicionario = _dicionario;
    [_dicionario proximo];
    
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}








@end
