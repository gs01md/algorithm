//
//  CWModelTestFirstIndexInOrderedArray.h
//  algorithm
//  用于返回测试数据，查询的数字，查询数字的第一个下标
//  Created by 大新 on 2019/8/29.
//  Copyright © 2019 com.wood.colorful. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CWModelTestFirstIndexInOrderedArray : NSObject

/**
 * 指定数字的序号
 */
@property(nonatomic, assign)int       m_index;

/**
 * 指定的数字
 */
@property(nonatomic, assign)int              m_num;


/**
 * 生成的随机数组
 */
@property(nonatomic, strong)NSMutableArray         *m_array;


@end

NS_ASSUME_NONNULL_END
