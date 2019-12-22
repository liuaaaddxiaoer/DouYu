//
//  NSView+DYInspectable.h
//  DouYu
//
//  Created by 刘小二 on 2019/12/22.
//  Copyright © 2019 xiao2. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSView (DYInspectable)

/// 设置背景色
@property(nonatomic, copy) IBInspectable NSColor *dy_backgroundColor;

/// 设置边框颜色
@property(nonatomic, copy) IBInspectable NSColor *dy_borderColor;

/// 设置边框宽度
@property(nonatomic, assign) IBInspectable CGFloat dy_borderWidth;

/// 设置默认边框样式
@property(nonatomic, assign) IBInspectable BOOL dy_mainBorderStyle;

@end

NS_ASSUME_NONNULL_END
