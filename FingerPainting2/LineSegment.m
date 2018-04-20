//
//  LineSegment.m
//  FingerPaint
//
//  Created by Mike Cameron on 2018-04-20.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "LineSegment.h"

@implementation LineSegment

-(instancetype)initWithFirstPoint:(CGPoint)first andSecondPoint:(CGPoint)second {
    self = [super init];
    if (self) {
        _firstPoint = first;
        _secondPoint = second;
    }
    return self;
}


@end
