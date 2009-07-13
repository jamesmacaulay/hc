//
//  App.h
//  hc
//
//  Created by James MacAulay on 12/07/09.
//  Copyright 2009 James MacAulay. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface App : NSObject {
    NSString *name;
    NSString *domainName;
    NSNumber *dynos;
    NSNumber *repoSize;
    NSNumber *slugSize;
    NSString *owner;
    NSDate *createdAt;
}

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *domainName;
@property (nonatomic, retain) NSNumber *dynos;
@property (nonatomic, retain) NSNumber *repoSize;
@property (nonatomic, retain) NSNumber *slugSize;
@property (nonatomic, copy) NSString *owner;
@property (nonatomic, retain) NSDate *createdAt;

@end
