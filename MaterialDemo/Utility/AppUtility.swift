//
//  AppUtility.swift
//  ViewControllerDemo
//
//  Created by SamSol on 24/08/15.
//  Copyright (c) 2015 SamSol. All rights reserved.
//

import UIKit
import SystemConfiguration



class AppUtility: NSObject {
   
    //  MARK: - Network Connection Methods
    
    class func isNetworkAvailableWithBlock(_ completion: @escaping (_ wasSuccessful: Bool) -> Void) {
    
        NotificationManager.sharedInstance.isNetworkAvailableWithBlock { (wasSuccessful) in
            completion(wasSuccessful)
        }
    }

    //  MARK: - User Defaults Methods
    
    class func getUserDefaultsObjectForKey(_ key: String) -> AnyObject? {
        let object: AnyObject? = UserDefaults.standard.object(forKey: key) as AnyObject?
        return object
    }
    
    class func setUserDefaultsObject(_ object: AnyObject, forKey key: String) {
        UserDefaults.standard.set(object, forKey:key)
        UserDefaults.standard.synchronize()
    }
    
    class func clearUserDefaultsForKey(_ key: String) {
        UserDefaults.standard.removeObject(forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    class func clearUserDefaults(){
        let appDomain: String = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: appDomain)
        UserDefaults.standard.synchronize()
    }
    
    class func getDocumentDirectoryPath() -> String {
        let arrPaths : NSArray = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true) as NSArray
        return arrPaths[0] as! String
    }
    class func stringByPathComponet(fileName : String , Path : String) -> String {
        var tmpPath : NSString = Path as NSString
        tmpPath = tmpPath.appendingPathComponent(fileName) as NSString
        return tmpPath as String
    }
    
    //  MARK: - UIDevice Methods
    
    class func getDeviceIdentifier()->String {
        let deviceUUID: String = UIDevice.current.identifierForVendor!.uuidString
        return deviceUUID
    }
    
    
    
    //  MARK: - Misc Methods
    
    class func getAppDelegate()->AppDelegate{
        let appDelegate: UIApplicationDelegate = UIApplication.shared.delegate!
        return appDelegate as! AppDelegate
    }
    
    
    //  MARK: - Time-Date Methods
    
    class func convertDateToLocalTime(_ iDate: Date) -> Date {
        let timeZone: TimeZone = TimeZone.autoupdatingCurrent
        let seconds: Int = timeZone.secondsFromGMT(for: iDate)
        return Date(timeInterval: TimeInterval(seconds), since: iDate)
    }
    
    class func convertDateToGlobalTime(_ iDate: Date) -> Date {
        let timeZone: TimeZone = TimeZone.autoupdatingCurrent
        let seconds: Int = -timeZone.secondsFromGMT(for: iDate)
        return Date(timeInterval: TimeInterval(seconds), since: iDate)
    }
    
    class func getCurrentDateInFormat(_ format: String) -> String{
        
        let usLocale: Locale = Locale(identifier: "en_US")
        
        let timeFormatter: DateFormatter = DateFormatter()
        timeFormatter.dateFormat = format
        
        timeFormatter.timeZone = TimeZone.autoupdatingCurrent
        timeFormatter.locale = usLocale
        
        let date: Date = Date()
        let stringFromDate: String = timeFormatter.string(from: date)
        
        return stringFromDate
    }
    
    class func getDate(_ date: Date, inFormat format: String) -> String {
        
        let usLocale: Locale = Locale(identifier: "en_US")
        let timeFormatter: DateFormatter = DateFormatter()
        
        timeFormatter.dateFormat = format
        timeFormatter.timeZone = TimeZone.autoupdatingCurrent
        
        timeFormatter.locale = usLocale
        
        let stringFromDate: String = timeFormatter.string(from: date)
        
        return stringFromDate
    }
    
    
    class func getUTCTimeStampfromGivenString(date : String, time : String) -> TimeInterval
    {
        let dateformattor = DateFormatter()
        dateformattor.dateFormat = "MM/dd/yyyy hh:mm a"
        dateformattor.timeZone = NSTimeZone.local
        let dt = date + " " + time
        let dt1 = dateformattor.date(from: dt as String)
        
