//
//  FirstViewController.h
//  parkMeTest1
//
//  Created by Joel on 23/10/13.
//  Copyright (c) 2013 Joel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBXMapKit.h"
#import <MapBox/MapBox.h>

@interface FirstViewController : UIViewController <MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet MBXMapView *mapView;

@end
