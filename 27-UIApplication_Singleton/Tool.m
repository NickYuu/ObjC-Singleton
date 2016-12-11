//
//  Tool.m
//  27-UIApplication_Singleton
//
//  Created by YU on 2016/11/6.
//  Copyright © 2016年 YU. All rights reserved.
//

#import "Tool.h"

// 模仿 UIApplication_Singleton 的寫法



@implementation Tool


static Tool *_instance;


+ (void)load {
    _instance = [[Tool alloc] init];
}


+ (instancetype)sharedTool {
    return _instance;
}


+ (instancetype)alloc {
    if (_instance) {
        NSException *exception = [NSException exceptionWithName:@"NSInternalInconsistencyException" reason:@"There can only be one Tool instance." userInfo:nil];
        [exception raise];
    }
    return [super alloc];
}

@end
