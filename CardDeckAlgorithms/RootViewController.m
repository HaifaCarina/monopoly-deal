//
//  RootViewController.m
//  CardDeckAlgorithms
//
//  Created by Haifa Carina on 7/21/13.
//  Copyright (c) 2013 Haifa Carina. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

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
	// Do any additional setup after loading the view.
    [self shuffleArray];
    
    
}
#pragma mark -
#pragma mark Shuffle NSMutableArray Content

- (void) shuffleArray {
    NSMutableArray *mArray = [[NSMutableArray alloc]init];
    [mArray addObject: @"Property 1"];
    [mArray addObject: @"Rent Card"];
    [mArray addObject: @"Cash"];
    [mArray addObject: @"Deal Breaker"];
    
    NSLog(@"%@", mArray);
    
    NSUInteger count = [mArray count];
    for (NSUInteger i = 0; i < count; ++i) {
        // Select a random element between i and end of array to swap with.
        NSInteger nElements = count - i;
        NSInteger n = (arc4random() % nElements) + i;
        [mArray exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
    
    NSLog(@"%@", mArray);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
