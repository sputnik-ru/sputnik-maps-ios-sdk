//
//  SPSputnikTileSource.m
//  SPMapController
//
//  Created by Denis Zamataev on 4/25/14.
//  Copyright (c) 2014 OOO "Спутник". All rights reserved.
//
// Пример: http://tiles.maps.sputnik.ru/13/4953/2561.png?tag=retina

#import "SPSputnikTileSource.h"

@implementation SPSputnikTileSource {
    NSString *_parameters;
}


- (id)init
{
    self = [super init];
    if (self) {
        self.minZoom = kSputnikDefaultMinTileZoom;
        self.maxZoom = kSputnikDefaultMaxTileZoom;
        NSMutableString *mParameters = @"".mutableCopy;
        if ([self isRetina]) {
            [mParameters appendString:@"?tag=retina"];
        }
        _parameters = [NSString stringWithString:mParameters];
    }
    return self;
}

- (BOOL)isRetina {
    return ([UIScreen mainScreen].scale >= 2.0) ? 1 : 0;
}

- (NSURL *)URLForTile:(RMTile)tile
{
    //	NSAssert4(((tile.zoom >= self.minZoom) && (tile.zoom <= self.maxZoom)),
    //			  @"%@ tried to retrieve tile with zoomLevel %d, outside source's defined range %f to %f",
    //			  self, tile.zoom, self.minZoom, self.maxZoom);
    short zoom = tile.zoom;
    if (tile.zoom < self.minZoom) zoom = self.minZoom;
    if (tile.zoom > self.maxZoom) zoom = self.maxZoom;
    
    NSString *urlString = [NSString stringWithFormat:@"http://tiles.maps.sputnik.ru/%d/%d/%d.png%@", tile.zoom, tile.x, tile.y, _parameters];
    NSURL *result = [NSURL URLWithString:urlString];
    //    NSLog(@"%@",urlString);
    return result;
}

-(NSString*) uniqueTilecacheKey
{
	return @"SputnikMaps";
}

-(NSString *)shortName
{
	return @"SputnikMaps";
}

-(NSString *)longDescription
{
	return @"http://legal.sputnik.ru/";
}

-(NSString *)shortAttribution
{
	return @"© Спутник";
}

-(NSString *)longAttribution
{
	return @"http://legal.sputnik.ru/";
}

@end
