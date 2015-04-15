//
//  SPViewController.h
//  SPMapController
//
//  Created by Denis Zamataev on 4/24/14.
//  Copyright (c) 2014 OOO "Спутник". All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Mapbox.h>
#import "SPMapView.h"
#import "SPLocationAnnotation.h"
#import "SPSputnikTileSource.h"


@interface SPMapController : UIViewController <RMMapViewDelegate>
@property IBOutlet SPMapView *mapView;
@end
