//
//  OUUser.h
//  新浪微博
//
//  Created by o3 on 15/4/18.
//  Copyright (c) 2015年 OU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OUUser : NSObject

/**
 *  字符串型的用户UID
 */
@property (nonatomic,copy) NSString *idstr;
/**
 *  友好显示名称
 */
@property (nonatomic,copy) NSString *name;
/**
 *  用户头像地址（中图）
 */
@property (nonatomic,copy) NSString *profile_image_url;

-(instancetype) initWithDict:(NSDictionary *)dict;

+(instancetype) userWithDict:(NSDictionary *)dict;
@end
