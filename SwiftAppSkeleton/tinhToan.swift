//
//  TinhToan.swift
//  SwiftAppSkeleton
//
//  Created by Nguyen Van Hung on 5/18/17.
//  Copyright © 2017 Techmaster. All rights reserved.
//

import UIKit

enum PhuongTrinhBac2Error: Error {
    case voNghiem
    case aBangKhong
}

class tinhtoan {
    
    func tinhToan(a:Double, b:Double, c:Double) throws -> (Double, Double) {
        if (a == 0){
            throw PhuongTrinhBac2Error.aBangKhong
        }
        let delta = b*b - 4*a*c
        let sqrtdelta = delta.squareRoot()
        if delta < 0{
            throw PhuongTrinhBac2Error.voNghiem
        }
        else{
            let x1 = (-b - sqrtdelta)/(2 * a)
            let x2 = (-b + sqrtdelta)/(2 * a)
            return (x1,x2)
        }
    }

}
