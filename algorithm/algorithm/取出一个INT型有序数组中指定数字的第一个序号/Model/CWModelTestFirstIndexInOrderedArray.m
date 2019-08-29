//
//  CWModelTestFirstIndexInOrderedArray.m
//  algorithm
//
//  Created by 大新 on 2019/8/29.
//  Copyright © 2019 com.wood.colorful. All rights reserved.
//

#import "CWModelTestFirstIndexInOrderedArray.h"


#define iCWMTFIIOA_From 0

#define iCWMTFIIOA_To 100

#define iCWMTFIIOA_MaxCount 30

@implementation CWModelTestFirstIndexInOrderedArray


/**
 * 生成一个 iCWMTFIIOA_From ~iCWMTFIIOA_To之间的数组 ，数字
 * 数组元素最多定义为iCWMTFIIOA_MaxCount
 */
- (instancetype) init{

    if (self = [super init]) {

        self.m_num = [self getRandomNumber:iCWMTFIIOA_From to:iCWMTFIIOA_To];

        self.m_array = [NSMutableArray array];

        int iInsert = [self getRandomNumber:iCWMTFIIOA_From to:iCWMTFIIOA_To];

        self.m_index = -1;
        while (self.m_array.count < iCWMTFIIOA_MaxCount && iInsert < iCWMTFIIOA_To) {

            [_m_array addObject:[NSString stringWithFormat:@"%d",iInsert]];


            if (iInsert == self.m_num) {
                self.m_index = (int)self.m_array.count - 1;
            }

            iInsert = [self getRandomNumber:iInsert to:iCWMTFIIOA_To];
        }

    }

    return self;
}

-(int)getRandomNumber:(int)from to:(int)to{

    return (int)(from + (arc4random() % (to-from + 1)));
}
@end
