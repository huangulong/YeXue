//
//  ViewController.m
//  YeXueDemo
//
//  Created by huanggulong on 16/7/17.
//  Copyright © 2016年 历山大亚. All rights reserved.
//

#import "ViewController.h"
#import "GLDataStack.h"
#import "GLDataQueue.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    GLDataStack *stack = [[GLDataStack alloc] init];
    NSLog(@"...........%@",stack);
    
    
    stack.push(1).push(2).push(3);
    NSLog(@"%@",stack);
    NSLog(@"%ld",stack.pop());
    NSLog(@"%ld",stack.pop());
    NSLog(@"%ld",stack.pop());
    NSLog(@"%ld",stack.pop());
    NSLog(@"%ld",stack.pop());
    
    GLDataQueue *queue = [[GLDataQueue alloc] init];
    NSLog(@"............%@",queue);
    
    queue.push(1).push(2).push(3).push(4);
    NSLog(@"%@",queue);
    NSLog(@"%ld",queue.pop());
    NSLog(@"%ld",queue.pop());
    NSLog(@"%ld",queue.pop());
    
    NSLog(@"%@",queue);
    queue.push(5).push(6);
    
    NSLog(@"%ld",queue.pop());
    NSLog(@"%ld",queue.pop());
    NSLog(@"%ld",queue.pop());
    NSLog(@"%ld",queue.pop());
    NSLog(@"%ld",queue.pop());
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
