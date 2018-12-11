//
//  Created by NixonShih on 2017/9/24.
//  Copyright © 2017 NixonShih. All rights reserved.
//

import UIKit
import PrivatePod

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sayHelloWorld()
    }

    @IBAction func callBtnPressed(_ sender: Any) {
        
        let vc = SampleViewController(nibName: nil, bundle: Bundle.privatePod)
        present(vc, animated: true)
    }
}

