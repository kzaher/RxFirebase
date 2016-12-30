//
//  FIRUserProfileChangeRequest+Extensions.swift
//  Pods
//
//  Created by Jonathan Willis on 12/29/16.
//
//

import Foundation
import FirebaseAuth
import RxSwift

extension Reactive where Base: FIRUserProfileChangeRequest {
    public func commitChanges() -> Observable<Void> {
        return Observable.create { observer in
            self.base.commitChanges(completion: parseFirebaseResponse(observer))
            return Disposables.create()
        }
    }
}
