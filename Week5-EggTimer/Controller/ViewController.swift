//
//  ViewController.swift
//  Week5-EggTimer
//
//  Created by Mehmet Salih ÇELİK on 13.10.2021.
//

import UIKit

final class ViewController: UIViewController {
    
    enum Mood: Int {
        case soft
        case normal
        case coddled
        case unselected
    }
    var temp: Mood = .unselected
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startButtonTapped(_ sender: Any) {
        switch temp {
        case .soft:
            let viewController = SoftBoiledController(nibName: "SoftBoiledController", bundle: nil)
            self.navigationController?.pushViewController(viewController, animated: true)
        case .normal:
            let viewController = NormalBoiledController(nibName: "NormalBoiledController", bundle: nil)
            self.navigationController?.pushViewController(viewController, animated: true)
        case .coddled:
            let viewController = CoddledController(nibName: "CoddledController", bundle: nil)
            self.navigationController?.pushViewController(viewController, animated: true)
        default:
            let alert = UIAlertController(title: "Lütfen seçim yapınız!", message: "", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default)
            alert.addAction(okAction)
            self.present(alert, animated: true)
        }
    }
    
    @IBAction func didChangeSegment(_ sender: UISegmentedControl) {
        guard let mood = Mood(rawValue: sender.selectedSegmentIndex) else { return }
        temp = mood
    }
    
    
}

