//
//  CWFirstIndexInOrderedArray.h
//  algorithm
//
//  Created by 大新 on 2019/8/29.
//  Copyright © 2019 com.wood.colorful. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CWModelTestFirstIndexInOrderedArray.h"

NS_ASSUME_NONNULL_BEGIN

@interface CWFirstIndexInOrderedArray : NSObject
/**
 * 找到有序数组*（升序）中第一个指定数字的下标
 * 主要运用二分法
 * @param num : 指定的数字
 * @param array : 有序的数组，升序
 * @return 返回值：如果无效，则返回-1；否则，返回正常下标
 */
+ (int)interface_findFirstNum:(int)num inOrderedArray:(NSArray *)array;

+ (CWModelTestFirstIndexInOrderedArray *)test_data_random;
@end

NS_ASSUME_NONNULL_END
