//
//  ViewController.m
//  DouYu
//
//  Created by 刘小二 on 2019/12/19.
//  Copyright © 2019 刘小二. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
#import "DYLoginViewController.h"
@interface ViewController() <NSViewControllerPresentationAnimator>

@property (weak) IBOutlet WKWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
}


- (void)mouseDown:(NSEvent *)event {
    
    DYLoginViewController *login = ({
        DYLoginViewController *login = [DYLoginViewController new];
        login;
    });
    
    [self presentViewControllerAsModalWindow:login];
    
}

#pragma mark - NSViewControllerPresentationAnimator
/* Called when the view controller is going to be presented. Implement presentation in this method when it is called.
*/
- (void)animatePresentationOfViewController:(NSViewController *)viewController fromViewController:(NSViewController *)fromViewController {
    
//    [fromViewController.view addSubview:viewController.view];
    
}

/* Called to dismiss a previously shown view controller.
*/
- (void)animateDismissalOfViewController:(NSViewController *)viewController fromViewController:(NSViewController *)fromViewController {
    
}
@end
