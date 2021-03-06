//
//  ApiService.swift
//  ios-oss
//
//  Created by YYKJ0048 on 2020/11/24.
//

import Alamofire
import Moya
import ObjectMapper
import RxSwift

class ApiService: ApiServiceType {
    
    let apiProvider: ApiNetworking
    
    init() {
        self.apiProvider = ApiNetworking.defaultNetworking()
    }
}

extension ApiService {
    func profile() -> Single<CodeResponse> {
        return requestObject(.profile, type: CodeResponse.self)
    }
}
