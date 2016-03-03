//
//  JaredCity.h
//  Jared_SearchBar
//
//  Created by Jared on 16/3/3.
//  Copyright © 2016年 Jared. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JaredCity : NSObject

/*
 *  城市ID
 */
@property (nonatomic, strong) NSString *cityID;

/*
 *  城市名称
 */
@property (nonatomic, strong) NSString *cityName;

/*
 *  短名称
 */
@property (nonatomic, strong) NSString *shortName;

/*
 *  城市名称-拼音
 */
@property (nonatomic, strong) NSString *pinyin;

/*
 *  城市名称-拼音首字母
 */
@property (nonatomic, strong) NSString *initials;

@end

#pragma mark - JaredCityGroup
@interface JaredCityGroup : NSObject

/*
 *  分组标题
 */
@property (nonatomic, strong) NSString *groupName;

/*
 *  城市数组
 */
@property (nonatomic, strong) NSMutableArray *arrayCitys;

@end
