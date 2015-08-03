//
//  ViewController.m
//  GoogleMapsTest
//
//  Created by Anurag Mishra on 8/2/15.
//  Copyright (c) 2015 mojers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:37.7833
                                                            longitude:-122.4167
                                                                 zoom:12];
    self.gmapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    self.gmapView.myLocationEnabled = YES;
    self.view = self.gmapView;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(37.7833, -122.4167);
    marker.title = @"San Francisco";
    marker.snippet = @"CA";
    marker.map = self.gmapView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
