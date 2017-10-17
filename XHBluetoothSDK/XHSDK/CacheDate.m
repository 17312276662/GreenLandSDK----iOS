//
//  CacheDate.m
//  XHBluetoothSDK
//
//  Created by 欣华pro on 2017/10/15.
//  Copyright © 2017年 xujw. All rights reserved.
//

#import "CacheDate.h"
#import "JWHttpTool.h"
#import "MJExtension.h"
#import "contentModel.h"
#define HTTP_CONECT(x,y)            [NSString stringWithFormat:@"%@%@",x,y]
#define BASE_URL                    @"http://IP:PORT/LD-PermissionSystem/appApi"
@implementation CacheDate

- (void)loadPublicDeviceWithBuildingId:(NSInteger)buildingId Token:(NSString *)token{
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"buildingId"] = [NSString stringWithFormat:@"%ld", buildingId];
    params[@"token"] = token;
    [JWHttpTool post:HTTP_CONECT(BASE_URL,@"/queryPubResByBuildingId") params:params success:^(id json) {
        //contentModel *model = [contentModel mj_objectArrayWithKeyValuesArray:json];
       // self.mac = model.content[0].mac;
       // self.deviceKey = model.content[0].password;
       // self.manufacturerId = model.content.manufacturerId;
        NSLog(@"联网加载的mac:%@",_mac);
    } failure:^(NSError *error) {
        NSLog(@"稍后再试");
    }];
}

- (void)loadPrivateDeviceWithMobile:(NSString *)mobile BuildingId:(NSInteger)buildingId Token:(NSString *)token{
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"mobile"] = self.mobile;
    params[@"buildingId"] = [NSString stringWithFormat:@"%ld", buildingId];
    params[@"token"] = token;
    [JWHttpTool post:HTTP_CONECT(BASE_URL,@"/queryPrivateResByBIdAndMobile") params:params success:^(id json) {
        //contentModel *model = [contentModel mj_objectWithKeyValues:json];
        //self.mac = model.content.mac;
        //self.deviceKey = model.content.password;
        //self.manufacturerId = model.content.manufacturerId;
        NSLog(@"联网加载的mac:%@",_mac);
    } failure:^(NSError *error) {
        NSLog(@"稍后再试");
    }];
}
@end
