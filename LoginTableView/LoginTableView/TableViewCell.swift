//
//  TableViewCell.swift
//  LoginTableView
//
//  Created by ningBo Jiang on 17/9/22.
//  Copyright © 2017年 cmcc. All rights reserved.
//

import UIKit

let kScreenHeight = UIScreen.main.bounds.size.height
let kScreenWidth = UIScreen.main.bounds.size.width

let kButtonCellSpace:CGFloat = 5



func x(view:UIView) -> CGFloat {
    return view.frame.origin.x
}
func y(view:UIView) -> CGFloat {
    return view.frame.origin.y
}
func width(view:UIView) -> CGFloat {
    return view.frame.size.width
}
func height(view:UIView) -> CGFloat {
    return view.frame.size.height
}

//MARK:- 空白cell

class TableViewCell: UITableViewCell {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
        self.selectionStyle = .none
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}

//MARK:- 登录按钮

class LoginButtonCell: UITableViewCell {
	
    var loginButton = UIButton()
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        
        let withScale:CGFloat = 280.0/380.0
        let height_with_Scale:CGFloat = 1.0/7.0
        
        
        self.loginButton = UIButton.init(type: .custom)
        self.loginButton.frame = CGRect.init(x: (kScreenWidth - withScale * kScreenWidth)/2, y: kButtonCellSpace, width: withScale * kScreenWidth, height: withScale * kScreenWidth * height_with_Scale)
        self.loginButton .setBackgroundImage(UIImage.init(named: "login"), for: .normal)
        self.loginButton .addTarget(self, action: #selector(LoginButtonCell.clickLoginButton(button:)), for: .touchUpInside)
        self.addSubview(self.loginButton)
        
        self.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
        self.selectionStyle = .none
        
    }
    
    func clickLoginButton(button:UIButton) -> Void {
        print("点击登录按钮")
    }

}

//MARK:- 注册按钮

class SignUpButtonCell: UITableViewCell {

	var signUpButton = UIButton()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        let withScale:CGFloat = 280.0/380.0
        let height_with_Scale:CGFloat = 1.0/7.0
        
        self.signUpButton = UIButton.init(type: .custom)
        self.signUpButton.frame = CGRect.init(x: (kScreenWidth - withScale * kScreenWidth)/2, y: kButtonCellSpace, width: withScale * kScreenWidth, height: withScale * kScreenWidth * height_with_Scale)
        
        self.signUpButton .setBackgroundImage(UIImage.init(named: "sign_up"), for: .normal)
        self.signUpButton .addTarget(self, action: #selector(SignUpButtonCell.clickSignUpButton(button:)), for: .touchUpInside)
        self.addSubview(self.signUpButton)
        
        self.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
        self.selectionStyle = .none
        
    }
    
    func clickSignUpButton(button:UIButton) -> Void {
        print("点击注册按钮")
    }
}

//MARK:- facebook 按钮

class FacebookButtonCell: UITableViewCell {
    
    var facebookButton = UIButton()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let withScale:CGFloat = 280.0/380.0
        let height_with_Scale:CGFloat = 1.0/7.0
        
        self.facebookButton = UIButton.init(type: .custom)
        self.facebookButton.frame = CGRect.init(x: (kScreenWidth - withScale * kScreenWidth)/2, y: kButtonCellSpace, width: withScale * kScreenWidth, height: withScale * kScreenWidth * height_with_Scale)
        
        self.facebookButton .setBackgroundImage(UIImage.init(named: "Facebook"), for: .normal)
        self.facebookButton .addTarget(self, action: #selector(FacebookButtonCell.clickFacebookButton(button:)), for: .touchUpInside)
        self.addSubview(self.facebookButton)
        
        self.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
        self.selectionStyle = .none
    }
    
    func clickFacebookButton(button:UIButton) -> Void {
        print("点击Facebook按钮")
    }
    
}

//MARK:- Email 按钮

class EmailButtonCell: UITableViewCell {
    
    var emailButton = UIButton()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let withScale:CGFloat = 280.0/380.0
        let height_with_Scale:CGFloat = 1.0/7.0
        
        self.emailButton = UIButton.init(type: .custom)
        self.emailButton.frame = CGRect.init(x: (kScreenWidth - withScale * kScreenWidth)/2, y: kButtonCellSpace, width: withScale * kScreenWidth, height: withScale * kScreenWidth * height_with_Scale)
        
