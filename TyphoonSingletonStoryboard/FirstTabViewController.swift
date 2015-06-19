import UIKit

class FirstTabViewController: UIViewController {

    var singleton : Singleton?
    var reinjectedSingleton : Singleton?
    
    @IBOutlet weak var singletonId: UILabel!
    @IBOutlet weak var reinjectedSingletonId: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        singletonId.text = "Singleton id = \(singleton!.id)"
        reinjectedSingletonId.text = "Reinjected Singleton id = \(reinjectedSingleton!.id)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
