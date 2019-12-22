//
//  NSColor+DYColor.h
//  DouYu
//
//  Created by 刘小二 on 2019/12/22.
//  Copyright © 2019 xiao2. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN


@interface NSColor (DYColor)

/// 主色调
@property(nonatomic, strong, class, readonly) NSColor *dy_mainColor;

/// 边框颜色
@property(nonatomic, strong, class, readonly) NSColor *dy_borderColor;

/// hexColor
+ (NSColor *)dy_colorWithHexString:(NSString *)color
                          alpha:(CGFloat)alpha;
+ (NSColor *)dy_colorWithHexString:(NSString *)color;

@end

NS_ASSUME_NONNULL_END
