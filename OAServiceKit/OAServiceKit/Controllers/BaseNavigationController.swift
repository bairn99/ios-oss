//
//  BaseNavigationController.swift
//  ios-oss
//
//  Created by YYKJ0048 on 2020/11/24.
//

import UIKit
import RxSwift
import RxCocoa
import OAGlobalKit
import OAExtensionsKit
import HBDNavigationBar

open class BaseNavigationController: HBDNavigationController {

    public let disposeBag = DisposeBag()

    open override func viewDidLoad() {
        super.viewDidLoad()
        log.debug(self.className)
    }
    
    open override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    deinit {
        log.debug(self.className)
    }
}
