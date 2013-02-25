//
//  Walk.h
//  Walk Around The Block
//
//  Created by Jorn Nordahl on 2/24/13.
//  Copyright (c) 2013 Jorn Nordahl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StartLocation.h"

@interface Walk : NSObject

@property (nonatomic, strong) StartLocation *startLocation;
@property (nonatomic, strong) NSArray *stops; // of Stops

@end
