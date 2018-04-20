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
//@property (nonatomic, strong) NSMutableArray<LineSegment*>* line;
//@property (nonatomic, strong) NSMutableArray<LineSegment*>* passingLine;
@property (nonatomic, strong) NSMutableArray<NSMutableArray*>* lines;
@property (nonatomic, strong) UIColor* color;
@end


@implementation PaintView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        _line = [NSMutableArray new];
    }
    return self;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = touches.anyObject;
    CGPoint first = [touch previousLocationInView:self];
    LineSegment *seg = [[LineSegment alloc] initWithFirstPoint:first andSecondPoint:first];
    [self.line addObject:seg];
    Line *newLine = [Line new];
    newLine.color = self.color;
    [self.lines addObject:<#(nonnull NSMutableArray *)#>]
    [newLine.line addObject:seg];
    NSLog(@"began");
    [self setNeedsDisplay];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = touches.anyObject;
    CGPoint first = [touch previousLocationInView:self];
    CGPoint second = [touch locationInView:self];
    LineSegment *seg = [[LineSegment alloc] initWithFirstPoint:first andSecondPoint:second];
    [self.line addObject:seg];
    
    NSLog(@"continuing");
    [self setNeedsDisplay];
}

-(void)drawRect:(CGRect)rect {
    NSLog(@"drawing");
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth = 4.0;
    path.lineCapStyle = kCGLineCapRound;
    UIColor *red = [UIColor redColor];
    [red setStroke];
    for (LineSegment *seg in self.line) {
        if (CGPointEqualToPoint(seg.firstPoint, seg.secondPoint)) {
            [path moveToPoint:seg.firstPoint];
            continue;
        }
        [path addLineToPoint:seg.firstPoint];
        [path addLineToPoint:seg.secondPoint];
    }
    [path stroke];
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
