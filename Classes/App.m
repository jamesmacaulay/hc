//
//  App.m
//  hc
//
//  Created by James MacAulay on 12/07/09.
//  Copyright 2009 James MacAulay. All rights reserved.
//

#import "App.h"


@implementation App
@synthesize name, domainName, dynos, repoSize, slugSize, owner, createdAt;


- (NSString *) domainName {
    if (domainName && domainName.length > 0) {
        return domainName;
    } else {
        return [NSString stringWithFormat:@"%@.heroku.com",name];
    }
}

@end
