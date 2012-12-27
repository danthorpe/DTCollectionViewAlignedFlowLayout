//
//  DTCollectionViewAlignedFlowLayout.m
//  DTCollectionViewAlignedFlowLayout
//
//  Created by Daniel Thorpe on 27/12/2012.
//  Copyright (c) 2012 Blinding Skies. All rights reserved.
//

#import "DTCollectionViewAlignedFlowLayout.h"

@implementation DTCollectionViewAlignedFlowLayout

#pragma mark - Constructors

- (id)init {
    return [self initWithAlignment:DTFlowAlignmentJustified];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        self.alignment = DTFlowAlignmentJustified;
    }
    return self;
}

- (id)initWithAlignment:(DTCollectionViewFlowLayoutAlignment)alignment {
    
    // Check for supported alignments
    if ( ( alignment == DTFlowAlignmentCenter ) || ( alignment == DTFlowAlignmentRight ) ) {
        [NSException raise:NSInternalInconsistencyException format:@"Alignment: %d is not currently supported", alignment];
    }
    
    self = [super init];
    if (self) {
        self.alignment = alignment;
    }
    return self;
}

#pragma mark - UICollectionViewFlowLayout

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect {
    
    // Call the super
    NSArray *result = [super layoutAttributesForElementsInRect:rect];
    
    NSUInteger i, numberOfElements = result.count;
    
    CGFloat leftEdge, width = self.collectionViewContentSize.width;
    
    // Modify the layout
    for ( i = 1; i < numberOfElements; i++ ) {

        UICollectionViewLayoutAttributes *current = result[i];
        
        // Only modify cells
        if ( current.representedElementCategory == UICollectionElementCategoryCell ) {
            
            // Get the previous
            UICollectionViewLayoutAttributes *previous = result[i-1];
            
            // Calculate the left edge
            leftEdge = (previous.center.x + (0.5f * previous.size.width)) + self.minimumInteritemSpacing;
            
            // Check the remaining space
            if ( ( width - leftEdge ) > current.size.width ) {
                
                CGPoint center = current.center;
                center.x = (previous.center.x + (0.5f * previous.size.width)) + self.minimumInteritemSpacing + (0.5f * current.size.width);
                current.center = center;
            }
        }
    }
    
    return result;
}

@end
