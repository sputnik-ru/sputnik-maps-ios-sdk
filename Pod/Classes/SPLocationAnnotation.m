//
//  SPLocationAnnotation.m
//  SPMapController
//
//  Created by Denis Zamataev on 4/25/14.
//  Copyright (c) 2014 Denis Zamataev. All rights reserved.
//

#import "SPLocationAnnotation.h"

@implementation SPLocationAnnotation
- (id)initWithMapView:(RMMapView *)aMapView coordinate:(CLLocationCoordinate2D)aCoordinate andTitle:(NSString *)aTitle
{
    if ( ! (self = [super initWithMapView:aMapView coordinate:aCoordinate andTitle:aTitle]))
        return nil;
    
    self.annotationType = @"f";
    
    self.clusteringEnabled = NO;
    
    return self;
}
@end
