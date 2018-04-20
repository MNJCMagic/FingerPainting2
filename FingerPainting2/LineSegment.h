//
//  LineSegment.h
//  FingerPaint
//
//  Created by Mike Cameron on 2018-04-20.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

@import UIKit;


@interface LineSegment : NSObject
@property (nonatomic, readonly) CGPoint firstPoint;
@property (nonatomic, readonly) CGPoint secondPoint;
-(instancetype)initWithFirstPoint:(CGPoint)first andSecondPoint:(CGPoint)second;

@end
