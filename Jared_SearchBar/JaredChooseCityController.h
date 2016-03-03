//
//  JaredChooseCityController.h
//  Jared_SearchBar
//
//  Created by Jared on 16/3/3.
//  Copyright © 2016年 Jared. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JaredCity.h"
#import "JaredChooseCityDelegate.h"


#define     MAX_COMMON_CITY_NUMBER      8
#define     COMMON_CITY_DATA_KEY        @"JaredCommonCityArray"
#define IOS8 [[[UIDevice currentDevice] systemVersion]floatValue]>=8.0

@interface JaredChooseCityController : UITableViewController

@property (nonatomic, assign)id<JaredChooseCityDelegate> delegate;

/*
 *  定位城市id
 */
@property (nonatomic, strong) NSString *locationCityID;

/*
 *  常用城市id数组,自动管理，也可赋值
 */
@property (nonatomic, strong) NSMutableArray *commonCitys;

/*
 *  热门城市id数组
 */
@property (nonatomic, strong) NSArray *hotCitys;


/*
 *  城市数据，可在Getter方法中重新指定
 */
@property (nonatomic, strong) NSMutableArray *cityDatas;



@end
