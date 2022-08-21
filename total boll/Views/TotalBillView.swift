//
//  TotalViewController.swift
//  total boll
//
//  Created by Максим on 19.08.2022.
//

import UIKit

class TotalBillView: UIView {
    
    let totalLabel: UILabel = {
        let label = UILabel()
        label.text = "Total Bill"
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let summTextField: UITextField = {
       let textField = UITextField()
        textField.textAlignment = .center
        textField.textColor = .black
        textField.font = UIFont(name: "Avenir Next Bold", size: 40)
        textField.backgroundColor = #colorLiteral(red: 0.9561659694, green: 0.9591339231, blue: 0.9530903697, alpha: 1)
        textField.layer.cornerRadius = 10
        textField.keyboardType = .numberPad
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
       translatesAutoresizingMaskIntoConstraints = false

        addSubview(totalLabel)
        addSubview(summTextField)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            
            totalLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            totalLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            summTextField.topAnchor.constraint(equalTo: totalLabel.bottomAnchor, constant: 5),
            summTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            summTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            summTextField.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
}
