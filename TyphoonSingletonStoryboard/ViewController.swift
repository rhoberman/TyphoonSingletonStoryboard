import UIKit

class ViewController: UIViewController {

    var assembly : ApplicationAssembly?
    var singleton : Singleton?
    var reinjectedSingleton : Singleton?
    
    @IBOutlet weak var singletonId: UILabel!
    @IBOutlet weak var reinjectedSingletonId: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        singletonId.text = "Singleton id = \(singleton!.id)"
        reinjectedSingletonId.text = "Reinjected Singleton id = \(reinjectedSingleton!.id)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func buttonTapped(sender: AnyObject) {
        
        singleton!.sayHiToTheNiceFolks()

        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        var nextViewController = mainStoryboard.instantiateViewControllerWithIdentifier("tabBarController") as! UIViewController
        
        UIApplication.sharedApplication().keyWindow!.rootViewController = nextViewController;
     
    }

}

