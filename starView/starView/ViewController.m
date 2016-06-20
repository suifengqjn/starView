//
//  ViewController.m
//  starView
//
//  Created by qianjn on 16/6/20.
//  Copyright © 2016年 SF. All rights reserved.
//

#import "ViewController.h"
#import "FMStarView.h"
@interface ViewController ()
@property (nonatomic)UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    FMStarView *view = [[FMStarView alloc] init];
    view.frame= CGRectMake(100, 100, 100, 20);
    view.star = @(3.5);
    [self.view addSubview:view];

    
    FMStarView *view2 = [[FMStarView alloc] initWithFrame:CGRectMake(100, 150, 100, 20)];
    view2.star = @(2);
    [self.view addSubview:view2];
    
    
}

@end
