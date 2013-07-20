//
//  AppDelegate.h
//  CardDeckAlgorithms
//
//  Created by Haifa Carina on 7/21/13.
//  Copyright (c) 2013 Haifa Carina. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    UIViewController *viewController;
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) UIViewController *viewController;

@end
