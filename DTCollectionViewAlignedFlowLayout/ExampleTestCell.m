//
//  ExampleTestCell.m
//  DTCollectionViewAlignedFlowLayout
//
//  Created by Daniel Thorpe on 27/12/2012.
//  Copyright (c) 2012 Blinding Skies. All rights reserved.
//

#import "ExampleTestCell.h"

@implementation ExampleTestCell

- (void)drawRect:(CGRect)rect {
    CGRect bounds = self.bounds;
    
    UIColor *color = [UIColor colorWithRed: (((int)self) & 0xFF) / 255.0
                                     green: (((int)self >> 8) & 0xFF) / 255.0
                                      blue: (((int)self >> 16) & 0xFF) / 255.0
                                     alpha: 1.0];
    
    [color set];
    UIRectFill(bounds);
}

@end
