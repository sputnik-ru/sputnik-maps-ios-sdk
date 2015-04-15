//
//  SPViewController.m
//  SPMapController
//
//  Created by Denis Zamataev on 4/24/14.
//  Copyright (c) 2014 OOO "Спутник". All rights reserved.
//

#import "SPMapController.h"

@interface SPMapController ()

@end

@implementation SPMapController

- (void)viewDidLoad
{
    [super viewDidLoad];
    if (!self.mapView) {
        self.mapView = [SPMapView mapViewWithSputnikTileSourceAndDefaultConfigurationAndFrame:self.view.bounds];
        self.mapView.delegate = self;
        [self.view addSubview:self.mapView];
    }
    
//    RMPointAnnotation *pointAnnotation = [[RMPointAnnotation alloc] initWithMapView:self.mapView
//                                                                         coordinate:self.mapView.centerCoordinate
//                                                                           andTitle:@"Markerr"];
//    [self.mapView addAnnotation:pointAnnotation];
    
    RMAnnotation *annotation = [[RMAnnotation alloc] initWithMapView:self.mapView
                                                          coordinate:self.mapView.centerCoordinate
                                                            andTitle:@""];
    
    [self.mapView addAnnotation:annotation];
}

- (RMMapLayer *)mapView:(RMMapView *)mapView layerForAnnotation:(RMAnnotation *)annotation
{
    if (annotation.isUserLocationAnnotation)
        return nil;
    
    RMMarker *marker = [[RMMarker alloc] initWithMapboxMarkerImage:@"rail" tintColor:[UIColor magentaColor]];
    marker.canShowCallout = YES;
//    UIControl *control = [[UIControl alloc] initWithFrame:CGRectMake(0, 0, 20, 100)];
//    control.backgroundColor = [UIColor redColor];
//    UIView *container = [[UIView alloc] initWithFrame:CGRectMake(0, 0, control.bounds.size.width, control.bounds.size.height)];
//    [control addSubview:container];
//    UIButton *b =  [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
//    [container addSubview:b];
//    marker.leftCalloutAccessoryView = control;
//    [b addTarget:self action:@selector(adf:) forControlEvents:UIControlEventTouchUpInside];
//    
//    UIControl *control1 = [[UIControl alloc] initWithFrame:CGRectMake(0, 0, 20, 100)];
//    control1.backgroundColor = [UIColor greenColor];
//    UIView *container1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, control.bounds.size.width, control.bounds.size.height)];
//    [control1 addSubview:container];
//    UIButton *b1 =  [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
//    [container1 addSubview:b1];
//    marker.rightCalloutAccessoryView = control1;
//    [b1 addTarget:self action:@selector(adf:) forControlEvents:UIControlEventTouchUpInside];
//
    
    UIControl *control = [[UIControl alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    control.backgroundColor = [UIColor redColor];
    UIView *container = [[UIView alloc] initWithFrame:CGRectMake(0, 0, control.bounds.size.width, control.bounds.size.height)];
    [control addSubview:container];
    UIButton *b =  [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    [container addSubview:b];
    marker.calloutContentView = control;
    [b addTarget:self action:@selector(adf:) forControlEvents:UIControlEventTouchUpInside];
    
    return marker;
}

- (void)adf:(id)sender
{
    NSLog(@"my call");
    ((UIButton*)sender).superview.frame = CGRectMake(-5, 0, 200, 100);
}

- (void)tapOnCalloutAccessoryControl:(UIControl *)control forAnnotation:(RMAnnotation *)annotation onMap:(RMMapView *)map
{
    NSLog(@"You tapped the callout butt on!");
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*   @param mapView The map view that requested the annotation layer.
*   @param annotation The object representing the annotation that is about to be displayed. In addition to your custom annotations, this object could be an RMUserLocation object representing the user’s current location.
*   @return The annotation layer to display for the specified annotation or `nil` if you do not want to display a layer. */
//- (RMMapLayer *)mapView:(RMMapView *)mapView layerForAnnotation:(RMAnnotation *)annotation
//{
//    if ([annotation isKindOfClass:[RMUserLocation class]]) {
//        return nil; //[[RMMarker alloc] initWithUIImage:[UIImage imageNamed:@"pin_1"]];
//    }
//    else if ([annotation isKindOfClass:[SPLocationAnnotation class]]) {
//        
//    }
//    
//    return [[RMMarker alloc] initWithUIImage:[UIImage imageNamed:@"pin_1"]];
//}

@end
