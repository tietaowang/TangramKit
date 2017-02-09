//
//  RLTest3ViewController.swift
//  TangramKit
//
//  Created by zhangguangkai on 16/5/5.
//  Copyright © 2016年 youngsoft. All rights reserved.
//

import UIKit

class RLTest4ViewController: UIViewController {

    var testTopDockView:UIView!
    
    
    func createLabel(_ title: String, backgroundColor color: UIColor) -> UILabel {
        let v = UILabel()
        v.text = title
        v.backgroundColor = color
        v.textColor = CFTool.color(0)
        v.font = CFTool.font(17)
        v.numberOfLines = 0
        return v
    }
    
    override func loadView() {
        
        /*
         这个例子用来介绍相对布局和滚动视图的结合，来实现滚动以及子视图的停靠的实现，其中主要的方式是通过子视图的属性tg_noLayout来简单的实现这个功能。
         
         这里之所以用相对布局来实现滚动和停靠的原因是，线性布局、流式布局、浮动布局这几种布局都是根据添加的顺序来排列的。一般情况下，前面添加的子视图会显示在底部，而后面添加的子视图则会显示在顶部，所以一旦我们出现这种滚动，且某个子视图固定停靠时，我们一般要求这个停靠的子视图要放在最上面，也就是最后一个.
         */
        
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        self.view = scrollView;
        scrollView.delegate = self;
        
        let rootLayout = TGRelativeLayout()
        rootLayout.tg_padding = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        rootLayout.tg_height.equal(.wrap)
        rootLayout.tg_width.equal(.fill)
        scrollView.addSubview(rootLayout)
        
        //添加色块。
        let v1 = self.createLabel(NSLocalizedString("Scroll the view please", comment: ""), backgroundColor: CFTool.color(1))
        v1.tg_width.equal(.fill)  //填充父视图的剩余宽度。
        v1.tg_height.equal(80)
        rootLayout.addSubview(v1)
        
        
        let v2 = self.createLabel("", backgroundColor: CFTool.color(2))
        v2.tg_width.equal(100%)  //占用父视图宽度的100%
        v2.tg_height.equal(200);
        rootLayout.addSubview(v2)
        
        
        let v3 = self.createLabel("", backgroundColor: CFTool.color(3))
        v3.tg_left.equal(0)
        v3.tg_right.equal(0)    //左右边距为0表示宽度和父视图相等。
        v3.tg_height.equal(800)
        v3.tg_top.equal(v2.tg_bottom)
        rootLayout.addSubview(v3)
        
        
        //这里最后一个加入的子视图作为滚动时的停靠视图。。
        let v4 = self.createLabel(NSLocalizedString("This view will Dock to top when scroll", comment:""), backgroundColor: CFTool.color(4))
        v4.tg_width.equal(rootLayout.tg_width)   //和父视图一样宽。
        v4.tg_height.equal(80)
        v4.tg_top.equal(v1.tg_bottom)
        rootLayout.addSubview(v4)
        self.testTopDockView = v4;
        
        v2.tg_top.equal(v4.tg_bottom)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}


//MARK: - Layout Construction
extension RLTest4ViewController:UIScrollViewDelegate
{
    func scrollViewDidScroll(_ scrollView: UIScrollView)
    {
        //因为这里第一个视图的高度是80外加10的顶部padding，这样这里判断的偏移位置是90.
        if (scrollView.contentOffset.y > 90)
        {
            
            //当偏移的位置大于某个值后，我们将特定的子视图的tg_noLayout设置为true，表示特定的子视图会参与布局，但是不会设置frame值
            //所以当特定的子视图的tg_noLayout设置为true后，我们就可以手动的设置其frame值来达到悬停的能力。
            //需要注意的是这个特定的子视图一定要最后加入到布局视图中去。
            //代码就是这么简单，这么任性。。。
           
                self.testTopDockView.tg_noLayout = true
            
                let rect = self.testTopDockView.frame;
                self.testTopDockView.frame = CGRect(x:rect.origin.x, y:scrollView.contentOffset.y, width:rect.size.width, height:rect.size.height)
            
        }
        else
        {
            self.testTopDockView.tg_noLayout = false
        }

    }

}

