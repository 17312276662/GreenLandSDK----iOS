//
//  CacheDate.h
//  XHBluetoothSDK
//
//  Created by 欣华pro on 2017/10/15.
//  Copyright © 2017年 xujw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CacheDate : NSObject
@property (nonatomic ,strong)  NSString *mac;
@property (nonatomic ,strong)  NSString *deviceKey;
@property (nonatomic ,assign)  NSInteger manufacturerId;
@property (nonatomic ,strong)  NSString *mobile;
//加载公共设备资源
- (void)loadPublicDeviceWithBuildingId:(NSInteger)buildingId Token:(NSString *)token;
//加载私有设备资源
- (void)loadPrivateDeviceWithMobile:(NSString *)mobile BuildingId:(NSInteger)building Token:(NSString *)token;
@end
