//
//  DYLoginViewController.m
//  DouYu
//
//  Created by 刘小二 on 2019/12/21.
//  Copyright © 2019 刘小二. All rights reserved.
//

#import "DYLoginViewController.h"
#import "DYLoginPhoneViewController.h"

@interface DYLoginViewController ()

/// 手机号登陆
@property(nonatomic, strong) DYLoginPhoneViewController *phoneVc;


@end

@implementation DYLoginViewController

- (void)viewWillAppear {
    [super viewWillAppear];
    
    NSWindow *window = self.view.window;
    window.movableByWindowBackground = YES;
    window.styleMask = NSWindowStyleMaskBorderless;
    
}

- (void)viewDidAppear {
    [super viewDidAppear];
}

- (void)viewWillLayout {
    [super viewWillLayout];
}

- (void)viewDidLayout {
    [super viewDidLayout];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    self.view.wantsLayer = YES;
    self.view.layer.backgroundColor = [NSColor whiteColor].CGColor;
    
    // 添加子控制器
    [self addChildViewControllers];
}


#pragma mark - 初始化子控制器
- (void)addChildViewControllers {
    
    // 手机号
    DYLoginPhoneViewController *phoneVc = ({
        DYLoginPhoneViewController *vc = [DYLoginPhoneViewController new];
        vc.view.frame = self.view.bounds;
        [self.view addSubview:vc.view];
        vc;
    });
    
    [self addChildViewController:phoneVc];

}

- (void)dealloc {
    NSLog(@"%s dealloc", __func__);
}

- (void)mouseDown:(NSEvent *)event {
    
//    [self.presentingViewController dismissViewController:self];
}

- (IBAction)loginTipName:(NSTextField *)sender {
}
@end
