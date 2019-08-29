//
//  CWUBCell_TitleLeft_ButtonRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/23.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_ButtonRight_Model.h"

@implementation CWUBCell_TitleLeft_ButtonRight_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleLeft_ButtonRight;
    }

    return self;
}

- (CWUBTextInfo*) m_title{

    if (!_m_title) {
        _m_title = [CWUBTextInfo new];
    }

    return _m_title;
}

- (CWUBImageInfo*) m_btnImg{

    if (!_m_btnImg) {
        _m_btnImg = [CWUBImageInfo new];
    }

    return _m_btnImg;
}

+ (CWUBCell_TitleLeft_ButtonRight_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleLeft_ButtonRight_Model *model = [CWUBCell_TitleLeft_ButtonRight_Model new];
    model.m_type = CWUBCellType_TitleLeft_ButtonRight;

    model.m_title = [[CWUBTextInfo alloc] initWithText:@"标题\n标题222222" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];


    NSUInteger loc1 = 0, len1 = 0,loc2 = 0, len2 = 0;
    NSString * str = @"订单：\n", *strT1 = @"笔    金额：";
    len1 = str.length;

    str = [NSString stringWithFormat:@"%@%@",str , strT1];
    loc2 = len1;
    len2 = strT1.length;


    CWUBAttributedTextInfo * info = [[CWUBAttributedTextInfo alloc] initWithText: str];
    model.m_title = info;
    [info interface_addSingle:[[CWUBAttributedSingleRange alloc]
                                initWithRange:NSMakeRange(loc1, len1)
                                attributes:[CWUBAttributedSingleAttribute
                                            createWithName:NSForegroundColorAttributeName
                                            value:CWUBDefineCreate_ColorRGB(0x86ADFB)],
                                [CWUBAttributedSingleAttribute
                                 createWithName:NSFontAttributeName
                                 value:[UIFont fontWithName:@"PingFang-SC-Regular" size:15.]],nil],nil
     ];
    [info interface_addSingle:[[CWUBAttributedSingleRange alloc]
                                initWithRange:NSMakeRange(loc2, len2)
                                attributes:[CWUBAttributedSingleAttribute
                                            createWithName:NSForegroundColorAttributeName
                                            value:CWUBDefineCreate_ColorRGB(0x999999)],
                                [CWUBAttributedSingleAttribute
                                 createWithName:NSFontAttributeName
                                 value:[UIFont fontWithName:@"PingFang-SC-Regular" size:11.]],nil],nil
     ];

    model.m_title.m_margin_left = 50.;
    model.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10];
    model.m_btnImg.m_margin_right = 50.;
    model.m_btnImg.m_margin_top = 24.;
    model.m_btnImg.m_margin_bottom = 24.;
    model.m_title.m_margin_top = 24.;
    model.m_title.m_margin_bottom = 24.;
    
    model.m_bottomLineInfo.m_height = 1.;
    model.m_bottomLineInfo.m_color = [UIColor redColor];
    model.m_bottomLineInfo.m_margin_left = 60.;
    model.m_bottomLineInfo.m_margin_right = 20.;
    model.m_bottomLineInfo.m_margin_top = 20.;

    [data addObject:model];

    return model;
}

+ (CWUBCell_TitleLeft_ButtonRight_Model *)tester_dataWithArray2:(NSMutableArray *)data{

    CWUBCell_TitleLeft_ButtonRight_Model * model3 = [CWUBCell_TitleLeft_ButtonRight_Model new];
    model3.m_type = CWUBCellType_TitleLeft_ButtonRight;
    model3.m_title = [[CWUBTextInfo alloc] initWithText:@"标题" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model3.m_bottomLineInfo.m_color = [UIColor blueColor];
    model3.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"button" width:90. height:40.];
    [data addObject:model3];

    return model3;
}

+ (CWUBCell_TitleLeft_ButtonRight_Model *)tester_dataWithArray3:(NSMutableArray *)data{

    CWUBCell_TitleLeft_ButtonRight_Model * model1 = [CWUBCell_TitleLeft_ButtonRight_Model new];
    model1.m_type = CWUBCellType_TitleLeft_ButtonRight;
    model1.m_title = [[CWUBTextInfo alloc] initWithText:@"完成身份认证，解锁app功能权限" font:[UIFont fontWithName:@"PingFangSC-Regular" size:26.2] color:[CWUBDefine colorBlueDeep]];
    model1.m_title.m_color = [UIColor blueColor];
    model1.m_color_backGround = [UIColor yellowColor];
    model1.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"b2" width:50. height:20.];
    [data addObject:model1];

    return model1;
}
@end
