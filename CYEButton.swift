//
//  CYEButton.swift
//  SwiftCaolaidong
//
//  Created by 曹来东 on 2023/9/8.
//

import UIKit

open class CYEButton: UIButton {
    /// 点击后【恢复可用状态】需要的时间、默认1.5秒
    open var invalidTime : CGFloat = 1.5
    /// 控制连续点击 变量，点击Button后，定时器开始计时invalidTime后恢复可点击状态
    fileprivate var canTip = true
    fileprivate var timer: DispatchSourceTimer?
    
    open override func sendAction(_ action: Selector, to target: Any?, for event: UIEvent?) {
        
        if(canTip){
            canTip = false
            super.sendAction(action, to: target, for: event)
            timer = nil
            timer = DispatchSource.makeTimerSource(queue: .main)
            guard let timer = timer else { return }
            timer.schedule(deadline: .now() + invalidTime, repeating: .infinity, leeway: .nanoseconds(0))
            timer.setEventHandler { [weak self] in
                self?.canTip = true
                self?.timer?.cancel()
            }
            timer.resume()
        }
    }
    
    open func resumeInteractive() {
        self.timer?.cancel()
        self.canTip = true
    }
    deinit {
        resumeInteractive()
    }
}
