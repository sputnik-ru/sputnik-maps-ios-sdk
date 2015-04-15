//
//  SPMapView.h
//  SPMapController
//
//  Created by Denis Zamataev on 4/25/14.
//  Copyright (c) 2014 Denis Zamataev. All rights reserved.
//

#import "RMMapView.h"
#import "SPLocationAnnotation.h"
#import "SPSputnikTileSource.h"

#define kSPMapViewDefaultCoordinatesMoscow CLLocationCoordinate2DMake(55.755663, 37.618328)
#define kSPMapViewDefaultCoordinatesRussia CLLocationCoordinate2DMake(60.000, 100.000)
#define kSPMapViewDefaultZoomLevel 4

@interface SPMapView : RMMapView

+ (instancetype)mapViewWithSputnikTileSourceAndDefaultConfigurationAndFrame:(CGRect)frameRect;
@end
