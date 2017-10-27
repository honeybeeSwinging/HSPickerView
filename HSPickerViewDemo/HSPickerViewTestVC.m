//
//  HSPickerViewTestVC.m
//  HSPickerViewDemo
//
//  Created by husong on 2017/10/27.
//  Copyright © 2017年 husong. All rights reserved.
//

#import "HSPickerViewTestVC.h"
#import "HSDatePickerVC.h"
#import "HSAddressPickerVC.h"
#import "HSGenderPickerVC.h"

@interface HSPickerViewTestVC ()<HSDatePickerVCDelegate,HSAddressPickerVCDelegate,HSGenderPickerVCDelegate>

@end

@implementation HSPickerViewTestVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)datePickerView:(id)sender {
    HSDatePickerVC *vc = [[HSDatePickerVC alloc] init];
    vc.delegate = self;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)addressPickerView:(id)sender {
    HSAddressPickerVC *vc = [[HSAddressPickerVC alloc] init];
    vc.delegate = self;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)genderPickerView:(id)sender {
    HSGenderPickerVC *vc = [[HSGenderPickerVC alloc] init];
    vc.delegate = self;
    [self presentViewController:vc animated:YES completion:nil];
}

#pragma mark - HSDatePickerVCDelegate
- (void)datePicker:(HSDatePickerVC*)datePicker
          withYear:(NSString *)year
             month:(NSString *)month
               day:(NSString *)day
{
    NSLog(@"选择了   %@--%@--%@",year,month,day);
}

#pragma mark - HSAddressPickerVCDelegate
-(void)addressPicker:(HSAddressPickerVC*)addressPicker
    selectedProvince:(NSString*)province
                city:(NSString*)city
                area:(NSString*)area
{
    NSLog(@"选择了   %@--%@--%@",province,city,area);
}


#pragma mark - HSGenderPickerVCDelegate
-(void)genderPicker:(HSGenderPickerVC*)genderPicker
    selectedGernder:(NSString*)gender
{
    NSLog(@"选择了   %@",gender);
}


@end
