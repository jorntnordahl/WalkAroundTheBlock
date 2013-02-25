//
//  MapVCViewController.m
//  Walk Around The Block
//
//  Created by Jorn Nordahl on 2/24/13.
//  Copyright (c) 2013 Jorn Nordahl. All rights reserved.
//

#import "MapVC.h"

@interface MapVC ()
@property (weak, nonatomic) IBOutlet MKMapView *map;
@property (weak, nonatomic) IBOutlet UILabel *lasseLbl;

@end

@implementation MapVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void) viewWillAppear:(BOOL)animated
{
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 39.281516;
    zoomLocation.longitude= -76.580806;
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
    MKCoordinateRegion adjustedRegion = [self.map regionThatFits:viewRegion];
    [self.map setRegion:adjustedRegion animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextStopClicked:(id)sender {
    self.lasseLbl.text = @"Trixie";
}

@end
