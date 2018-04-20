//
//  Line.h
//  FingerPainting2
//
//  Created by Mike Cameron on 2018-04-20.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

# import "LineSegment.h"



@interface Line : NSObject

@property (nonatomic, strong) NSMutableArray<LineSegment*>* line;
@property (nonatomic, strong) UIColor* color;

-(instancetype)initWithColor:(UIColor*)color;
@end
