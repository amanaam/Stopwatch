//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Abdul Manaam on 9/8/21.
//  Copyright © 2021 Abdul Manaam. All rights reserved.
//

import Foundation

class Stopwatch {
  
  
  private var startTime: NSDate!

  func start() {
    startTime = NSDate()
  }

  func stop() {
    startTime = nil
  }
  var elapsedTime: TimeInterval {
    if let startTime = self.startTime {
      return -1 * startTime.timeIntervalSinceNow // could also just say -startTime.timeIntervalSinceNow
    } else {
      return 0
    }
  }
  var elapsedTimeAsString: String {
    let mins = Int((elapsedTime.truncatingRemainder(dividingBy: 3600)) / 60)
    let secs = Int(elapsedTime.truncatingRemainder(dividingBy: 60))
    let mili = Int(elapsedTime*100)%100
    print(String(format: "%02d:%02d:%02d", mins, secs, mili))
    return String(format: "%02d:%02d:%02d", mins, secs, mili)
  }
  
  var isRunning: Bool{
    if startTime != nil{
      return true}
    return false
  }
  
}
