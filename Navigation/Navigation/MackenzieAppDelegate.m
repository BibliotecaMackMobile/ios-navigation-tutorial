//
//  MackenzieAppDelegate.m
//  Navigation
//
//  Created by Rodrigo Soldi on 2/21/14.
//  Copyright (c) 2014 Rodrigo Soldi. All rights reserved.
//

#import "MackenzieAppDelegate.h"
#import "LetraAViewController.h"
#import "ProximoViewController.h"
#import "Dicionario.h"
#import "Singleton.h"

@implementation MackenzieAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    Dicionario *dic = [[Dicionario alloc]init];
    [dic adicionaPalavra:@"Aranha" letraGrande:@"A" imagem:[UIImage imageNamed:@"spider-256"]];
    Dicionario *dic3 = [[Dicionario alloc]init];
    [dic3 adicionaPalavra:@"Bola" letraGrande:@"B" imagem:[UIImage imageNamed:@"basketball-256"]];
    Dicionario *dic4 = [[Dicionario alloc]init];
    [dic4 adicionaPalavra:@"Cachorro" letraGrande:@"C" imagem:[UIImage imageNamed:@"dog-256"]];
    Dicionario *dic5 = [[Dicionario alloc]init];
    [dic5 adicionaPalavra:@"Doce" letraGrande:@"D" imagem:[UIImage imageNamed:@"candy-256"]];
    Dicionario *dic2 = [[Dicionario alloc]init];
    [dic2 adicionaPalavra:@"Elefante" letraGrande:@"E" imagem:nil];
    Dicionario *dic6 = [[Dicionario alloc]init];
    [dic6 adicionaPalavra:@"Foca" letraGrande:@"F" imagem:nil];
    Dicionario *dic7 = [[Dicionario alloc]init];
    [dic7 adicionaPalavra:@"Gato" letraGrande:@"G" imagem:[UIImage imageNamed:@"cat-256"]];
    Dicionario *dic8 = [[Dicionario alloc]init];
    [dic8 adicionaPalavra:@"Hipopótamo" letraGrande:@"H" imagem:nil];
    Dicionario *dic9 = [[Dicionario alloc]init];
    [dic9 adicionaPalavra:@"Iguana" letraGrande:@"I" imagem:nil];
    Dicionario *dic10 = [[Dicionario alloc]init];
    [dic10 adicionaPalavra:@"Jaguar" letraGrande:@"J" imagem:nil];
    Dicionario *dic11 = [[Dicionario alloc]init];
    [dic11 adicionaPalavra:@"Kiwi" letraGrande:@"K" imagem:nil];
    Dicionario *dic12 = [[Dicionario alloc]init];
    [dic12 adicionaPalavra:@"Lagarto" letraGrande:@"L" imagem:nil];
    Dicionario *dic13 = [[Dicionario alloc]init];
    [dic13 adicionaPalavra:@"Macaco" letraGrande:@"M" imagem:nil];
    Dicionario *dic14 = [[Dicionario alloc]init];
    [dic14 adicionaPalavra:@"Navio" letraGrande:@"N" imagem:[UIImage imageNamed:@"cruise_ship-256"]];
    Dicionario *dic15 = [[Dicionario alloc]init];
    [dic15 adicionaPalavra:@"Ornitorrinco" letraGrande:@"O" imagem:nil];
    Dicionario *dic16 = [[Dicionario alloc]init];
    [dic16 adicionaPalavra:@"Pato" letraGrande:@"P" imagem:nil];
    Dicionario *dic17 = [[Dicionario alloc]init];
    [dic17 adicionaPalavra:@"Quati" letraGrande:@"Q" imagem:nil];
    Dicionario *dic18 = [[Dicionario alloc]init];
    [dic18 adicionaPalavra:@"Rato" letraGrande:@"R" imagem:nil];
    Dicionario *dic19 = [[Dicionario alloc]init];
    [dic19 adicionaPalavra:@"Sapo" letraGrande:@"S" imagem:nil];
    Dicionario *dic20 = [[Dicionario alloc]init];
    [dic20 adicionaPalavra:@"Tatu" letraGrande:@"T" imagem:nil];
    Dicionario *dic21 = [[Dicionario alloc]init];
    [dic21 adicionaPalavra:@"Urso" letraGrande:@"U" imagem:nil];
    Dicionario *dic22 = [[Dicionario alloc]init];
    [dic22 adicionaPalavra:@"Viado" letraGrande:@"V" imagem:nil];
    Dicionario *dic23 = [[Dicionario alloc]init];
    [dic23 adicionaPalavra:@"Will Smith" letraGrande:@"W" imagem:nil];
    Dicionario *dic24 = [[Dicionario alloc]init];
    [dic24 adicionaPalavra:@"Xuxa" letraGrande:@"X" imagem:nil];
    Dicionario *dic25 = [[Dicionario alloc]init];
    [dic25 adicionaPalavra:@"Yahoo" letraGrande:@"Y" imagem:nil];
    Dicionario *dic26 = [[Dicionario alloc]init];
    [dic26 adicionaPalavra:@"Zabumba" letraGrande:@"Z" imagem:nil];
    
    Singleton *single = [Singleton inicia];
    Dicionario *novaLetra = [[single letras]objectAtIndex:[single indice]];
    single.indice++;
    
    ProximoViewController *viewController = [[ProximoViewController alloc]
                                             init];
    [viewController setTitle:[novaLetra letraGrande]];
    
    self.navigationController = [[UINavigationController alloc]
                                 initWithRootViewController:viewController];
    self.window = [[UIWindow alloc]
                   initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = self.navigationController;


    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
