//
//  LetterViewController.m
//  Navigation
//
//  Created by Renan Cargnin on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetterViewController.h"

@interface LetterViewController ()

@end

@implementation LetterViewController

@synthesize letter;

static NSArray *words;

- (id)initWithLetter:(NSString *)l
{
    self = [super init];
    if (self)
    {
        letter = l;
        if (words == nil)
        {
            words = [NSArray arrayWithObjects:@"Aranha", @"Burro", @"Cachorro", @"Dinossauro", @"Elefante", @"Foca", @"Girafa", @"Hipopotamo", @"Iena", @"Jabuti", @"Koala", @"Lagartixa", @"Macaco", @"Naja", @"Ovelha", @"Pato", @"Quati", @"Raposa", @"Sapo", @"Tartaruga", @"Urso", @"Vaca", @"Wolf", @"Ximango", @"Yorkshire", @"Zebra", nil];
        }
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    self.title = letter;
    
    if (![letter isEqualToString:@"Z"])
    {
        UIBarButtonItem *next = [[UIBarButtonItem alloc]
                                 initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
        self.navigationItem.rightBarButtonItem=next;
    }
    
    NSLog(@"%d", [[self letter] characterAtIndex:0]);
    NSLog(@"View Controllers: %d", [[[self navigationController] viewControllers] count]);
    
    [lblWord setText:[words objectAtIndex:[letter characterAtIndex:0]-65]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)next:(id)sender {
    int l = [[self letter] characterAtIndex:0];
    LetterViewController *proximo = [[LetterViewController alloc]
                                     initWithLetter:[NSString stringWithFormat:@"%c", l+1]];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
}

@end
