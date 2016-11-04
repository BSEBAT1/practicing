//
//  PassbackController.m
//  Practice
//
//  Created by macbook pro on 11/3/16.
//  Copyright © 2016 berkaysebat.com. All rights reserved.
//

#import "PassbackController.h"

@interface PassbackController ()


@end

@implementation PassbackController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

-(void)dothis{
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
    self.numbahs=[[NSMutableArray alloc]init];
    
    for (int i=0; i<5000; i++) {
        
    NSLog(@"looping i %d",i);
        NSNumber* number = [NSNumber numberWithInt:i]; // <-- autoreleased, so you don't need to release it yourself
        [self.numbahs addObject:number];
        NSLog(@"numbers are %lu",(unsigned long)self.numbahs.count);
    }
   
    [[NSNotificationCenter defaultCenter]postNotificationName:@"passed" object:self.numbahs userInfo:0];
        });
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
