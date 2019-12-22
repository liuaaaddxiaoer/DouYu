//
//  DYHoverInterface.h
//  DouYu
//
//  Created by 刘小二 on 2019/12/21.
//  Copyright © 2019 xiao2. All rights reserved.
//

#ifndef DYHoverInterface_h
#define DYHoverInterface_h

#define DYHoverInterface typedef void(^DYMouseEntered)(NSEvent *event);\
typedef void(^DYMouseExited)(NSEvent *event);\
@property(nonatomic, copy) DYMouseEntered mouseEntered;\
@property(nonatomic, copy) DYMouseEntered mouseExited;\
/// 鼠标退出
/// 鼠标进入

#define DYHoverImp(cursor)  - (instancetype)initWithCoder:(NSCoder *)coder \
{\
    self = [super initWithCoder:coder];\
    if (self) {\
        NSTrackingAreaOptions options = NSTrackingMouseEnteredAndExited | NSTrackingActiveInKeyWindow;\
        NSTrackingArea *area = [[NSTrackingArea alloc] initWithRect:self.bounds options:options owner:self userInfo:nil];\
        [self addTrackingArea:area];\
    }\
    return self;\
}\
- (void)cursorUpdate:(NSEvent *)event {\
    NSLog(@"%s", __func__);\
}\
- (void)mouseEntered:(NSEvent *)event {\
    [cursor set];\
    NSLog(@"%s", __func__);\
    if (self.mouseEntered) {\
        self.mouseEntered(event);\
    }\
}\
- (void)mouseExited:(NSEvent *)event {\
    [[NSCursor arrowCursor] set];\
    NSLog(@"%s", __func__);\
    if (self.mouseExited) {\
        self.mouseExited(event);\
    }\
}\

#endif /* DYHoverInterface_h */
