//
//  ViewController.m
//  algorithm
//
//  Created by 大新 on 2019/8/29.
//  Copyright © 2019 com.wood.colorful. All rights reserved.
//

#import "ViewController.h"
#import "CWFirstIndexInOrderedArray.h"
#import "CWFIIOAViewModel.h"
#import "AViewModelVC.h"
#import "CWFIIOAController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor lightGrayColor];

    [self interface_addNaviWithTitle:@"算法"];
    [self interface_addTableViewWithTop:5 hasTabbar:NO hasNavi:YES];
    self.m_tableView.backgroundColor = [UIColor whiteColor];



    [self interface_updateWithModel:[[AViewModelVC new] interface_getShowModel]  ];



}


/**
 * cell 点击事件
 */
- (void)CWUBControllerBase_clickWithCode:(NSString *)code{

    UIViewController *vc = nil;

    if ([code isEqualToString:AModelFirstVC_orderedArray]) {

        vc = [CWFIIOAController new];


    }else {
        
    }

    if (vc) {

        [self.navigationController pushViewController:vc animated:YES];
    }
}




@end
