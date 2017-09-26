//
//  ViewController.swift
//  LoginTableView
//
//  Created by ningBo Jiang on 17/9/21.
//  Copyright © 2017年 cmcc. All rights reserved.
//

import UIKit


class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate {
	
    var mytableView = UITableView()
    
    var cells = ["signUpLabelCell","detailLabelCell","cell","FacebookButtonCell","EmailButtonCell","termsButtonCell","SegmentationCell","haveAccountLabelCell","loginHereLableCell"]
    var cellHeights = [Any]()
    
    //tableView的3中状态
    enum TableViewStatus : Int{
        case Default
        case Login
        case SignUp
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "return"), style: .plain, target: self, action: #selector(ViewController.leftBarButton(barButton:)))
        self.navigationController?.navigationItem.leftBarButtonItem = leftBarButtonItem
        
        let imageView = UIImageView.init(image: UIImage.init(named: "timg.jpeg"))
        imageView.frame = self.view.bounds
        self.view.addSubview(imageView)
        
        let blurView = UIVisualEffectView.init(effect: UIBlurEffect.init(style: .dark))
        blurView.frame = self.view.bounds
        self.view.addSubview(blurView)
		
        
        self.mytableView = UITableView.init(frame: self.view.bounds, style: UITableViewStyle.grouped);
        self.mytableView.delegate =  self;
        self.mytableView.dataSource = self;
        self.mytableView.backgroundColor = .clear
        self.mytableView.separatorStyle = .none
        self.view.addSubview(self.mytableView);
        
        self.mytableView.register(TableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
        self.mytableView.register(LoginButtonCell.classForCoder(), forCellReuseIdentifier: "longButtonCell")
        self.mytableView.register(SignUpButtonCell.classForCoder(), forCellReuseIdentifier: "signButtonUpCell")
        self.mytableView.register(EmailButtonCell.classForCoder(), forCellReuseIdentifier: "EmailButtonCell")
        self.mytableView.register(FacebookButtonCell.classForCoder(), forCellReuseIdentifier: "FacebookButtonCell")
        self.mytableView.register(EmailInputTFCell.classForCoder(), forCellReuseIdentifier: "EmailInputCell")
        self.mytableView.register(NameInputTFCell.classForCoder(), forCellReuseIdentifier: "NameInputCell")
        self.mytableView.register(PasswordInputTFCell.classForCoder(), forCellReuseIdentifier: "PasswordInputCell")
        self.mytableView.register(SegmentationLineCell.classForCoder(), forCellReuseIdentifier: "SegmentationCell")
        self.mytableView.register(IsolationLineViewCell.classForCoder(), forCellReuseIdentifier: "IsolationCell")
        self.mytableView.register(SignUpLabelCell.classForCoder(), forCellReuseIdentifier: "signUpLabelCell")
        self.mytableView.register(DetailLabelCell.classForCoder(), forCellReuseIdentifier: "detailLabelCell")
        self.mytableView.register(TermsButtonCell.classForCoder(), forCellReuseIdentifier: "termsButtonCell")
        self.mytableView.register(HaveAccountLabelCell.classForCoder(), forCellReuseIdentifier: "haveAccountLabelCell")
        self.mytableView.register(LoginHereLableCell.classForCoder(), forCellReuseIdentifier: "loginHereLableCell")
        self.mytableView.register(ForgotPasswordLabelCell.classForCoder(), forCellReuseIdentifier: "forgotPasswordLabelCell")
        self.mytableView.register(ResetHereLabelCell.classForCoder(), forCellReuseIdentifier: "resetHereLabelCell")
        self.mytableView.register(NoAccountYetLabelCell.classForCoder(), forCellReuseIdentifier: "noAccountYetLabelCell")
        self.mytableView.register(SignUpNowLabelCell.classForCoder(), forCellReuseIdentifier: "signUpNowLabelCell")
        
        
        cellHeights = [SignUpLabelCell.init(style: .default, reuseIdentifier: "").cellHeight,DetailLabelCell.init(style: .default, reuseIdentifier: "").cellHeight,CGFloat.init(63.0/665.0 * kScreenHeight),CGFloat.init(50.0),CGFloat.init(50.0),TermsButtonCell.init(style: .default, reuseIdentifier: "").cellHeight,CGFloat.init(11.0),HaveAccountLabelCell.init(style: .default, reuseIdentifier: "").cellHeight,LoginHereLableCell.init(style: .default, reuseIdentifier: "").cellHeight]
        
    }

    
    @IBAction func leftBarButton(barButton:UIBarButtonItem) -> Void {
        cells = ["signUpLabelCell","detailLabelCell","cell","FacebookButtonCell","EmailButtonCell","termsButtonCell","SegmentationCell","haveAccountLabelCell","loginHereLableCell"]
        
        cellHeights = [SignUpLabelCell.init(style: .default, reuseIdentifier: "").cellHeight,DetailLabelCell.init(style: .default, reuseIdentifier: "").cellHeight,CGFloat.init(63.0/665.0 * kScreenHeight),CGFloat.init(50.0),CGFloat.init(50.0),TermsButtonCell.init(style: .default, reuseIdentifier: "").cellHeight,CGFloat.init(11.0),HaveAccountLabelCell.init(style: .default, reuseIdentifier: "").cellHeight,LoginHereLableCell.init(style: .default, reuseIdentifier: "").cellHeight]
        var reloadCellIndexPaths = [IndexPath]()
        for i in 0 ..< cells.count { //从0开始到小于5
            
            let cellIndexPath = IndexPath.init(row: i, section: 0)
            
            reloadCellIndexPaths.append(cellIndexPath)
        }
        
        print("i=\(reloadCellIndexPaths)")
        
        mytableView.reloadData()
        mytableView.reloadRows(at: reloadCellIndexPaths, with: .fade)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    	
        let cell:UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: cells[indexPath.row],for:indexPath )
        
