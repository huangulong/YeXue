//
//  GLDataStack.m
//  YeXueDemo
//
//  Created by huanggulong on 16/7/17.
//  Copyright © 2016年 历山大亚. All rights reserved.
//

#import "GLDataStack.h"
#import "GLNode.h"

@interface GLDataStack()

@property(nonatomic , strong)GLNode * first;

@end

@implementation GLDataStack

- (GLDataStack * ((^)(NSInteger)))push{
    return ^(NSInteger number){
        
        GLNode *data = [[GLNode alloc] init];
        data.index = number;
        data.next = self.first;
        self.first = data;
        return self;
    };
}

- (NSInteger ((^)()))pop{
    return ^{
        if (self.first == nil) {
            NSLog(@"空栈");
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
        return @"空栈";
    }
    return [array componentsJoinedByString:@","];
}

@end
