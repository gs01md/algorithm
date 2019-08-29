//
//  CWFirstIndexInOrderedArray.m
//  algorithm
//
//  Created by 大新 on 2019/8/29.
//  Copyright © 2019 com.wood.colorful. All rights reserved.
//

#import "CWFirstIndexInOrderedArray.h"

@implementation CWFirstIndexInOrderedArray

//问题：如果通过AI的方式怎么解决这个问题

/**
 * 找到有序数组*（升序）中第一个指定数字的下标
 * 主要运用二分法
 * @param num : 指定的数字
 * @param array : 有序的数组，升序
 * @return 返回值：如果无效，则返回-1；否则，返回正常下标
 */
+ (int)interface_findFirstNum:(int)num inOrderedArray:(NSArray *)array {

    /**
     * 返回的下标
     */
    int iIndexReturn = -1;

    /**
     * 二分法的第一个元素的下标和最后一个元素的下标
     */
    int iIndexFirst =0 , iIndexLast = (int)array.count -1;

    /**
     * 对一些特殊情况进行判断，保证程序的健壮性和快速性
     * 如果array无效或者个数小于等于0，则没必要遍历
     * 如果第一个小于4 或者最后一个大于4， 也没必要进行遍历了
     */
    if (!array || array.count <= 0 || [array[iIndexFirst] intValue] > num || [array[iIndexLast] intValue] < num) {

        return -1;

    }else if ([array[iIndexFirst] intValue] == num ) {

        //由于if 耗性能，所以用else if 而不是在下面单独用if
        //如果第一个为指定值， 则没必要继续往下进行了，快速返回
        return iIndexFirst;

    }
//    else if ([array[iIndexLast] intValue] == num){
//
//        //由于if 耗性能，所以用else if 而不是在下面单独用if
//
//        //取出前面的值，看看还有没有等于num的情况
//        while (iIndexLast-- > iIndexFirst && [array[iIndexLast] intValue] == num) {
//            iIndexReturn = iIndexLast;
//        }
//        return iIndexReturn;
//
//    }

    /** 已经优化掉，没有上面的性能好

     if ((int)array[iIndexFirst] == num ) {

     //由于 if 耗性能，所以用 else if 而不是在下面单独用 if；
     //如果第一个为指定值， 则没必要继续往下进行了，快速返回。

     return iIndexFirst;
     }

     if ((int)array[iIndexLast] == num){

     //由于if 耗性能，所以用else if 而不是在下面单独用if
     return iIndexLast;
     }

     */

    /**
     * 判断如果 iIndexFirst < iIndexLast，表示还需要继续遍历；
     * 否则，如果 iIndexFirst >= iIndexLast, 表示已经遍历完毕，
     * 没有继续下去的必要了
     */

    /**
     * 有了’起点‘和’终点‘，只要在中间找到一个值就可以进行二分法处理
     * 找到中间一个点，可以跟指定值进行比较，然后判断取前一段还是后一段数据
     */

    /**
     * 循环判断是重点，要保证都循环到， 并且防止死循环的发生
     * 根据与num的对比，来改变iIndexFirst 或者 iIndexLast的值，然后进行下次循环
     */
    while (iIndexFirst + 1 < iIndexLast) {

        /**
         * 取中间一个点的值与传入值num进行比较
         */
        int iMiddle = (iIndexLast - iIndexFirst)/2 + iIndexFirst;

        int iTemp = [array[iMiddle] intValue];


        /**
         * 分三种情况，等于、大于、小于
         */
        if(iTemp == num){

            iIndexReturn = iMiddle;

            //取出前面的值，看看还有没有等于num的情况
            while (iMiddle-- > iIndexFirst && [array[iMiddle] intValue] == num) {
                iIndexReturn = iMiddle;
            }

            break;

        }else if(iTemp > num){
            //说明可能在前半段，更改 iIndexLast的值
            iIndexLast = iMiddle;

        }else if(iTemp < num){

            //说明可能在后半段，更改 iIndexFirst的值
            iIndexFirst = iMiddle;
        }

    }


    return iIndexReturn;
}

+ (CWModelTestFirstIndexInOrderedArray *)test_data_random{

    return [CWModelTestFirstIndexInOrderedArray new];
}

@end
