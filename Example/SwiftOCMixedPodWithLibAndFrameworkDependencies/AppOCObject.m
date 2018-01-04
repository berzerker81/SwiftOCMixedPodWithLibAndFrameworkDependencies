//
//  AppOCObject.m
//  SwiftOCMixedPodWithLibAndFrameworkDependencies_Example
//
//  Created by jaybo on 4/1/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

#import "AppOCObject.h"
@import Fabric;
@import Crashlytics;
#import "MiPushSDK.h"
@import SwiftOCMixedPodWithLibAndFrameworkDependencies;

@implementation AppOCObject

- (void)whatsUp {
    NSLog(@"%s %d", __PRETTY_FUNCTION__, __LINE__);

    // frameworks
    NSLog(@"%s %d %@", __PRETTY_FUNCTION__, __LINE__, [Fabric sharedSDK]);
    NSLog(@"%s %d %@", __PRETTY_FUNCTION__, __LINE__, [Crashlytics sharedInstance]);

    // library
    NSLog(@"%s %d %@", __PRETTY_FUNCTION__, __LINE__, [MiPushSDK class]);

    // pod files
    // TODO:
    // NSLog(@"%s %d %@", __PRETTY_FUNCTION__, __LINE__, [SwiftObject new]);
    NSLog(@"%s %d %@", __PRETTY_FUNCTION__, __LINE__, [OCObject new]);
}

@end
