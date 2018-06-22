//
//  ErrorHandler.swift
//  JSON Parsing
//
//  Created by Raju on 6/22/18.
//  Copyright © 2018 rajubd49. All rights reserved.
//

import Foundation
import UIKit

class ErrorHandler: NSObject {

    var viewController: ViewController?
    
    private func showErrorAlert(with message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(okAction)
        viewController?.present(alert, animated: true, completion: nil)
    }
    
    func handleError(_ error: WebServiceError) {
        switch error {
        case .noInternetConnection:
            showErrorAlert(with: "The internet connection is lost")
        case .fetchFailed:
            showErrorAlert(with: "Failed to fetch data")
        case .decodeFailed:
            showErrorAlert(with: "Failed to decode json")
        case .other:
            showErrorAlert(with: "Unfortunately something went wrong")
        }
    }
}
