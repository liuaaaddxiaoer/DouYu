//
//  NSView+DYInspectable.m
//  DouYu
//
//  Created by 刘小二 on 2019/12/22.
//  Copyright © 2019 xiao2. All rights reserved.
//

#import "NSView+DYInspectable.h"

#import <AppKit/AppKit.h>


@implementation NSView (DYInspectable)

@dynamic
dy_backgroundColor,
dy_borderColor,
dy_borderWidth,
dy_mainBorderStyle;

- (void)setDy_backgroundColor:(NSColor *)dy_backgroundColor {
    self.wantsLayer = YES;
    self.layer.backgroundColor = [dy_backgroundColor CGColor];
}

- (void)setDy_borderColor:(NSColor *)dy_borderColor {
    self.wantsLayer = YES;
    self.layer.borderColor = dy_borderColor.CGColor;
}

- (void)setDy_borderWidth:(CGFloat)dy_borderWidth {
    self.wantsLayer = YES;
    self.layer.borderWidth = dy_borderWidth;
}

- (void)setDy_mainBorderStyle:(BOOL)dy_mainBorderStyle {
    self.wantsLayer = YES;
    self.layer.borderWidth = 1;
    self.layer.borderColor = NSColor.dy_borderColor.CGColor;
}

@end
