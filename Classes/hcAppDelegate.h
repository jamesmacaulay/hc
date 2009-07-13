//
//  hcAppDelegate.h
//  hc
//
//  Created by James MacAulay on 12/07/09.
//  Copyright James MacAulay 2009. All rights reserved.
//

@interface hcAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

