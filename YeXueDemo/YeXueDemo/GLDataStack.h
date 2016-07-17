//
//  GLDataStack.h
//  YeXueDemo
//
//  Created by huanggulong on 16/7/17.
//  Copyright © 2016年 历山大亚. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface GLDataStack : NSObject

- (GLDataStack * ((^)(NSInteger)))push;

- (NSInteger ((^)()))pop;

@end
