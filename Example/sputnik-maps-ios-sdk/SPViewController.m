//
//  SPViewController.m
//  sputnik-maps-ios-sdk
//
//  Created by Denis Zamataev on 04/15/2015.
//  Copyright (c) 2014 Denis Zamataev. All rights reserved.
//

#import "SPViewController.h"

@interface SPViewController () <RMMapViewDelegate>
@property (nonatomic, strong) SPMapView *mapView;
@end

@implementation SPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[RMConfiguration sharedInstance] setAccessToken:@"no_token_needed"];
	// Do any additional setup after loading the view, typically from a nib.
    SPSputnikTileSource *spts = [[SPSputnikTileSource alloc] init];
    self.mapView = [[SPMapView alloc] initWithFrame:[[UIScreen mainScreen] bounds] andTilesource:spts
                                   centerCoordinate:CLLocationCoordinate2DMake(60.000, 100.000)
                                          zoomLevel:kSputnikDefaultMinTileZoom
                                       maxZoomLevel:kSputnikDefaultMaxTileZoom
                                       minZoomLevel:kSputnikDefaultMinTileZoom
                                    backgroundImage:nil];
    self.mapView.delegate = self;
    self.mapView.hideAttribution = YES;
    self.mapView.showsUserLocation = YES;
    self.mapView.adjustTilesForRetinaDisplay = YES;
    
    [self.mapView setZoom:kSputnikDefaultMinTileZoom+1 animated:NO];
    
    [self.view setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.mapView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:self.mapView];
    
    NSDictionary *viewsDictionary = @{@"map":self.mapView};
    //Create the constraints using the visual language format
    NSMutableArray *constraintsArray = [NSMutableArray new];
    [constraintsArray addObjectsFromArray:[NSLayoutConstraint
                                           constraintsWithVisualFormat:@"H:|-0-[map]-0-|"
                                           options:0 metrics:nil
                                           views:viewsDictionary]];
    [constraintsArray addObjectsFromArray:[NSLayoutConstraint
                                           constraintsWithVisualFormat:@"V:|-0-[map]-0-|"
                                           options:0 metrics:nil
                                           views:viewsDictionary]];
    [self.view addConstraints:constraintsArray];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - RMMapViewDelegate

//- (RMMapLayer *)mapView:(RMMapView *)mapView layerForAnnotation:(RMAnnotation *)annotation
//{
//
//}

- (void)tapOnAnnotation:(RMAnnotation *)annotation onMap:(RMMapView *)onMap
{
}

- (void)mapView:(RMMapView *)mapView didSelectAnnotation:(RMAnnotation *)annotation
{

}

- (void)mapView:(RMMapView *)mapView didDeselectAnnotation:(RMAnnotation *)annotation
{

}

- (void)mapView:(RMMapView *)mapView didUpdateUserLocation:(RMUserLocation *)userLocation
{

}

- (void)mapViewRegionDidChange:(RMMapView *)mapView
{
    
}

- (void)beforeMapMove:(RMMapView *)mapArg byUser:(BOOL)wasUserAction
{

}

- (void)afterMapMove:(RMMapView *)mapArg byUser:(BOOL)wasUserAction
{

    
}

@end
