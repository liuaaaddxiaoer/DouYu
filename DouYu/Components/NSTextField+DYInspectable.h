//
//  NSTextField+DYInspectable.h
//  DouYu
//
//  Created by 刘小二 on 2019/12/22.
//  Copyright © 2019 xiao2. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTextField (DYInspectable)

/// 设置文本颜色是主色调
@property(nonatomic, assign) IBInspectable BOOL isMainColor;


@end

NS_ASSUME_NONNULL_END
