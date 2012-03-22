//
//  ViewController.m
//  SubViewWithNib
//
//  Created by Michael Luton on 3/20/12.
//  Copyright (c) 2012 Michael Luton. All rights reserved.
//

#import "ViewController.h"
#import "FooView.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Create an instance of UIView (FooView).
    FooView *fooView = [[[NSBundle mainBundle] loadNibNamed:@"FooView" owner:self options:nil] objectAtIndex:0];

    // Tell it where to go. Otherwise, it'll appear in the upper left corner.
    fooView.frame = CGRectMake(10, 150, 300, 90);

    // Modify the text of the label.
    fooView.fooLabel.text = @"Modified Label Text";

    // Actually add the subview.
    [self.view addSubview:fooView];
}

@end