        self.emailButton .setBackgroundImage(UIImage.init(named: "email"), for: .normal)
        self.emailButton .addTarget(self, action: #selector(EmailButtonCell.clickEmailButton(button:)), for: .touchUpInside)
        self.addSubview(self.emailButton)
        
        self.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
        self.selectionStyle = .none
    }
    
    func clickEmailButton(button:UIButton) -> Void {
        print("点击Email按钮")
    }
    
}

//MARK:- 输入邮件

class EmailInputTFCell: UITableViewCell {
    
    var inputEmailTF = UITextField()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let withScale:CGFloat = 280.0/380.0
        let height_with_Scale:CGFloat = 1.0/7.0
        
        self.inputEmailTF = UITextField.init(frame: CGRect.init(x: (kScreenWidth - withScale * kScreenWidth)/2, y: kButtonCellSpace, width: withScale * kScreenWidth, height: withScale * kScreenWidth * height_with_Scale))
        self.inputEmailTF.placeholder = "E—mail"
        self.inputEmailTF.borderStyle = .roundedRect
        self.addSubview(self.inputEmailTF)
        
        self.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
        self.selectionStyle = .none
        
    }
}

//MARK:- 名字输入

class NameInputTFCell: UITableViewCell {
    
    var inputNameTF = UITextField()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let withScale:CGFloat = 280.0/380.0
        let height_with_Scale:CGFloat = 1.0/7.0
        
        self.inputNameTF = UITextField.init(frame: CGRect.init(x: (kScreenWidth - withScale * kScreenWidth)/2, y: kButtonCellSpace, width: withScale * kScreenWidth, height: withScale * kScreenWidth * height_with_Scale))
        self.inputNameTF.placeholder = "Name"
        self.inputNameTF.borderStyle = .roundedRect
        self.addSubview(self.inputNameTF)
        
        self.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
        self.selectionStyle = .none
        
    }
}

//MARK:- 密码输入框

class PasswordInputTFCell: UITableViewCell {

    var inputPassword = UITextField()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let withScale:CGFloat = 280.0/380.0
        let height_with_Scale:CGFloat = 1.0/7.0
        
        self.inputPassword = UITextField.init(frame: CGRect.init(x: (kScreenWidth - withScale * kScreenWidth)/2, y: kButtonCellSpace, width: withScale * kScreenWidth, height: withScale * kScreenWidth * height_with_Scale))
        self.inputPassword.placeholder = "Password(main.6 characters)"
        self.inputPassword.borderStyle = .roundedRect
        self.inputPassword.isSecureTextEntry = true
        self.addSubview(self.inputPassword)
        
        self.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
        self.selectionStyle = .none
        
    }
}

//MARK:-  整个分割白线

class SegmentationLineCell: UITableViewCell {

    var lineImageView = UIImageView()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let withScale:CGFloat = 280.0/380.0
        let height_with_Scale:CGFloat = 1.0/280.0
        
        self.lineImageView = UIImageView.init(frame: CGRect.init(x: (kScreenWidth - withScale * kScreenWidth)/2, y: kButtonCellSpace*2, width: withScale * kScreenWidth, height: withScale * kScreenWidth * height_with_Scale))
        self.lineImageView.image = UIImage.init(named: "line_white")
        self.addSubview(self.lineImageView)
        
        self.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
        self.selectionStyle = .none
    }
}

//MARK:- 左右分割
class IsolationLineViewCell: UITableViewCell {

    var lineLeftImageView = UIImageView()
    var lineRightImageView = UIImageView()
    var isolationLabel = UILabel()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let withScale:CGFloat = 280.0/380.0
        let height_with_Scale:CGFloat = 1.0/140.0
        let labelWith:CGFloat = 30
        let labelHeight:CGFloat = 20
        
        
        self.lineLeftImageView = UIImageView.init(frame: CGRect.init(x: (kScreenWidth - withScale * kScreenWidth)/2, y: kButtonCellSpace*2, width: withScale * kScreenWidth / 2.0 - labelWith, height: (withScale * kScreenWidth / 2.0 - labelWith) * height_with_Scale))
        self.lineLeftImageView.image = UIImage.init(named: "line_white")
        self.addSubview(self.lineLeftImageView)
        
