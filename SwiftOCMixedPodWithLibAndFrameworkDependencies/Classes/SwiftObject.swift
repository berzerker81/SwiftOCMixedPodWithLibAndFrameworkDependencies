//
//  SwiftObject.swift
//  Pods-SwiftOCMixedPodWithLibAndFrameworkDependencies_Example
//
//  Created by jaybo on 4/1/2018.
//

import Foundation
import Fabric
import Crashlytics


@objc public class SwiftObject: NSObject {

    @objc public func hi() {
        debugPrint("\(type(of: self)).\(#function) \(#line) ")

        // frameworks
        debugPrint("\(type(of: self)).\(#function) \(#line) ", Fabric.sharedSDK())
        debugPrint("\(type(of: self)).\(#function) \(#line) ", Crashlytics.sharedInstance())

        // library
        // TODO:
        // debugPrint("\(type(of: self)).\(#function) \(#line) ", MiPushSDK.self)

        // Objective-C class in this pod
        // TODO:
        // debugPrint("\(type(of: self)).\(#function) \(#line) ", OCObject())
    }

}
