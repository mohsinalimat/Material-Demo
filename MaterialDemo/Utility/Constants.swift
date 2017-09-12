//
//  Constants.swift
//  ViewControllerDemo
//
//  Created by SamSol on 27/06/16.
//  Copyright © 2016 SamSol. All rights reserved.
//

import Foundation
import UIKit

//  MARK: - System Oriented Constants -

let appName : String = "Baller App"
let FirstStartDateForTimeStamp : String = "01/01/2000"
let SecondStartDateForTimeStamp : String = "01/02/2000"

let weekDay : [String] = ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"]


struct SystemConstants {
    
    static let showLayoutArea = true
    static let hideLayoutArea = false
    static let showVersionNumber = 1
    
    static let IS_IPAD = (UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad)
    static let IS_DEBUG = false
}

struct General{
    static let textFieldColorAlpha : CGFloat = 0.5
    static let kCircleRadios : Double = 10.0
}

//  MARK: - Thired Party Constants -
struct ThiredPartyKey {
    static let googleMapKey = "AIzaSyCbD8HF6N2KSSDXiJ3P79lC2WQSNb5GWj0"
    static let StripePublishableKey = ""
}


//  MARK: - Server Constants -
struct APIConstant {
    
    //  Main Domain
    static let baseURL = "http://wmtprod.cloudapp.net/troopoolWeb/public/api/"
    static let googlePlaceDirection = "https://maps.googleapis.com/maps/api/directions/json?"
    
    //  API - Sub Domain
    static let login = "login"
    static let logout = "logout"
    static let forgotPassword = "forgotPassword"
    static let register = "register"
    static let fetchProfile = "fetchProfile"
    static let editProfile = "editProfile"
    static let changePassword = "changePassword"
    static let paymentStatus = "paymentStatus"
    static let userRole = "userRole"
    static let addVehicleDetails = "addVehicleDetails"
    static let setTimeLocation = "setTimeLocation"
    static let changeProfilePicture = "changeProfilePicture"
    static let getNearbyUsers = "getNearbyUsers"
    static let sendRequest = "sendRequest"
    static let getAppUsers = "getAppUsers"
    static let sentRequests = "sentRequests"
    static let receivedRequests = "receivedRequests"
    static let cancelRequest = "cancelRequest"
    static let acceptRequest = "acceptRequest"
    static let recentRides = "recentRides"
    static let rideHistory = "rideHistory"
    static let letsRide = "letsRide"
    static let cancelRide = "cancelRide"
    static let finishRide = "finishRide"
    static let ready = "ready"
    
}


//  MARK: - layoutTime Constants -
struct ControlLayout {
    
    static let name : String = "controlName"
    static let borderRadius : CGFloat = 3.0
    
    static let horizontalPadding : CGFloat = 8.0
    static let verticalPadding : CGFloat = 8.0
    static let secondaryHorizontalPadding : CGFloat = 15.0
    static let secondaryVerticalPadding : CGFloat = 15.0
    static let turneryHorizontalPadding : CGFloat = 22.0
    static let turneryVerticalPadding : CGFloat = 22.0
    
    static let txtBorderWidth : CGFloat = 1.5
    static let txtBorderRadius : CGFloat = 2.5
    static let textFieldHeight : CGFloat = SystemConstants.IS_IPAD ? 70 : 50.0
    static let textLeftPadding : CGFloat = 10.0
    
    static let constantButtonSize : CGFloat = SystemConstants.IS_IPAD ? 90 : 50.0
    static let KTextLeftPaddingFromControl : CGFloat = 10.0
}


//  MARK: - Cell Identifier Constants -
struct CellIdentifire {
    static let menuCell = "menuCell"
    static let settingCell = "SetitngIdentifire"
    static let KCellProfileAddress = "profileAddress"
    static let KCellProfileMobileNo = "profileMobile"
    static let KCellProfileOtherInfo = "profileOther"
    static let KDayCollectionCell = "KDayCollectionCell"
    static let KLocationDataCell = "KLocationDataCell"
    static let KLocationDataCollectionCell = "KLocationDataCollectionCell"
    static let KAppUserTableCell = "KAppUserTableCell"
    static let KAppUserCollectionCell = "KAppUserCollectionCell"
    
    static let KSentTableViewCell = "KSentTableViewCell"
    static let KReceiveTableViewCell = "KReceiveTableViewCell"
    static let RideTableViewCell = "RideTableViewCell"
    
    static let kRideAllUserCell = "kRideAllUserCell"
    static let kRideDetailsCell = "kRideDetailsCell"
    static let kRideAllUserCollectionView = "kRideAllUserCollectionView"
    
}

//  MARK: - Notification key -
struct NotificationKey {
    static let NotificationSetAddres = "NotificationSetAddres"
    static let profileChange = "profileChange"
    static let routeSelected = "routeSelected"
    
    //Push
    static let refreshRequestList = "refreshRequestList"
    static let refreshRideList = "refreshRideList"
    
}


//  MARK: - Info / Error Message Constants -
struct ErrorMessage {
    static let noInternet = "⚠️ Internet connection is not available."
    static let noCurrentLocation = "⚠️ Unable to find current location."
    static let noCameraAvailable = "⚠️ Camera is not available in device."
}

struct  DateFormate {
    static let dateTime = "dd MMMM, yyyy hh:mm a"
    static let KFullDate = "dd MMMM, yyyy"
    static let KonlyTime = "hh:mm a"
}

struct UserDefaultKey {
    
    static let KAccessTocken = "KAccessTocken"
    static let KUserId = "KUserId"
    static let KEmailId = "KEmailId"
    static let KFullName = "FullName"
    static let KProfilePic = "ProfilePic"
    static let KUserRole = "userRole"
    static let KisProfileComplete = "KisProfileComplete"
    
    static let Fcmtocken = "Fcmtocken"
}

// MARK: - Device Compatibility
struct currentDevice {
    static let isIphone = (UIDevice.current.model as NSString).isEqual(to: "iPhone") ? true : false
    static let isIpad = (UIDevice.current.model as NSString).isEqual(to: "iPad") ? true : false
    static let isIPod = (UIDevice.current.model as NSString).isEqual(to: "iPod touch") ? true : false
}


