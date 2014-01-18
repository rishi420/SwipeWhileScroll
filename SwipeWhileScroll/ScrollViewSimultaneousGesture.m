//
//  ScrollViewSimultaneousGesture.m
//  SwipeWhileScroll
//
//  Created by Warif Akhand Rishi on 1/18/14.
//  Copyright (c) 2014 Warif Akhand Rishi. All rights reserved.
//

#import "ScrollViewSimultaneousGesture.h"


@implementation ScrollViewSimultaneousGesture

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    if ([gestureRecognizer isKindOfClass:[UIPanGestureRecognizer class]]) {
        CGPoint velocity = [(UIPanGestureRecognizer *)gestureRecognizer velocityInView:self];
        if (abs(velocity.y) * 2 < abs(velocity.x)) {
            return YES;
        }
    }
    return NO;
}

@end
