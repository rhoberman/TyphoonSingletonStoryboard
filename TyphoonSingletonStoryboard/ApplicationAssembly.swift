import Typhoon

import Foundation

public class ApplicationAssembly : TyphoonAssembly {
    
    public dynamic func appDelegate() -> AnyObject {
        return TyphoonDefinition.withClass(AppDelegate.self) {
            (definition) in
        }
    }
    
    public dynamic func viewController() -> AnyObject {
        
        return TyphoonDefinition.withClass(ViewController.self) {
            (definition) in
            definition.injectProperty("singleton", with: self.singleton())
        }
        
    }

    public dynamic func firstTabViewController() -> AnyObject {
        
        return TyphoonDefinition.withClass(FirstTabViewController.self) {
            (definition) in
            definition.injectProperty("singleton", with: self.singleton())
        }
        
    }

    public dynamic func singleton() -> AnyObject {
        
        return TyphoonDefinition.withClass(Singleton.self) {
            (definition) in
            definition.scope = TyphoonScope.Singleton
        }
        
    }
   
}