//
//  ReposListViewModel.swift
//  Graph
//
//  Created by Иван Захаров on 13.01.2023.
//

import Foundation
import Apollo

class ReposListViewModel {
    private var currentSearchCancellable: Cancellable?
    private var currentAddStarCancellable: Cancellable?
    private var currentRemoveStarCancellable: Cancellable?
    
    func removeStar(for repositoryID: String, completion: @escaping (GraphAPI.RepositoryDetail?) -> Void ) {
        currentRemoveStarCancellable?.cancel()
        let mutation = GraphAPI.RemoveStarMutation(repositoryId: repositoryID)
        currentAddStarCancellable = apollo.perform(mutation: mutation, queue: .main) { result in
            switch result {
                
            case .success(let graphQLResult):
                
                if let data = graphQLResult.data {
                    let repositoryDetails = data.removeStar?.starrable?.asRepository?.fragments.repositoryDetail
                    completion(repositoryDetails)
                    
                }
            case .failure(let error):
                print("Error loading data \(error)")
            }
        }
    }
    
    func addStar(for repositoryID: String, completion: @escaping (GraphAPI.RepositoryDetail?) -> Void ) {
        currentAddStarCancellable?.cancel()
        let mutation = GraphAPI.AddStarMutation(repositoryId: repositoryID)
        currentAddStarCancellable = apollo.perform(mutation: mutation, queue: .main) { result in
            switch result {
                
            case .success(let graphQLResult):
                
                if let data = graphQLResult.data {
                    let repositoryDetails = data.addStar?.starrable?.asRepository?.fragments.repositoryDetail
                    completion(repositoryDetails)
                    
                }
            case .failure(let error):
                print("Error loading data \(error)")
            }
        }
        
    }
    
    func search(for text: String, completion: @escaping ([GraphAPI.RepositoryDetail]) -> Void) {
        currentSearchCancellable?.cancel()
        let query = GraphAPI.SearchReposQuery(searchText: text)
        currentSearchCancellable = apollo.fetch(query: query, cachePolicy: .returnCacheDataAndFetch, queue: .main) { result in
            switch result {
                
            case .success(let graphQLResult):
                if let data = graphQLResult.data {
                    let repositoryDetails = (data.search.nodes ?? [GraphAPI.SearchReposQuery.Data.Search.Node?]()).map{$0?.asRepository}.filter{$0 != nil}.map{($0?.fragments.repositoryDetail)!}
                    completion(repositoryDetails)
                }
            case .failure(let error):
                print("Error loading data \(error)")
            }
            
        }
    }
}

