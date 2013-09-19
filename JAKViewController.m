//
//  JAKViewController.m
//  BlinkJAK
//
//  Created by Anirudh on 19/09/13.
//  Copyright (c) 2013 ANIROS. All rights reserved.
//

#import "JAKViewController.h"

@interface JAKViewController ()

@end

@implementation JAKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    [self flashOn:JAKButton];
    [self flashOn:JAKLabel];

}


- (void)flashOff:(UIView *)v
{
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionAllowUserInteraction animations:^ {
        v.alpha = .01;  //don't animate alpha to 0, otherwise you won't be able to interact with it
    } completion:^(BOOL finished) {
        [self flashOn:v];
    }];
}

- (void)flashOn:(UIView *)v
{
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionAllowUserInteraction animations:^ {
        v.alpha = 1;
    } completion:^(BOOL finished) {
        [self flashOff:v];
    }];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
