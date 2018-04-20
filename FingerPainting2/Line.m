//
//  Line.m
//  FingerPainting2
//
//  Created by Mike Cameron on 2018-04-20.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "Line.h"

@interface Line()

@end

@implementation Line

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSMutableArray<LineSegment*>* line = [[NSMutableArray alloc] init];
        _line = line;
    }
    return self;
}

-(instancetype)initWithColor:(UIColor*)color
{
    self = [super init];
    if (self) {
        NSMutableArray<LineSegment*>* line = [[NSMutableArray alloc] init];
        _line = line;
        _color = color;
    }
    return self;
}
@end
