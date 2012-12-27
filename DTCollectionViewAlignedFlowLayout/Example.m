//
//  DTViewController.m
//  DTCollectionViewAlignedFlowLayout
//
//  Created by Daniel Thorpe on 27/12/2012.
//  Copyright (c) 2012 Blinding Skies. All rights reserved.
//

#import "Example.h"
#import "DTCollectionViewAlignedFlowLayout.h"
#import "ExampleTestCell.h"
@interface Example ( /* Private */ )

@end

@implementation Example

- (id)init {
    DTCollectionViewAlignedFlowLayout *layout = [[DTCollectionViewAlignedFlowLayout alloc] initWithAlignment:DTFlowAlignmentLeft];
    layout.minimumLineSpacing = 8.f;
    layout.minimumInteritemSpacing = 8.f;
    return [super initWithCollectionViewLayout:layout];
}

#pragma mark - UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.collectionView registerClass:[ExampleTestCell class] forCellWithReuseIdentifier:@"example"];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 30 + (NSInteger)arc4random_uniform(15);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    return [collectionView dequeueReusableCellWithReuseIdentifier:@"example" forIndexPath:indexPath];
}

#pragma mark - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(PSUICollectionView *)collectionView layout:(PSUICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(40 + arc4random_uniform(120), 40);
}

@end
