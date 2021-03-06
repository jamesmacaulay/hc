//
//  hcAppDelegate.m
//  hc
//
//  Created by James MacAulay on 12/07/09.
//  Copyright James MacAulay 2009. All rights reserved.
//

#import "hcAppDelegate.h"
#import "RootViewController.h"
#import "ObjectiveResource.h"


@implementation hcAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    [ObjectiveResourceConfig setSite:@"https://heroku.com/"];
    [ObjectiveResourceConfig setUser:@"james@jadedpixel.com"];
    [ObjectiveResourceConfig setProtocolExtension:@""];
    [ObjectiveResourceConfig setPassword:@"secrettt"];
    
    // Override point for customization after app launch    
	
	[window addSubview:[navigationController view]];
    [window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

