//
//  LoginViewController.swift
//  MyGames
//
//  Created by aluno on 11/07/20.
//  Copyright © 2020 aluno. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBAction func continueClick(_ sender: UIButton) {
        
        guard let homeViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as GameTabBarViewController? else {
            return
        }
        navigationController?.pushViewController(homeViewController, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        presentOnboarding()
        // Do any additional setup after loading the view.
    }
    
    func presentOnboarding() {
        let onboarding = OnboardingViewController()
        onboarding.nav = navigationController
        navigationController?.present(onboarding, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
