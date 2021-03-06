//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Raúl Ferrer on 20/9/21.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { [self] result in
            DispatchQueue.main.async {
                isLoading = false
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidUrl

                    case .invalidData:
                        alertItem = AlertContext.invalidData

                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