        //cell?.textLabel?.text = String.localizedStringWithFormat("行数：%ld", indexPath.row)
        //cell?.detailTextLabel?.text = "输入内容"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 170.0/665.0 * kScreenHeight
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    	
    	
        return cellHeights[indexPath.row] as! CGFloat
    }
	
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell:UITableViewCell? = tableView.cellForRow(at: indexPath)
        let cellReuseIdentifier:NSString = cell?.reuseIdentifier as NSString!
        
        print("重用标示符号\(cellReuseIdentifier)")
        
        if cellReuseIdentifier.isEqual(to: "loginHereLableCell") {
            cells = ["FacebookButtonCell","IsolationCell","EmailInputCell","PasswordInputCell","longButtonCell","forgotPasswordLabelCell","resetHereLabelCell","SegmentationCell","noAccountYetLabelCell","signUpNowLabelCell"]
            
            let forgotHeight = ForgotPasswordLabelCell.init(style: .default, reuseIdentifier: "").cellHeight
            let resetHeght = ResetHereLabelCell.init(style: .default, reuseIdentifier: "").cellHeight
            let noAccountHeight = NoAccountYetLabelCell.init(style: .default, reuseIdentifier: "").cellHeight
            let signUpHeight = SignUpNowLabelCell.init(style: .default, reuseIdentifier: "").cellHeight
            cellHeights = [CGFloat.init(50.0),CGFloat.init(21.0),CGFloat.init(50.0),CGFloat.init(50.0),CGFloat.init(50.0),forgotHeight,resetHeght,CGFloat.init(21.0),noAccountHeight,signUpHeight]
        }else if cellReuseIdentifier.isEqual(to: "resetHereLabelCell") {
            cells = ["signUpLabelCell","detailLabelCell","cell","FacebookButtonCell","EmailButtonCell","termsButtonCell","SegmentationCell","haveAccountLabelCell","loginHereLableCell"]
            
            cellHeights = [SignUpLabelCell.init(style: .default, reuseIdentifier: "").cellHeight,DetailLabelCell.init(style: .default, reuseIdentifier: "").cellHeight,CGFloat.init(63.0/665.0 * kScreenHeight),CGFloat.init(50.0),CGFloat.init(50.0),TermsButtonCell.init(style: .default, reuseIdentifier: "").cellHeight,CGFloat.init(11.0),HaveAccountLabelCell.init(style: .default, reuseIdentifier: "").cellHeight,LoginHereLableCell.init(style: .default, reuseIdentifier: "").cellHeight]
        }else if cellReuseIdentifier.isEqual(to: "signUpNowLabelCell") {
            cells = ["EmailInputCell","NameInputCell","PasswordInputCell","signButtonUpCell","termsButtonCell"]
            
            let termsHeight = TermsButtonCell.init(style: .default, reuseIdentifier: "").cellHeight
            cellHeights = [CGFloat.init(50.0),CGFloat.init(50.0),CGFloat.init(50.0),CGFloat.init(50.0),termsHeight]
        }else {
            return
        }
        
        var reloadCellIndexPaths = [IndexPath]()
        for i in 0 ..< cells.count { //从0开始到小于5
            
            let cellIndexPath = IndexPath.init(row: i, section: 0)
            
            reloadCellIndexPaths.append(cellIndexPath)
        }
        
        print("i=\(reloadCellIndexPaths)")
        
        tableView.reloadData()
        tableView.reloadRows(at: reloadCellIndexPaths, with: .fade)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

