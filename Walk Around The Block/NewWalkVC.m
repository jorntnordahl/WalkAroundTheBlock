//
//  NewWalkVC.m
//  Walk Around The Block
//
//  Created by Jorn Nordahl on 2/25/13.
//  Copyright (c) 2013 Jorn Nordahl. All rights reserved.
//

#import "NewWalkVC.h"

@interface NewWalkVC ()

@end

@implementation NewWalkVC


/*
 This method is called when the user clicks the save button inside the new walk ui.
 */
- (IBAction)saveWalkClicked:(UIBarButtonItem *)sender
{
    // TODO: do the work to save the walk:
    
    // dismiss the current view controller:
    [self.navigationController popViewControllerAnimated:YES];
    
    
    
}


@end
