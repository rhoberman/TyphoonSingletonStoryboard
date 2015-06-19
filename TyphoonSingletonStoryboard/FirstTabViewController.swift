import UIKit

class FirstTabViewController: UIViewController {

    var singleton: Singleton?
    
    @IBOutlet weak var singletonId: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        singletonId.text = "Singleton id = \(singleton!.id)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
