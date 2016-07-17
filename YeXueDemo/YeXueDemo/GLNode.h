//
//  GLData.h
//  YeXueDemo
//
//  Created by huanggulong on 16/7/17.
//  Copyright © 2016年 历山大亚. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GLNode : NSObject

//当前的值
@property(nonatomic , assign)NSInteger  index;

//下一个
@property(nonatomic , strong)GLNode * next;
//上一个
@property(nonatomic , strong)GLNode * last;

@end
