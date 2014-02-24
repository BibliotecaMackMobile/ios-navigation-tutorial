//
//  LetraAViewController.h
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LetraAViewController : UIViewController {
    int num ;
    NSString *letra;
    NSString * palavra;
}
@property int num;
@property (nonatomic,strong) NSString *palavra;
@property (nonatomic,strong) NSString *letra;
@end
