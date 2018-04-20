//
//  ViewController.m
//  FingerPainting2
//
//  Created by Mike Cameron on 2018-04-20.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "ViewController.h"
#import "PaintView.h"
#import "SelectView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet PaintView *PaintView;
@property (weak, nonatomic) IBOutlet SelectView *SelectView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
