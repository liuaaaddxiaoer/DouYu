//
//  AppDelegate.m
//  DouYu
//
//  Created by 刘小二 on 2019/12/19.
//  Copyright © 2019 刘小二. All rights reserved.
//

#import "AppDelegate.h"
#import <dlfcn.h>
@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
//    [[NSBundle bundleWithPath:@"/Applications/InjectionIII.app/Contents/Resources/macOSInjection.bundle"] load];
    void *p = dlopen("/Applications/InjectionIII.app/Contents/Resources/macOSInjection.bundle/Contents/MacOS/macOSInjection", RTLD_LAZY);
    
    printf("%p", p);
    
    printf("%s", dlerror());
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
