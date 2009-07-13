//
//  RootViewController.h
//  hc
//
//  Created by James MacAulay on 12/07/09.
//  Copyright James MacAulay 2009. All rights reserved.
//

#import "ViewControllerConnectionManager.h"

@interface RootViewController : UITableViewController {
    NSArray *apps;
    ViewControllerConnectionManager *connection;
}
@property (nonatomic, retain) NSArray *apps;
@property (nonatomic, retain) ViewControllerConnectionManager *connection;

- (void) loadApps;
- (void) appsDidLoad;

@end
