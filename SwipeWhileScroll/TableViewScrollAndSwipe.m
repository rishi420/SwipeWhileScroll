//
//  TableViewScrollAndSwipe.m
//  SwipeWhileScroll
//
//  Created by Warif Akhand Rishi on 1/19/14.
//  Copyright (c) 2014 Warif Akhand Rishi. All rights reserved.
//

#import "TableViewScrollAndSwipe.h"

@implementation TableViewScrollAndSwipe

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (BOOL)gestureRecognizer:(UIPanGestureRecognizer *)gestureRecognizer
shouldRecognizeSimultaneouslyWithGestureRecognizer:(UISwipeGestureRecognizer *)otherGestureRecognizer
{
    return self.isDecelerating || self.contentOffset.y < 0 || self.contentOffset.y > MAX(0, self.contentSize.height - self.bounds.size.height);
}


@end
