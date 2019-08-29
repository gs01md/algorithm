//
//  CWFIIOAViewModel.h
//  algorithm
//
//  Created by 大新 on 2019/8/29.
//  Copyright © 2019 com.wood.colorful. All rights reserved.
//

#import "CWUBViewModelBase.h"
#import "CWFirstIndexInOrderedArray.h"

NS_ASSUME_NONNULL_BEGIN

@interface CWFIIOAViewModel : CWUBViewModelBase

@property(nonatomic, strong)CWModelTestFirstIndexInOrderedArray * m_modelArray;

+ (CWUBModel *)interface_model;

+ (CWUBModel *)interface_addOne;

@end

NS_ASSUME_NONNULL_END
