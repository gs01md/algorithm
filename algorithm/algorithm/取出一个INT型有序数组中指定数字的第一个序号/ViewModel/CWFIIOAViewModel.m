//
//  CWFIIOAViewModel.m
//  algorithm
//
//  Created by 大新 on 2019/8/29.
//  Copyright © 2019 com.wood.colorful. All rights reserved.
//

#import "CWFIIOAViewModel.h"

@interface CWFIIOAViewModel ()



@end

static CWUBModel * static_model;

@implementation CWFIIOAViewModel

-(CWUBModel *)interface_getShowModel{

    CWUBModel * temp = [CWUBModel new];
    NSMutableArray * data = [NSMutableArray new];

    /**
     * 获取随机数组、指定数字、指定数字的序号
     */
    _m_modelArray = [CWModelTestFirstIndexInOrderedArray new];

    [self func_firstIndexInOrdewredArray:data withModel:_m_modelArray];
    [self func_list:data withModel:_m_modelArray];

    if (data.count>0) {
        [temp.m_array_show addObject:data];
    }

    return temp;
}


- (CWUBCell_TitleCenter_Model *)func_firstIndexInOrdewredArray:(NSMutableArray *)data withModel:(CWModelTestFirstIndexInOrderedArray * )model{

    CWUBCell_TitleCenter_Model *model3 = [CWUBCell_TitleCenter_Model new];

    NSString * str = [NSString stringWithFormat:@"指定的数字：%d, 数组长度：%lu，指定数字的序号：%d\n数组列表如下：\n点击列表可切换指定数字", model.m_num,(unsigned long)model.m_array.count,model.m_index];
    model3.m_title = [[CWUBTextInfo alloc] initWithText:str font:[UIFont fontWithName:@"PingFang-SC-Medium" size:16] color:CWUBDefineCreate_ColorRGB(0x212121)];

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

- (void)func_list:(NSMutableArray *)data withModel:(CWModelTestFirstIndexInOrderedArray * )model{


    for(int i=0; i<model.m_array.count; i++){

        NSNumber * sNum = model.m_array[i];

        CWUBCell_TitleLeft_InfoLeft_Model *model3 = [CWUBCell_TitleLeft_InfoLeft_Model new];

        NSString *title = [NSString stringWithFormat:@"%d 下标", i];
        model3.m_title = [[CWUBTextInfo alloc] initWithText:title font:[UIFont fontWithName:@"PingFang-SC-Medium" size:18] color:CWUBDefineCreate_ColorRGB(0x212121)];

        model3.m_info = [[CWUBTextInfo alloc] initWithText:[NSString stringWithFormat:@"%@", sNum] font:[UIFont fontWithName:@"PingFang-SC-Medium" size:18] color:CWUBDefineCreate_ColorRGB(0x212121)];

        //model3.m_info.m_margin_top = CWUBDefine_Width(15);


        model3.m_title.m_margin_left = CWUBDefine_Width(15);
        model3.m_title.m_margin_right = CWUBDefine_Width(1);
        model3.m_title.m_width = CWUBDefine_Width(270);
        model3.m_bottomLineInfo.m_height = 1;
        model3.m_bottomLineInfo.m_color = CWUBDefineCreate_ColorRGB(0xF4F5F7);
        model3.m_bottomLineInfo.m_margin_left = 1;
        model3.m_bottomLineInfo.m_margin_right = 1;

        model3.m_event_opt_code = [NSString stringWithFormat:@"%@", sNum];

        [data addObject:model3];

    }


}


+ (CWUBModel *)interface_model{
    if (!static_model) {
        static_model = [CWUBModel new];
    }


    return static_model;
}

+ (CWUBModel *)interface_addOne{

    if (!static_model) {
        static_model = [CWUBModel new];
    }
    NSMutableArray * data = [NSMutableArray new];

    [CWFIIOAViewModel func_firstIndexInOrdewredArray:data];

    if (data.count>0) {
        [static_model.m_array_show addObject:data];
    }

    return static_model;
}


+ (CWUBCell_TitleCenter_Model *)func_firstIndexInOrdewredArray:(NSMutableArray *)data{

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
