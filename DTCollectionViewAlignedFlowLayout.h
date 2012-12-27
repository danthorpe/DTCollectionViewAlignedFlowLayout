//
//  DTCollectionViewAlignedFlowLayout.h
//  DTCollectionViewAlignedFlowLayout
//
//  Created by Daniel Thorpe on 27/12/2012.
//  Copyright (c) 2012 Blinding Skies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSTCollectionView.h"

typedef NS_ENUM(NSUInteger, DTCollectionViewFlowLayoutAlignment) {
    DTFlowAlignmentLeft = 0,
    DTFlowAlignmentCenter,
    DTFlowAlignmentRight,
    DTFlowAlignmentJustified
};

@interface DTCollectionViewAlignedFlowLayout : PSUICollectionViewFlowLayout

@property (nonatomic) DTCollectionViewFlowLayoutAlignment alignment;

- (id)initWithAlignment:(DTCollectionViewFlowLayoutAlignment)alignment;

@end
