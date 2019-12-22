//
//  DYLoginCornerView.m
//  DouYu
//
//  Created by 刘小二 on 2019/12/22.
//  Copyright © 2019 xiao2. All rights reserved.
//

#import "DYLoginCornerView.h"

@implementation DYLoginCornerView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    [[NSGraphicsContext currentContext] saveGraphicsState];
    NSBezierPath *path = [NSBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, 0)];
    [path relativeLineToPoint:CGPointMake(dirtyRect.size.width - 10, 0)];
    [path appendBezierPathWithArcWithCenter:CGPointMake(dirtyRect.size.width - 20, 10) radius:20 startAngle:0 endAngle:M_PI  clockwise:NO];
    [path closePath];
    [path setLineWidth:1];
    [[NSColor cyanColor] setStroke];
    [path stroke];
    
    [[NSGraphicsContext currentContext] restoreGraphicsState];
    
    [[NSColor brownColor] setFill];

    NSRectFill(dirtyRect);
}

@end
