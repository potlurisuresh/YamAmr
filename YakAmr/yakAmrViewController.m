//
//  yakAmrViewController.m
//  YakAmr
//
//  Created by Suresh Potluri on 8/6/13.
//  Copyright (c) 2013 yaksee. All rights reserved.
//

#import "yakAmrViewController.h"

@interface yakAmrViewController ()
- (IBAction)AudioCapStop:(id)sender;

- (IBAction)AudioCapStart:(id)sender;
@end

@implementation yakAmrViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)AudioCapStop:(id)sender {
    NSLog(@"AudioCapStop\n");
}

- (IBAction)AudioCapStart:(id)sender {
    NSLog(@"AudioCapStart\n");
}
@end
