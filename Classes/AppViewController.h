//
//  AppViewController.h
//  hc
//
//  Created by James MacAulay on 13/07/09.
//  Copyright 2009 James MacAulay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "App.h"


@interface AppViewController : UITableViewController {
    App *app;
}

@property (nonatomic, retain) App *app;

@end
