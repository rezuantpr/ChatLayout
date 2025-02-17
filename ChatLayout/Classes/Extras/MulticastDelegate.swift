//
//  File.swift
//  
//
//  Created by Rezuan Bidzhiev on 20.11.2021.
//

import Foundation

public class MulticastDelegate<T> {
  
  private let delegates: NSHashTable<AnyObject> = NSHashTable.weakObjects()
  
  public func add(_ delegate: T) {
    delegates.add(delegate as AnyObject)
  }
  
  public func remove(_ delegateToRemove: T) {
    for delegate in delegates.allObjects.reversed() {
      if delegate === delegateToRemove as AnyObject {
        delegates.remove(delegate)
      }
    }
  }
  
  public func invoke(_ invocation: (T) -> Void) {
    for delegate in delegates.allObjects.reversed() {
      invocation(delegate as! T)
    }
  }
}
