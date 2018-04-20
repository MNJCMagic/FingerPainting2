//
//  PaintView.m
//  FingerPainting2
//
//  Created by Mike Cameron on 2018-04-20.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "PaintView.h"
#import "Line.h"


@interface PaintView()
@property (nonatomic, strong) NSMutableArray<Line*>* lines;

@end


@implementation PaintView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        _lines = [NSMutableArray new];

    }
    return self;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = touches.anyObject;
    CGPoint first = [touch previousLocationInView:self];
    LineSegment *seg = [[LineSegment alloc] initWithFirstPoint:first andSecondPoint:first];
    UIColor *curColor = self.color;
    Line *newLine = [[Line alloc] initWithColor:curColor];

    [newLine.line addObject:seg];

    [self.lines addObject:newLine];

    NSLog(@"began");
    [self setNeedsDisplay];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = touches.anyObject;
    CGPoint first = [touch previousLocationInView:self];
    CGPoint second = [touch locationInView:self];
    LineSegment *seg = [[LineSegment alloc] initWithFirstPoint:first andSecondPoint:second];
    [self.lines.lastObject.line addObject:seg];
    
    NSLog(@"continuing");
    [self setNeedsDisplay];
}

-(void)drawRect:(CGRect)rect {
    NSLog(@"drawing");
        for (Line *line in self.lines) {
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth = 4.0;
    path.lineCapStyle = kCGLineCapRound;
    [line.color setStroke];

        
        for (LineSegment *seg in line.line) {

            if (CGPointEqualToPoint(seg.firstPoint, seg.secondPoint)) {
                [path moveToPoint:seg.firstPoint];
                continue;
            }
            [path addLineToPoint:seg.firstPoint];
            [path addLineToPoint:seg.secondPoint];

    }
//    UIColor *red = [UIColor redColor];
//    [red setStroke];
//    for (LineSegment *seg in self.line) {
//        if (CGPointEqualToPoint(seg.firstPoint, seg.secondPoint)) {
//            [path moveToPoint:seg.firstPoint];
//            continue;
//        }
//        [path addLineToPoint:seg.firstPoint];
//        [path addLineToPoint:seg.secondPoint];
//    }
    [path stroke];
}

}





@end
