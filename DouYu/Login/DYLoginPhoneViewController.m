//
//  DYLoginPhoneViewController.m
//  DouYu
//
//  Created by 刘小二 on 2019/12/21.
//  Copyright © 2019 刘小二. All rights reserved.
//

#import "DYLoginPhoneViewController.h"
#import "DYHoverView.h"
#import "DYHoverTextField.h"


@interface DYLoginPhoneViewController ()

/// 登陆斗鱼标题
@property (weak) IBOutlet NSTextField *loginTipName;

/// 切换登陆模式按钮
@property (weak) IBOutlet DYHoverView *toggleLoginIconBtn;

///  关闭按钮
@property (weak) IBOutlet DYHoverView *closeIconBtn;



@end

@implementation DYLoginPhoneViewController

- (void)viewWillAppear {
    [super viewWillAppear];
    
    // 设置图标样式
    [self initializeIconsStyles];
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

#pragma mark - 初始化

// 初始化一些icon样式事件
- (void)initializeIconsStyles {
    // 切换登陆模式按钮样式
    [self initializeLoginIconStyle];
    
    // 关闭按钮
    [self initializeCloseIconStyle];
    
}

/// 关闭按钮
- (void)initializeCloseIconStyle {
    
   // 图标
   self.closeIconBtn.wantsLayer = YES;
   self.closeIconBtn.layer.backgroundColor = [NSColor cyanColor].CGColor;
   self.closeIconBtn.layer.contents = [NSImage imageNamed:@"login_third_sprite"];
   self.closeIconBtn.layer.contentsGravity = kCAGravityResizeAspectFill;
   self.closeIconBtn.layer.contentsRect = CGRectMake(0.55, 0, 1, 1);
}

/// 切换登陆模式按钮样式
- (void)initializeLoginIconStyle {
    
    // 图标
    self.toggleLoginIconBtn.wantsLayer = YES;
    self.toggleLoginIconBtn.layer.backgroundColor = [NSColor cyanColor].CGColor;
    self.toggleLoginIconBtn.layer.contents = [NSImage imageNamed:@"login_spirte"];
    self.toggleLoginIconBtn.layer.contentsGravity = kCAGravityResizeAspectFill;
    self.toggleLoginIconBtn.layer.contentsRect = CGRectMake(0.15, 0, 1, 1);
}


- (void)mouseDown:(NSEvent *)event {
    [self.parentViewController.presentingViewController dismissViewController:self.parentViewController];
}
@end
