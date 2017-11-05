//
//  EmplesDetailView.h
//  emplesMVC
//
//  Created by Vasily Popov on 10/28/17.
//  Copyright © 2017 Vasily Popov. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol EmplesDetailViewModelProtocol;

@interface EmplesDetailView : UIViewController

@property (nonatomic, strong) id<EmplesDetailViewModelProtocol> viewModel;

@end
