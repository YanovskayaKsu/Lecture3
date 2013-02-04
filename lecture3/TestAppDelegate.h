//
//  TestAppDelegate.h
//  lecture3
//
//  Created by Yevgen Potapov on 2/4/13.
//  Copyright (c) 2013 Yevgen Potapov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TestViewController;

@interface TestAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) TestViewController *viewController;

@end
