//
//  DYTextFieldCell.h
//  DouYu
//
//  Created by 刘小二 on 2019/12/22.
//  Copyright © 2019 xiao2. All rights reserved.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYTextFieldCell : NSTextFieldCell

/// 设置padding
@property(nonatomic, assign) NSEdgeInsets dy_padding;

@end

NS_ASSUME_NONNULL_END