        dateformattor.timeZone = NSTimeZone.init(abbreviation: "UTC") as TimeZone!
        return (dt1?.timeIntervalSince1970)!
    }
    
    
    class func getLocalTimeStampfromGivenString(date : String, time : String) -> TimeInterval
    {
        let dateformattor = DateFormatter()
        dateformattor.dateFormat = "MM/dd/yyyy hh:mm a"
        dateformattor.timeZone = NSTimeZone.local
        let dt = date + " " + time
        let dt1 = dateformattor.date(from: dt as String)
        
        dateformattor.timeZone = TimeZone.autoupdatingCurrent
        return (dt1?.timeIntervalSince1970)!
    }
    
    class func convertStringDateFromFormat(_ inputFormat:String, toFormat outputFormat:String, fromString dateString:String)->String{
        
        let usLocale: Locale = Locale(identifier: "en_US")
        
        var dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.locale = usLocale
        dateFormatter.dateFormat = inputFormat
        
        dateFormatter = DateFormatter()
        let date: Date = dateFormatter.date(from: dateString)!
        
        dateFormatter.locale = usLocale
        dateFormatter.dateFormat = outputFormat
        
        let resultedDateString: String = dateFormatter.string(from: date)
        
        return resultedDateString
    }
    
    class func getLocalTime(timestamp : Double) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormate.KonlyTime
        dateFormatter.timeZone = TimeZone.autoupdatingCurrent
        
