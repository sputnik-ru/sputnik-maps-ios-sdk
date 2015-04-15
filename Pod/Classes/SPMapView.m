//
//  SPMapView.m
//  SPMapController
//
//  Created by Denis Zamataev on 4/25/14.
//  Copyright (c) 2014 Denis Zamataev. All rights reserved.
//

#import "SPMapView.h"

@implementation SPMapView

+ (instancetype)mapViewWithSputnikTileSourceAndDefaultConfigurationAndFrame:(CGRect)frameRect
{
    SPSputnikTileSource *spts = [[SPSputnikTileSource alloc] init];
    SPMapView *mv = [[SPMapView alloc] initWithFrame:frameRect andTilesource:spts];
    mv.hideAttribution = YES;
    mv.zoom = kSPMapViewDefaultZoomLevel;
    mv.centerCoordinate = kSPMapViewDefaultCoordinatesRussia;
    mv.showsUserLocation = YES;
    return mv;
}
- (void)setShowLogoBug:(BOOL)showLogoBug
{
    // no logo bugs here
}

@end
