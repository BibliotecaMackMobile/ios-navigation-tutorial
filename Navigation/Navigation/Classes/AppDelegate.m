//
//  AppDelegate.m
//  Navigation
//
//  Created by Vinicius Miana on 2/21/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window;
@synthesize navigationController;

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    navigationController = [[UINavigationController alloc] initWithRootViewController:[LetterViewController new]];
    [[navigationController navigationBar] setTitleTextAttributes:@{UITextAttributeTextColor:[UIColor whiteColor],UITextAttributeTextShadowColor:[UIColor blackColor],UITextAttributeTextShadowOffset:[NSValue valueWithUIOffset:UIOffsetMake(0.0f,0.0f)],UITextAttributeFont:[UIFont fontWithName:@"ChalkboardSE-Bold" size:20.0f]}];
    [[navigationController navigationBar] setBarTintColor:[UIColor colorWithRed:0.000 green:0.478 blue:1.000 alpha:1.000]];
    window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    [window setRootViewController:navigationController];
    [window setBackgroundColor:[UIColor whiteColor]];
    [window makeKeyAndVisible];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
    return YES;
}

-(void)applicationWillResignActive:(UIApplication *)application
{

}

-(void)applicationDidEnterBackground:(UIApplication *)application
{
    
}

-(void)applicationWillEnterForeground:(UIApplication *)application
{
    
}

-(void)applicationDidBecomeActive:(UIApplication *)application
{
    
}

-(void)applicationWillTerminate:(UIApplication *)application
{
    
}

@end