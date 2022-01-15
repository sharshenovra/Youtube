//
//  ViewController.swift
//  Youtube
//
//  Created by Ruslan Sharshenov on 15.01.2022.
//

import UIKit
import SnapKit
import youtube_ios_player_helper

class ViewController: UIViewController {
    
    private lazy var scrollView = UIScrollView()
    private lazy var totalView = UIView()
    
    // Нижнее меню
    private lazy var blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray6
        return view
    }()
    
    private lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        return view
    }()
    
    private lazy var btn1: UIButton = {
        let view = UIButton(type: .system)
        view.tintColor = .white
        view.setImage(UIImage(named: "Home"), for: .normal)
        return view
    }()
    
    private lazy var btn2: UIButton = {
        let view = UIButton(type: .system)
        view.tintColor = .white
        view.setImage(UIImage(named: "Explore"), for: .normal)
        return view
    }()
    
    private lazy var btn3: UIButton = {
        let view = UIButton(type: .system)
        view.tintColor = .white
        view.setImage(UIImage(named: "add_circle_outline"), for: .normal)
        return view
    }()
    
    private lazy var btn4: UIButton = {
        let view = UIButton(type: .system)
        view.tintColor = .white
        view.setImage(UIImage(named: "Subscription"), for: .normal)
        return view
    }()
    
    private lazy var btn5: UIButton = {
        let view = UIButton(type: .system)
        view.tintColor = .white
        view.setImage(UIImage(named: "Library"), for: .normal)
        return view
    }()
    //
    
    //Верхнее меню
    
    private lazy var blackView1: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray6
        return view
    }()
    
    private lazy var stackView1: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .equalSpacing
        return view
    }()
    
    private lazy var upBtn1: UIButton = {
        let view = UIButton(type: .system)
        view.tintColor = .white
        view.setImage(UIImage(named: "ico-tv"), for: .normal)
        return view
    }()
    
    private lazy var upBtn2: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "notifications_none"), for: .normal)
        return view
    }()
    
    private lazy var upBtn3: UIButton = {
        let view = UIButton(type: .system)
        view.tintColor = .white
        view.setImage(UIImage(named: "search"), for: .normal)
        return view
    }()
    
    private lazy var upBtn4: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Profile"), for: .normal)
        return view
    }()
    
    private lazy var ytLogo: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Logo")
        return view
    }()
    
    private lazy var ytBar: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Tab")
        return view
    }()
    
    //
    
    private lazy var youtubeView1: YTPlayerView = {
        let view = YTPlayerView()
        view.load(withVideoId: "sKfBJXuL414")
        return view
    }()
    
    private lazy var video1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "IMG_1582")
        return view
    }()
    
    private lazy var youtubeView2: YTPlayerView = {
        let view = YTPlayerView()
        view.load(withVideoId: "utmQdfZHUTM")
        return view
    }()
    
    private lazy var video2: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "IMG_1583")
        return view
    }()
    
    private lazy var youtubeView3: YTPlayerView = {
        let view = YTPlayerView()
        view.load(withVideoId: "3hSQf_SF7Rk")
        return view
    }()
    
    private lazy var video3: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "IMG_1584")
        return view
    }()
    
    private lazy var youtubeView4: YTPlayerView = {
        let view = YTPlayerView()
        view.load(withVideoId: "AqXlox4qDVI")
        return view
    }()
    
    private lazy var video4: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "IMG_1585")
        return view
    }()
    
    private lazy var youtubeView5: YTPlayerView = {
        let view = YTPlayerView()
        view.load(withVideoId: "RNNSl3Dk7fg")
        return view
    }()
    
    private lazy var video5: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "IMG_1586")
        return view
    }()
    
    
    override func viewDidLoad() {
        view.backgroundColor = .systemGray6
       setupSubViews()
    }


    func setupSubViews(){
        
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(view.frame.height / -30)
            make.edges.equalToSuperview()
            make.bottom.equalToSuperview().offset(view.frame.height / 10)
        }
        
        scrollView.addSubview(totalView)
        totalView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(view.frame.width)
        }
        
        totalView.addSubview(blackView1)
        blackView1.snp.makeConstraints { make in
            make.left.right.top.equalToSuperview()
            make.height.equalToSuperview().dividedBy(10)
        }
        
        stackView1.addArrangedSubview(upBtn1)
        stackView1.addArrangedSubview(upBtn2)
        stackView1.addArrangedSubview(upBtn3)
        stackView1.addArrangedSubview(upBtn4)
        
        totalView.addSubview(stackView1)
        stackView1.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(2.3)
            make.right.equalToSuperview().inset(15)
            make.bottom.equalTo(blackView1).offset(-10)
            make.height.equalToSuperview().dividedBy(30)
        }
        
        blackView1.addSubview(ytLogo)
        ytLogo.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(15)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview().dividedBy(3)
            make.bottom.equalToSuperview().offset(-10)
        }
        
        totalView.addSubview(ytBar)
        ytBar.snp.makeConstraints { make in
            make.top.equalTo(blackView1.snp.bottom)
            make.width.equalToSuperview()
            make.height.equalTo(view.frame.width / 7.5)
        }
        
        //
        totalView.addSubview(youtubeView1)
        youtubeView1.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(view.frame.width / 2)
            make.top.equalTo(ytBar.snp.bottom)
        }
        
        totalView.addSubview(video1)
        video1.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(view.frame.width / 5)
            make.top.equalTo(youtubeView1.snp.bottom)
        }
        
        totalView.addSubview(youtubeView2)
        youtubeView2.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(view.frame.width / 2)
            make.top.equalTo(video1.snp.bottom)
        }
        
        totalView.addSubview(video2)
        video2.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(view.frame.width / 5)
            make.top.equalTo(youtubeView2.snp.bottom)
        }
        
        totalView.addSubview(youtubeView3)
        youtubeView3.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(view.frame.width / 2)
            make.top.equalTo(video2.snp.bottom)
        }
        
        totalView.addSubview(video3)
        video3.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(view.frame.width / 5)
            make.top.equalTo(youtubeView3.snp.bottom)
        }
        
        totalView.addSubview(youtubeView4)
        youtubeView4.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(view.frame.width / 2)
            make.top.equalTo(video3.snp.bottom)
        }
        
        totalView.addSubview(video4)
        video4.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(view.frame.width / 5)
            make.top.equalTo(youtubeView4.snp.bottom)
        }
        
        totalView.addSubview(youtubeView5)
        youtubeView5.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(view.frame.width / 2)
            make.top.equalTo(video4.snp.bottom)
        }
        
        totalView.addSubview(video5)
        video5.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(view.frame.width / 5)
            make.top.equalTo(youtubeView5.snp.bottom)
        }
        totalView.snp.makeConstraints { make in
            make.bottom.equalTo(video5.snp.bottom).offset(20)
        }
        //
        view.addSubview(blackView)
        blackView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.height.equalToSuperview().dividedBy(10)
        }
        
        stackView.addArrangedSubview(btn1)
        stackView.addArrangedSubview(btn2)
        stackView.addArrangedSubview(btn3)
        stackView.addArrangedSubview(btn4)
        stackView.addArrangedSubview(btn5)
        
        view.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview().inset(15)
            make.height.equalToSuperview().dividedBy(10)
        }
        
    }
    
}

