//
//  OCObject.m
//  Pods-SwiftOCMixedPodWithLibAndFrameworkDependencies_Example
//
//  Created by jaybo on 4/1/2018.
//

#import "OCObject.h"
@import Fabric;
@import Crashlytics;
#import "MiPushSDK.h"
#import "SwiftOCMixedPodWithLibAndFrameworkDependencies-Swift.h"

@implementation OCObject

- (void)hi {
    NSLog(@"%s %d", __PRETTY_FUNCTION__, __LINE__);

    // frameworks
    NSLog(@"%s %d %@", __PRETTY_FUNCTION__, __LINE__, [Fabric sharedSDK]);
    NSLog(@"%s %d %@", __PRETTY_FUNCTION__, __LINE__, [Crashlytics sharedInstance]);

    // library
    NSLog(@"%s %d %@", __PRETTY_FUNCTION__, __LINE__, [MiPushSDK class]);

    // Swift class in this pod
    NSLog(@"%s %d %@", __PRETTY_FUNCTION__, __LINE__, [SwiftObject new]);
}

@end
