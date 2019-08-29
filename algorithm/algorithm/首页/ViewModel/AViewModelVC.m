//
//  AViewModelVC.m
//  algorithm
//
//  Created by 大新 on 2019/8/29.
//  Copyright © 2019 com.wood.colorful. All rights reserved.
//

#import "AViewModelVC.h"


@implementation AViewModelVC
-(CWUBModel *)interface_getShowModel{

    CWUBModel * temp = [CWUBModel new];
    NSMutableArray * data = [NSMutableArray new];

    [self func_firstIndexInOrdewredArray:data];

    if (data.count>0) {
        [temp.m_array_show addObject:data];
    }

    return temp;
}


- (CWUBCell_TitleCenter_Model *)func_firstIndexInOrdewredArray:(NSMutableArray *)data{

    CWUBCell_TitleCenter_Model *model3 = [CWUBCell_TitleCenter_Model new];

    model3.m_title = [[CWUBTextInfo alloc] initWithText:@"获取升序Int类型数组中指定数的第一个下标" font:[UIFont fontWithName:@"PingFang-SC-Medium" size:18] color:CWUBDefineCreate_ColorRGB(0x212121)];

    model3.m_event_opt_code = AModelFirstVC_orderedArray;
    //model3.m_info.m_margin_top = CWUBDefine_Width(15);


    model3.m_title.m_margin_left = CWUBDefine_Width(15);
    model3.m_title.m_margin_right = CWUBDefine_Width(1);
    model3.m_title.m_width = CWUBDefine_Width(270);
    model3.m_bottomLineInfo.m_height = 1;
    model3.m_bottomLineInfo.m_color = CWUBDefineCreate_ColorRGB(0xF4F5F7);
    model3.m_bottomLineInfo.m_margin_left = 1;
    model3.m_bottomLineInfo.m_margin_right = 1;

    [data addObject:model3];

    return model3;

}

@end