        self.isolationLabel = UILabel.init(frame: CGRect.init(x: x(view: self.lineLeftImageView) + width(view: self.lineLeftImageView), y: 0, width: labelWith, height: labelHeight))
        self.isolationLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.isolationLabel.text = "or"
        self.isolationLabel.textAlignment = .center
        self.addSubview(self.isolationLabel)
        
        
        self.lineRightImageView = UIImageView.init(frame: CGRect.init(x: x(view: self.isolationLabel) + width(view: self.isolationLabel), y: kButtonCellSpace, width: withScale * kScreenWidth / 2.0 - labelWith, height: (withScale * kScreenWidth / 2.0 - labelWith) * height_with_Scale))
        self.lineRightImageView.image = UIImage.init(named: "line_white")
        self.addSubview(self.lineRightImageView)
        
        self.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
        self.selectionStyle = .none
    }
}

//MARK:- 展示文字

class ShowLabelCell: UITableViewCell {
    
    var labelView = UILabel()
    
    let withScale:CGFloat = 280.0/380.0
    
    var cellHeight:CGFloat = 0.0
    
    var cellStyle:ShowLabelStyle = .Subtitle
    
    
    enum ShowLabelStyle :Int {
        case Big
        case small
        case smallClick
        case Subtitle
        case SubtitleClick
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.labelView = UILabel.init()
        self.labelView.textAlignment = .center
        self.labelView.textColor = .white
        self.labelView.numberOfLines = 0
        self.addSubview(self.labelView)
        
        self.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
        self.selectionStyle = .none
    }
    
    init(string:String , style:ShowLabelStyle) {
        super.init(style: .default, reuseIdentifier: nil)
        
        self.labelView = UILabel.init()
        self.labelView.textAlignment = .center
        self.labelView.textColor = .white
        self.labelView.numberOfLines = 0
        self.addSubview(self.labelView)
        
        self.setupStyle(string:string ,style: style)
    }
    
    
    func setupStyle(string:String ,style:ShowLabelStyle) -> Void {
    	
        //字体
        switch style {
        case .Big:
            self.labelView.font = UIFont.systemFont(ofSize: 60)
        case .small,.smallClick:
            self.labelView.font = UIFont.systemFont(ofSize: 11)
        default:
            self.labelView.font = UIFont.systemFont(ofSize: 17.0)
            break
        }
        //颜色
        switch style {
        case .smallClick,.SubtitleClick:
            self.labelView.textColor = #colorLiteral(red: 0.8980392157, green: 0.6823529412, blue: 0.1058823529, alpha: 1)
        default:
            self.labelView.textColor = .white
        }
        
        cellStyle = style
        let stringHeight = self.calculateHeight(textString: string)
        self.labelView.frame = CGRect.init(x: (kScreenWidth - withScale * kScreenWidth)/2, y: kButtonCellSpace, width: withScale * kScreenWidth, height: stringHeight)
        self.labelView.text = string
    }
    
    func calculateHeight(textString:String) -> CGFloat {
        
        let string:NSString = textString as NSString
        
        let stringRect = string.boundingRect(with: CGSize.init(width: withScale * kScreenWidth - 20.0, height: 0.0), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSFontAttributeName:self.labelView.font], context: nil)
        cellHeight = stringRect.size.height + kButtonCellSpace*2
        return stringRect.size.height
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        /*if cellStyle == .smallClick || cellStyle == .SubtitleClick {
            if self.isSelected {
                self.labelView.textColor = #colorLiteral(red: 0.8980392157, green: 0.6823529412, blue: 0.1058823529, alpha: 1)
            }else {
                self.labelView.textColor = .white
            }
        }
        */
    }
}


class SignUpLabelCell: ShowLabelCell {
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setupStyle(string: "Sign Up", style: .Big)
    }
}


class DetailLabelCell: ShowLabelCell {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setupStyle(string: "to discover all our tastebud tickling recipes and features.", style: .Subtitle)
    }
}


class TermsButtonCell: ShowLabelCell {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setupStyle(string: "by signing up I accept the terms and conditions", style: .small)
    }
}

class HaveAccountLabelCell: ShowLabelCell {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setupStyle(string: "Already have an account?", style: .Subtitle)
    }
}


class LoginHereLableCell: ShowLabelCell {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setupStyle(string: "Log in here", style: .SubtitleClick)
    }
}

class ForgotPasswordLabelCell: ShowLabelCell {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setupStyle(string: "Forgot your password?", style: .Subtitle)
    }
}

class ResetHereLabelCell: ShowLabelCell {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setupStyle(string: "Reset here", style: .SubtitleClick)
    }
}

class NoAccountYetLabelCell: ShowLabelCell {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setupStyle(string: "No account yet?", style: .Subtitle)
    }
}

class SignUpNowLabelCell: ShowLabelCell {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setupStyle(string: "Sign up now!", style: .SubtitleClick)
    }
}


















