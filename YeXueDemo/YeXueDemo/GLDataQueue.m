//
//  GLDataQueue.m
//  YeXueDemo
//
//  Created by huanggulong on 16/7/17.
//  Copyright © 2016年 历山大亚. All rights reserved.
//

#import "GLDataQueue.h"
#import "GLNode.h"

@interface GLDataQueue ()

@property(nonatomic , strong)GLNode * first;

@property(nonatomic , strong)GLNode * last;

@end

@implementation GLDataQueue


- (GLDataQueue * ((^)(NSInteger)))push{
    return ^(NSInteger number){
        GLNode *data = [[GLNode alloc] init];
        data.index = number;
        if (_first == nil) {
            _first = data;
            _last = data;
        }else{
            _last.next = data;
            _last = data;
        }
        return self;
    };
}

- (NSInteger ((^)()))pop{
    return ^{
        if (self.first == nil) {
            NSLog(@"空队列");
        }
        NSInteger m = self.first.index;
        self.first = self.first.next;
        return m;
    };
}

- (NSString *)description{
    GLNode *node = self.first;
    NSMutableArray *array = [NSMutableArray array];
    while (node) {
        [array addObject:@(node.index)];
        node = node.next;
        
    }
    if (array.count == 0) {
        return @"空队列";
    }
    return [array componentsJoinedByString:@","];
}

@end
