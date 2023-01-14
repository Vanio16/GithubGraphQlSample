//
//  ReposListViewController.swift
//  Graph
//
//  Created by Иван Захаров on 13.01.2023.
//

import UIKit

class ReposListViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = ReposListViewModel()
    var repositoryDetails = [GraphAPI.RepositoryDetail]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "REPOS"
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        tapRecognizer.delegate = self
        tableView.addGestureRecognizer(tapRecognizer)
        
        searchBar.delegate = self
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func hideKeyboard() {
        searchBar.resignFirstResponder()
    }
    
    func updateTableView(for newDetail: GraphAPI.RepositoryDetail?) {
        if let repositoryDetail = newDetail {
            for (index, detail) in repositoryDetails.enumerated() {
                if detail.id == repositoryDetail.id {
                    self.repositoryDetails[index] = repositoryDetail
                    for visibleCell in tableView.visibleCells {
                        if (visibleCell as! ReposListCell).repositoryDetail.id == repositoryDetail.id {
                            (visibleCell as! ReposListCell).repositoryDetail = repositoryDetail
                        }
                    }
                }
            }
        }
    }
}

extension ReposListViewController: UITableViewDelegate {
    
    // MARK: - TableView methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repositoryDetails.count
    }
}

extension ReposListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReposListCell") as! ReposListCell
        cell.repositoryDetail = repositoryDetails[indexPath.row]
        cell.delegate = self
        return cell
    }
}

extension ReposListViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        viewModel.search(for: searchBar.text ?? "") { [unowned self] repositoryDetails in
            self.repositoryDetails = repositoryDetails
            self.tableView.reloadData()
        }
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = nil
        searchBar.resignFirstResponder()
    }
}

extension ReposListViewController: UIGestureRecognizerDelegate {
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}

extension ReposListViewController: ReposListCellDelegate {
    func starTapped(for cell: ReposListCell) {
        if cell.repositoryDetail.viewerHasStarred {
            viewModel.removeStar(for: cell.repositoryDetail.id) { [unowned self] repositoryDetail in
                self.updateTableView(for: repositoryDetail)
            }
        } else {
            viewModel.addStar(for: cell.repositoryDetail.id) { [unowned self] repositoryDetail in
                self.updateTableView(for: repositoryDetail)
            }
        }
    }
}