        let nstimeInterval : TimeInterval = TimeInterval(timestamp)
        let localDate = Date(timeIntervalSince1970: nstimeInterval)
        dateFormatter.timeZone = TimeZone.autoupdatingCurrent
        return dateFormatter.string(from: localDate)
    }
    
    class func getLocalDate(timestamp : Double) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormate.dateTime
        dateFormatter.timeZone = TimeZone.autoupdatingCurrent
        
        let nstimeInterval : TimeInterval = TimeInterval(timestamp)
        return Date(timeIntervalSince1970: nstimeInterval)
    }
    
    class func getTimeStampForCurrentTime() -> String {
        let timestampNumber: NSNumber = NSNumber(value: (Date().timeIntervalSince1970) * 1000 as Double)
        return timestampNumber.stringValue
    }
    
    class func getTimeStampFromDate(_ iDate: Date) -> String {
        let timestamp: String = String(iDate.timeIntervalSince1970)
        return timestamp
    }
    
    class func getCurrentTimeStampInGMTFormat() -> String {
        return AppUtility.getTimeStampFromDate(AppUtility.convertDateToGlobalTime(Date()))
    }
    
    //  MARK: - GCD Methods
    
    class func executeTaskAfterDelay(_ delay: CGFloat, completion completionBlock: @escaping () -> Void)
    {
        DispatchQueue.global(qos: .default).asyncAfter(deadline: DispatchTime.now() + Double(Int64(delay * CGFloat(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)) { 
            completionBlock()
        }
    }
    
    class func executeTaskInMainThreadAfterDelay(_ delay: CGFloat, completion completionBlock: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(Int64(delay * CGFloat(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: {() -> Void in
            completionBlock()
        })
    }
    
    class func executeTaskInGlobalQueueWithCompletion(_ completionBlock: @escaping () -> Void) {
        DispatchQueue.global(qos: .default).async(execute: {() -> Void in
            completionBlock()
        })
    }
    
    class func executeTaskInMainQueueWithCompletion(_ completionBlock: @escaping () -> Void) {
        DispatchQueue.main.async(execute: {() -> Void in
            completionBlock()
        })
    }
    
    class func executeTaskInGlobalQueueWithSyncCompletion(_ completionBlock: () -> Void) {
        DispatchQueue.global(qos: .default).sync(execute: {() -> Void in
            completionBlock()
        })
    }
    
    class func executeTaskInMainQueueWithSyncCompletion(_ completionBlock: () -> Void) {
        DispatchQueue.main.sync(execute: {() -> Void in
            completionBlock()
        })
    }
    
    //  MARK: - Data Validation Methods
    
    class func isValidEmail(_ checkString: String)->Bool{
        
        //let stricterFilter: Bool = false
        
        //let stricterFilterString: String = "^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$"
        let laxString: String = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        
        let emailRegex: String = laxString
        
        let emailTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with: checkString)
    }
    
    class func isValidPhone(_ phoneNumber: String) -> Bool {
        let phoneRegex: String = "^[0-9]{10,15}$"
        let phoneTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@",phoneRegex)
        return phoneTest.evaluate(with: phoneNumber)
    }
    
    class func isValidURL(_ candidate: String) -> Bool {
        let urlRegEx: String = "(http|https)://((\\w)*|([0-9]*)|([-|_])*)+([\\.|/]((\\w)*|([0-9]*)|([-|_])*))+"
        let urlTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@",urlRegEx)
        return urlTest.evaluate(with: candidate)
    }
    
    class func isOnlyNumber (_ candidate: String) -> Bool {
        let urlRegEx: String = "^[0-9]+$"
        let urlTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@",urlRegEx)
        return urlTest.evaluate(with: candidate)
    }
    
    class func isOnlyDecimal (_ candidate: String) -> Bool {
        let urlRegEx: String = "\\d+(\\.\\d{1,2})?"
        let urlTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@",urlRegEx)
        return urlTest.evaluate(with: candidate)
    }
    
    class func isValiedHeight(_ height : String) -> Bool {
        let urlRegEx: String = "\\d{1,2}+(\\.\\d{1,2})?"
        let urlTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@",urlRegEx)
        return urlTest.evaluate(with: height)
    }
    
    class func isValiedVirtical (_ candidate: String) -> Bool {
        let urlRegEx: String = "^[0-9]{1,3}+$"
        let urlTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@",urlRegEx)
        return urlTest.evaluate(with: candidate)
    }
    
    
    class func isValiedWeight(_ height : String) -> Bool {
        let urlRegEx: String = "\\d{1,3}+(\\.\\d{1,2})?"
        let urlTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@",urlRegEx)
        return urlTest.evaluate(with: height)
    }
    
    class func isTextFieldBlank(_ textField : UITextField) -> Bool    {
        return (textField.text?.trimmingCharacters(in: CharacterSet.whitespaces).isEmpty)!
    }
    
    class func validateMobileNo(_ mobileNo : String) -> Bool    {
        return mobileNo.characters.count == 10 ? true : false
    }
    
    func validateCharCount(_ name: String,minLimit : Int,maxLimit : Int) -> Bool    {
        // check the name is between 4 and 16 characters
        if !(minLimit...maxLimit ~= name.characters.count) {
            return false
        }
        return true
    }
    
    func isRunningSimulator() -> Bool {
        return TARGET_OS_SIMULATOR != 0 // Use this line in Xcode 7 or newer
        
    }
    
  
   
   
    
    // MARK: - Validation
 
    
    class func validateEmailWithString(email: String) -> Bool
    {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with: email)
    }
    
    class func validateMobileNo(mobileNo : String) -> Bool
    {
        return mobileNo.characters.count == 10 ? true : false
    }
    
    class func isValidEmail(checkString: String)->Bool{
        
        let laxString: String = "^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$"
        
        let emailRegex: String = laxString
        
        let emailTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with: checkString)
    }
    
    class func isValidPhone(phoneNumber: String) -> Bool {
        let phoneRegex: String = "^((\\+)|(00))[0-9]{6,14}$"
        let phoneTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@",phoneRegex)
        return phoneTest.evaluate(with: phoneNumber)
    }
    
    class func isValidURL(candidate: String) -> Bool {
        let urlRegEx: String = "(http|https)://((\\w)*|([0-9]*)|([-|_])*)+([\\.|/]((\\w)*|([0-9]*)|([-|_])*))+"
        let urlTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@",urlRegEx)
        return urlTest.evaluate(with: candidate)
    }
    
    
  
    
  
}
