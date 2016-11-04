//
//  ViewController.m
//  Practice
//
//  Created by macbook pro on 11/3/16.
//  Copyright © 2016 berkaysebat.com. All rights reserved.
//

#import "ViewController.h"
//My own comment 

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateui:) name:@"passed" object:nil];
    PassbackController *shamus=[[PassbackController alloc]init];
    [shamus dothis];
    self.view.backgroundColor=[UIColor greenColor];
    
    
    
}
-(void)updateui:(NSNotification *)chinga{
    NSLog(@"update the ui with this shit");
    NSArray *new=chinga.object;
    NSLog(@"the count is %lu",(unsigned long)new.count);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
