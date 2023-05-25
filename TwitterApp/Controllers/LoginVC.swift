//
//  LoginVC.swift
//  TwitterApp
//
//  Created by olivier geiger on 25/05/2023.
//

import UIKit

class LoginVC: UIViewController {
    
    // MARK: - PROPERTIES
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "twitter_logo_blue")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    private let emailTextField = TWTextField(placeholder: "Email")
    
    private let passwordTextField = TWTextField(placeholder: "Password")
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(named: "TwitterColor")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isEnabled = true
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        return button
    }()
    
    private let dontHaveAccountButton: UIButton = {
        let button = UIButton(type: .system)
        let attributedTitle = NSMutableAttributedString(string: "Don't have an account?  ", attributes: [
          .font: UIFont.systemFont(ofSize: 16),
          .foregroundColor: UIColor(named: "TwitterColor")!])
        attributedTitle.append(NSAttributedString(string: "Sign Up", attributes: [
          .font: UIFont.systemFont(ofSize: 16, weight: .bold),
          .foregroundColor: UIColor(named: "TwitterColor")!]))
        button.setAttributedTitle(attributedTitle, for: .normal)
        
        button.addTarget(self, action: #selector(handleShowSignup), for: .touchUpInside)
        
        return button
      }()
    
    
    // MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configure()
    }
    
    
    // MARK: HELPERS
    @objc func handleLogin() {
        print("DEBUG: Handle Login")
    }
    
    
    @objc func handleShowSignup() {
        print("DEBUG: Handle Show Signup")
    }
    
    
    // MARK: - LAYOUT FUNCTIONS
    private func configure() {
        configureImageView()
        configureStackView()
        configureDontHaveAccountButton()
    }
    
    
    // MARK: imageView
    private func configureImageView() {
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 120),
            imageView.heightAnchor.constraint(equalToConstant: 120),
        ])
    }
    
    
    // MARK: StackView
    private func configureStackView() {
        let stackView       = UIStackView()
        stackView.axis      = .vertical
        stackView.spacing   = 20
        
        passwordTextField.isSecureTextEntry = true
        
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(loginButton)
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 80),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
        ])
    }
    
    
    // MARK: dontHaveAccountButton
    private func configureDontHaveAccountButton() {
        view.addSubview(dontHaveAccountButton)
        dontHaveAccountButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            dontHaveAccountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            dontHaveAccountButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            dontHaveAccountButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
    
}
