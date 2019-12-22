//
//  NSTextField+DYInspectable.m
//  DouYu
//
//  Created by 刘小二 on 2019/12/22.
//  Copyright © 2019 xiao2. All rights reserved.
//

#import "NSTextField+DYInspectable.h"

#import <AppKit/AppKit.h>


@implementation NSTextField (DYInspectable)

@dynamic
isMainColor;

- (void)setIsMainColor:(BOOL)isMainColor {
    if (isMainColor) {
        self.textColor = NSColor.dy_mainColor;
        
    }
}


@end
