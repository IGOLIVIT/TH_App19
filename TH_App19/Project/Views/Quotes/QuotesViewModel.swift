//
//  QuotesViewModel.swift
//  TH_App19
//
//  Created by IGOR on 25/01/2025.
//

import SwiftUI
import CoreData

final class QuotesViewModel: ObservableObject {
    
    @Published var isDetailVisible1 = false
    @Published var isDetailVisible2 = false
    @Published var isDetailVisible3 = false
    @Published var isDetailVisible4 = false
    @Published var isDetailVisible5 = false
    @Published var isDetailVisible6 = false
    @Published var isDetailVisible7 = false
    @Published var isDetailVisible8 = false

    @Published var isAdd: Bool = false
    @Published var isDetail: Bool = false
    @Published var isDelete: Bool = false
    @Published var isSettings: Bool = false
    @Published var isDeleteAll: Bool = false

    @Published var qQuote: String = ""
    @Published var qAuthor: String = ""
    @Published var qYear: String = ""
    @Published var qBCE: String = ""
    @Published var qTog: Bool = Bool()
    @Published var qCom: String = ""
    
    @Published var isBCE: Bool = false

    @Published var quotes: [QuotesModel] = []
    @Published var selectedQuote: QuotesModel?

    func addQuote() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let loan = NSEntityDescription.insertNewObject(forEntityName: "QuotesModel", into: context) as! QuotesModel

        loan.qQuote = qQuote
        loan.qAuthor = qAuthor
        loan.qYear = qYear
        loan.qBCE = isBCE ? "BCE" : ""
        loan.qTog = qTog
        loan.qCom = qCom

        CoreDataStack.shared.saveContext()
    }

    func fetchQuotes() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<QuotesModel>(entityName: "QuotesModel")

        do {

            let result = try context.fetch(fetchRequest)

            self.quotes = result

        } catch let error as NSError {

            print("catch")

            print("Error fetching persons: \(error), \(error.userInfo)")

            self.quotes = []
        }
    }
    
    @AppStorage("savedQuotes") var savedQuotes: [String] = []
    
    func isHas(model: QuotesModel) -> Bool {
        
            return savedQuotes.contains(model.qQuote ?? "")

    }
    
    func favoritesManager(model: QuotesModel) {
        
                        if savedQuotes.contains(model.qQuote ?? "") {
                
                if let indexer = savedQuotes.firstIndex(of: model.qQuote ?? "") {
                    
                    savedQuotes.remove(at: indexer)
                    
                }
                
            } else {
                
                savedQuotes.append(model.qQuote ?? "")
                
            }
    }

}
