//
//  HomeViewController.swift
//  ios_chadopedia_app
//
//  Created by fan on 2023/6/24.
//

import UIKit
import FirebaseFirestore

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        printLog("ViewController")
        let db = Firestore.firestore()
        db.collection("MainCate")
            .getDocuments { querySnapshot, err in
            querySnapshot?.documents.forEach({ item in
                printLog(item.data())
            })
        }
    }
}
