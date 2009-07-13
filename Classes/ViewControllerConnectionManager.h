//
//  ViewControllerConnectionManager.h
//  hc
//
//  Created by James MacAulay on 13/07/09.
//  Copyright 2009 James MacAulay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConnectionManager.h"


@interface ViewControllerConnectionManager : NSObject {
    UIViewController *delegate;
}
@property (nonatomic, retain) UIViewController *delegate;

-(ViewControllerConnectionManager *) initWithDelegate:(UIViewController *)delegate;
-(void) run:(SEL)action then:(SEL)afterAction;
-(void) didRun;
-(void) handleError:(NSError **)error;

@end
