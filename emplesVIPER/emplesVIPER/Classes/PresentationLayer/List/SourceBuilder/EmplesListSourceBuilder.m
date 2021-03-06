//
//  EmplesListModelDecorator.m
//  emplesMVC
//
//  Created by Vasily Popov on 10/29/17.
//  Copyright © 2017 Vasily Popov. All rights reserved.
//

#import "EmplesListSourceBuilder.h"
#import "EmplesRecreationArea.h"
#import "EmplesListCellModel.h"
#import "EmplesViewCellDecorator.h"

@implementation EmplesListSourceBuilder

+(NSArray*)buildSourceFromItems:(NSArray<EmplesRecreationArea*>*)items
{
    NSMutableArray *sourseItems = [NSMutableArray arrayWithCapacity:items.count];
    for (int index = 0; index < items.count; index ++)
    {
        EmplesRecreationArea *item = items[index];
        EmplesListCellModel *model = [EmplesListCellModel new];
        model.text = item.areaName;
        model.phone = item.areaPhone;
        model.imageURL = item.imageURL;
        EmplesViewCellDecorator *decorator = [EmplesViewCellDecorator decoratedInstanceOf:model];
        decorator.ponsoModel = item;
        [sourseItems addObject:decorator];
    }
    return sourseItems;
}

@end
