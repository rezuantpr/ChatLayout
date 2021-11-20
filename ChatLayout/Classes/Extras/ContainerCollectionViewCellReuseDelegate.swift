//
//  ContainerCollectionViewCellReuseDelegate.swift
//
//
//  Created by Rezuan Bidzhiev on 20.11.2021.
//

import Foundation

public protocol ContainerCollectionViewCellReuseDelegate: AnyObject {
  /// Perform any clean up necessary to prepare the view for use again.
  func prepareForReuse()
}

public extension ContainerCollectionViewCellReuseDelegate {
  
  /// Default implementation does nothing.
  func prepareForReuse() {}
}
