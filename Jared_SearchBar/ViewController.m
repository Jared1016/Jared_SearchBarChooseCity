//
//  ViewController.m
//  Jared_SearchBar
//
//  Created by Jared on 16/3/3.
//  Copyright © 2016年 Jared. All rights reserved.
//

#import "ViewController.h"
#import "JaredChooseCityController.h"
@interface ViewController ()<JaredChooseCityDelegate>{
    UIButton *chooseCityBtn;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    chooseCityBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    chooseCityBtn.center = self.view.center;
    [chooseCityBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [chooseCityBtn setTitle:@"选择城市" forState:UIControlStateNormal];
    [chooseCityBtn addTarget:self action:@selector(onClickChooseCity:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:chooseCityBtn];
}

- (void)onClickChooseCity:(id)sender {
    
    JaredChooseCityController *cityPickerVC = [[JaredChooseCityController alloc] init];
    [cityPickerVC setDelegate:self];
//    cityPickerVC.delegate = self;
    
    //    cityPickerVC.locationCityID = @"1400010000";
    //    cityPickerVC.commonCitys = [[NSMutableArray alloc] initWithArray: @[@"1400010000", @"100010000"]];        // 最近访问城市，如果不设置，将自动管理
    //    cityPickerVC.hotCitys = @[@"100010000", @"200010000", @"300210000", @"600010000", @"300110000"];
    
    [self presentViewController:[[UINavigationController alloc] initWithRootViewController:cityPickerVC] animated:YES completion:^{
        
    }];
}

#pragma mark - JaredCityPickerDelegate
- (void) cityPickerController:(JaredChooseCityController *)chooseCityController didSelectCity:(JaredCity *)city
{
    [chooseCityBtn setTitle:city.cityName forState:UIControlStateNormal];
    [chooseCityController dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (void) cityPickerControllerDidCancel:(JaredChooseCityController *)chooseCityController
{
    [chooseCityController dismissViewControllerAnimated:YES completion:^{
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
