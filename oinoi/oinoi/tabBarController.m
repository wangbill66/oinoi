//
//  tabBarController.m
//  oinoi
//
//  Created by Bill on 8/16/15.
//  Copyright (c) 2015 Bill. All rights reserved.
//

#import "tabBarController.h"

@interface tabBarController ()

@end

@implementation tabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[UITabBar appearance] setTintColor:[UIColor whiteColor]];
//    [[UITabBar appearance] setBarTintColor:[UIColor colorWithRed:93/255.0f green:189/255.0f blue:249/255.0f alpha:1.0f]];
    
    [[UITabBar appearance] setBarTintColor:[UIColor blackColor]];
    
    UIColor * unselectedColor = [UIColor colorWithRed:184/255.0f green:224/255.0f blue:242/255.0f alpha:1.0f];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor grayColor] } forState:UIControlStateNormal];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] } forState:UIControlStateSelected];
    
    // set color of unselected text
//    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:unselectedColor, NSForegroundColorAttributeName, nil]
//                                             forState:UIControlStateNormal];
//    
//    // generate a tinted unselected image based on image passed via the storyboard
//    for(UITabBarItem *item in self.tabBar.items) {
//        // use the UIImage category code for the imageWithColor: method
//        item.image = [[item.selectedImage imageWithColor:unselectedColor] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
