//
//  contentModel.h
//  XHBluetoothSDK
//
//  Created by 欣华pro on 2017/10/15.
//  Copyright © 2017年 xujw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ResourceKeyModel.h"
@interface contentModel : NSObject
@property (nonatomic ,strong)  NSArray *content;
@property (nonatomic ,strong) ResourceKeyModel *resourceKeys;
@end
