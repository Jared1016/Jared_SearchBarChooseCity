//
//  JaredChooseCityDelegate.h
//  Jared_SearchBar
//  选择城市相关代理
//  Created by Jared on 16/3/3.
//  Copyright © 2016年 Jared. All rights reserved.
//

#import <Foundation/Foundation.h>


@class JaredCity;
@class JaredChooseCityController;

@protocol JaredChooseCityDelegate <NSObject>

- (void) cityPickerController:(JaredChooseCityController *)chooseCityController
                didSelectCity:(JaredCity *)city;

- (void) cityPickerControllerDidCancel:(JaredChooseCityController *)chooseCityController;

@end

@protocol JaredCityGroupCellDelegate <NSObject>

- (void) cityGroupCellDidSelectCity:(JaredCity *)city;

@end
