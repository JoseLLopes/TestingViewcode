//
//  ViewCode.swift
//  Testing View Code
//
//  Created by jose vitor lopes on 27/09/23.
//

import Foundation

protocol ViewCode {
    func addSubViews()
    func setupConstrains()
    func setupStyle()
}

extension ViewCode {
    func setup()
    {
        addSubViews()
        setupConstrains()
        setupStyle()
    }

}
