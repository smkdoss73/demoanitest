  func showDashboard(){
        
        DispatchQueue.main.async {
            if let controller = ControllerHandler.mainDashboardNav.get() as? UINavigationController{
                
                self.window?.backgroundColor = UIColor(red: 236.0, green: 238.0, blue: 241.0, alpha: 1.0)
                self.window?.rootViewController = controller
                self.window?.makeKeyAndVisible()
                
            }
            
            
            // slideMenuController.delegate = mainViewController as! SlideMenuControllerDelegate
            
            
            
        }
        
        
        


  func Logout() {
        
        if let controller = ControllerHandler.loginNav.get() as? UINavigationController {
            _ = KeychainHandler.deleteKeychainDatas()
            
            
            //            let navigationController = UINavigationController(rootViewController: controller)
            //            navigationController.navigationBar.isHidden = false
            //            navigationController.isNavigationBarHidden = false
            
            self.window?.rootViewController = controller
            self.window?.makeKeyAndVisible()
            
        }
    }
    
