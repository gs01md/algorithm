//
//  CWFIIOAController.m
//  algorithm
//
//  Created by 大新 on 2019/8/29.
//  Copyright © 2019 com.wood.colorful. All rights reserved.
//

#import "CWFIIOAController.h"
#import "CWFirstIndexInOrderedArray.h"
#import "CWFIIOAViewModel.h"

@interface CWFIIOAController ()

@property(nonatomic, strong)UIButton * btn1;
@property(nonatomic, strong)UIButton * btn2;

@property(nonatomic, strong)CWFIIOAViewModel * m_vm;



@end

@implementation CWFIIOAController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor lightGrayColor];

    [self interface_addNaviBarBackTitle:@"获取Int升序数组某值的第一下标"];
    self.m_navigationBar.titleLabelFont = [UIFont fontWithName:@"PingFangSC-Medium" size:12];
    [self interface_addTableViewWithTop:5 hasTabbar:YES hasNavi:YES];
    self.m_tableView.backgroundColor = [UIColor whiteColor];

    [self.view addSubview:self.btn1];
    [self.view addSubview:self.btn2];
    [_btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(15);
        make.width.equalTo(@(150));
        make.bottom.equalTo(self.view.mas_bottom).offset(-10);
    }];

    [_btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view).offset(-15);
        make.width.equalTo(@(150));
        make.bottom.equalTo(self.view.mas_bottom).offset(-10);
    }];

}

- (UIButton *)btn1{

    if (!_btn1) {

        float fLeft   = 100;
        float fTop    = 100;
        float fWidth  = 100;
        float fHeight = 50;
        CGRect rect = CGRectMake(fLeft, fTop, fWidth, fHeight);
        _btn1 = [[UIButton alloc ] initWithFrame:rect];
        [_btn1 setTitle:@"生成随机列表" forState:UIControlStateNormal];
        _btn1.backgroundColor = [UIColor blueColor];
        [_btn1 addTarget:self action:@selector(event1) forControlEvents:UIControlEventTouchUpInside];
    }


    return _btn1;

}

- (UIButton *)btn2{
    if (!_btn2) {

        float fLeft   = 100;
        float fTop    = 100;
        float fWidth  = 100;
        float fHeight = 50;
        CGRect rect = CGRectMake(fLeft, fTop, fWidth, fHeight);
        _btn2 = [[UIButton alloc ] initWithFrame:rect];
        [_btn2 setTitle:@"验证算法" forState:UIControlStateNormal];
        _btn2.backgroundColor = [UIColor blueColor];
        [_btn2 addTarget:self action:@selector(event2) forControlEvents:UIControlEventTouchUpInside];
    }


    return _btn2;

}

- (CWFIIOAViewModel *)m_vm{

    if (!_m_vm) {
        _m_vm = [CWFIIOAViewModel new];
    }

    return _m_vm;
}

/**
* cell 点击事件
*/
- (void)CWUBControllerBase_clickWithCode:(NSString *)code{


    if (code.length > 0 ) {
        self.m_vm.m_modelArray.m_num = [code intValue];

        [ColorfulWoodAlert showAlertAutoHideWithTitle:[NSString stringWithFormat:@"验证的数字已经切换为：%d",self.m_vm.m_modelArray.m_num] afterDelay:2];
    }

}

- (void)event1{

    [self interface_updateWithModel:[self.m_vm interface_getShowModel]];



}

- (void)event2{


    int i = [CWFirstIndexInOrderedArray interface_findFirstNum:self.m_vm.m_modelArray.m_num inOrderedArray:self.m_vm.m_modelArray.m_array];

    [ColorfulWoodAlert showAlertAutoHideWithTitle:[NSString stringWithFormat:@"算法验证的序号为：%d",i] afterDelay:2];

}

@end
