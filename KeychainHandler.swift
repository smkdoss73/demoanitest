//
//  KeychainHandler.swift
//  SwishexAdmin
//
//  Created by Kalidoss on 20/01/18.
//  Copyright © 2018 tesark. All rights reserved.
//

import Foundation
let kSecTokenIdentifier = "token"
let kSecOutletIdentifier = "outletid"



class KeychainHandler: NSObject {
    
    //MARK: Save User Token
    class func saveUserToken(userToken: String?){
        
        if let authToken = userToken {
//            Keychain.set(authToken, forKey: kSecTokenIdentifier)
            UserDefaults.standard.setValue(authToken, forKey: kSecTokenIdentifier)

        }
    }
    
    
    class func saveOutletId(inviteToken: String?){
        
        if let userInviteToken = inviteToken {
            Keychain.set(userInviteToken, forKey: kSecOutletIdentifier)
        }
        
        
        
    }
    
    
    class func getoutletDatas() -> [Outlets]? {
        
        var outletCollections:[Outlets] = []
        
        return outletCollections
        
    }
    
    
    class func getUserEmail() -> String{
        
        var user_mail = "Swishex"
        if let usermail = UserDefaults.standard.value(forKey: UserDefaultsKeys.USER_EMAIL) as? String {
            user_mail = usermail
        }
        
        return user_mail
    }
    
    class func storevaluesToUserDefault(token: String, params: String){
        
        UserDefaults.standard.setValue(params, forKey: token)
        
    }
    
    
    
    
    //MARK: get user token from Keychain
    class func getUserToken() -> String{
        
        if let userToken = UserDefaults.standard.value(forKey: kSecTokenIdentifier) as? String{
           
            return userToken
        }else{
            return Placeholder.commonplaceholder
        }
        
    }
    
    
    //MARK: get user Invite token from Keychain
    class func getOutletId() -> String{
        
        if let outletId = Keychain.value(forKey: kSecOutletIdentifier){
            return outletId
        }else{
            return Placeholder.commonplaceholder
        }
        
    }
    
    
    //MARK: Delete User Data's
    class func deleteKeychainDatas() ->Bool{
        
        saveUserToken(userToken: Placeholder.commonplaceholder)
        saveOutletId(inviteToken: Placeholder.commonplaceholder)
        storevaluesToUserDefault(token: UserDefaultsKeys.CURRENT_OUTLET_NAME, params: Placeholder.appname)
        // return Keychain.reset()
        resetDefaults()
        
        return true
        
    }
    
    class func resetDefaults() {
        let defaults = UserDefaults.standard
        let dictionary = defaults.dictionaryRepresentation()
        dictionary.keys.forEach { key in
            defaults.removeObject(forKey: key)
        }
    }
    
}
