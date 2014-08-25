//
//  FirstViewController.m
//  parkMeTest1
//
//  Created by Joel on 23/10/13.
//  Copyright (c) 2013 Joel. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "SWRevealViewController.h"
#import "CustomInfoWindow.h"
#import <MapBox/MapBox.h>




@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;


@end



@implementation FirstViewController {
    
//    GMSMapView *mapView_;
//}
//
//- (void)mapView:(GMSMapView *)mapView didTapInfoWindowOfMarker:(GMSMarker *)marker {
//    [self performSegueWithIdentifier:@"MySegue" sender:[marker snippet ]];
    
    //This code was coming up with an error about segue not declared, identifier not recognised, etc. Solved it by declaring Navigation Controller in storyboard as Initial View Controller.
}


- (void)viewDidLoad
{
    
//    [self.view addSubview:[[MBXMapView alloc] initWithFrame:self.view.bounds mapID:@"jkd359.g62a4g87"]];
    
    self.navigationController.navigationBar.translucent = NO;
    
    // Change button color
    //    _sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    self.title = @"OsmoPark";
    
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)])
        self.edgesForExtendedLayout = UIRectEdgeNone;
    
    [super viewDidLoad];
    [super viewDidLoad];
    RMMapBoxSource *tileSource = [[RMMapBoxSource alloc] initWithMapID:@"examples.map-z2effxa8"];
    RMMapView *mapView = [[RMMapView alloc] initWithFrame:self.view.bounds andTilesource:tileSource];
    [self.view addSubview:mapView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (BOOL)prefersStatusBarHidden {
//    return YES;
//} This is to hide time, wifi, reception, etc. Also must add & change info.plist variable view controller one to YES.

@end
