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
    @IBOutlet weak var lblHienThi: UILabel!

    var a : Double!
    var b : Double!
    var c : Double!
   var hien_thi : TinhToan!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func dauvao() {
        if (isString(string: txt_A.text!) == true && isString(string: txt_B.text!) == true && isString(string: txt_C.text!) == true)
        {
            a = Double(txt_A.text!)
            b = Double(txt_B.text!)
            c = Double(txt_C.text!)
            hienthi()
        } else {
            lblHienThi.text = " Nhap lai ban oi "

        }
    
    }
    
    func hienthi(){
        hien_thi = TinhToan()
        
        do {
            let (x1,x2) = try hien_thi.giaiPhuongTrinh(a: a, b: b, c: c)
            txt_x1.text = String(x1)
            txt_x2.text = String(x2)
            
        } catch PhuongTrinhBac2Error.aBangKhong{
            lblHienThi.text = "Khong phai phuong trinh bac 2"
        } catch PhuongTrinhBac2Error.voNghiem{
            lblHienThi.text = " Phuong trinh vo nghiem"
        }catch
            {
            lblHienThi.text = "khong ro loi "
            }
    }
    
    @IBAction func btn_tinh(_ sender: UIButton) {
        if (count == 0)
        {
            dauvao()
            count = 1
        }
        else if (count == 1){
            reset()
            count = 0
        }
    }
    func reset()  {
        txt_A.text = ""
        txt_B.text = ""
        txt_C.text = ""
        txt_x1.text = ""
        txt_x2.text = ""
    }
    // kiem tra: so -> true
    func isString(string : String) -> Bool {
        if Int(string) != nil{
            
            return true
        }
        return false
    }
}
