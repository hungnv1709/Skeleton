//
//  PhuongTrinhBac2.swift
//  SwiftAppSkeleton
//
//  Created by cuong on 5/16/17.
//  Copyright © 2017 Techmaster. All rights reserved.
//

import UIKit


class PhuongTrinhBac2: UIViewController {
    @IBOutlet weak var txt_A: UITextField!
    @IBOutlet weak var txt_B: UITextField!
    @IBOutlet weak var txt_C: UITextField!
    @IBOutlet weak var txt_x1: UITextField!
    @IBOutlet weak var txt_x2: UITextField!

    var a : Double!
    var b : Double!
    var c : Double!
    var nhap : tinhtoan!
    var hien_thi : tinhtoan!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func dauvao() {
        nhap = tinhtoan()
        a = Double(txt_A.text!)
        b = Double(txt_B.text!)
        c = Double(txt_C.text!)
    }
    
    func hienthi(){
        hien_thi = tinhtoan()
        do {
            let (x1,x2) = try hien_thi.tinhToan(a: a, b: b, c: c)
            txt_x1.text = String(x1)
            txt_x2.text = String(x2)
            
        } catch PhuongTrinhBac2Error.voNghiem{
            txt_x1.text = "PT vo nghiem"
            txt_x2.text = "PT vo nghiem"
        } catch PhuongTrinhBac2Error.aBangKhong{
            txt_x1.text = " Khong phai pt bac 2"
        }catch
            {
            txt_x1.text = "Sai"
            }
    }
    
    @IBAction func btn_tinh(_ sender: UIButton) {
        dauvao()
        hienthi()
    }
}
