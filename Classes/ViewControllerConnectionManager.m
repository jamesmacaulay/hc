//
//  ViewControllerConnectionManager.m
//  hc
//
//  Created by James MacAulay on 13/07/09.
//  Copyright 2009 James MacAulay. All rights reserved.
//

#import "ViewControllerConnectionManager.h"


@implementation ViewControllerConnectionManager

@synthesize delegate;

-(ViewControllerConnectionManager *) initWithDelegate:(UIViewController *)aDelegate {
    [super init];
    self.delegate = aDelegate;
    return self;
}

-(void) run:(SEL)action then:(SEL)afterAction {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    [[ConnectionManager sharedInstance] runJob:action 
                                      onTarget:self.delegate];
    [[ConnectionManager sharedInstance] runJob:@selector(didRun) 
                                      onTarget:self];
    [[ConnectionManager sharedInstance] runJob:afterAction 
                                      onTarget:self.delegate];
}

-(void) handleError:(NSError **)error {
    if (error) {
        NSLog([*error description]);
    }
}


-(void) didRun {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}

@end
