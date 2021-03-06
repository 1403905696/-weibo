
//
//  OUAccount.m
//  新浪微博
//
//  Created by o3 on 15/4/13.
//  Copyright (c) 2015年 OU. All rights reserved.
//

#import "OUAccount.h"
@implementation OUAccount

+(id)accountWithDict:(NSDictionary *)dict{
//    if (self==[super init]) {
//        self.access_token=@"111";//dict[@"access_token"];
//        self.expires_in=@"111";//dict[@"expires_in"];
//        self.uid=@"111";//dict[@"uid"];
//        self.createTime=[NSDate date];
//    }
//    return self;
    OUAccount *account=[[self alloc] init];
    account.access_token=dict[@"access_token"];
    account.expires_in=dict[@"expires_in"];
    account.uid=dict[@"uid"];
    return account;
}
/**
 *  归档，将对象存储到沙盒
 *
 *  @param encoder <#encoder description#>
 */
- (void)encodeWithCoder:(NSCoder *)encoder{
    [encoder encodeObject:self.access_token forKey:@"access_token"];
    [encoder encodeObject:self.expires_in forKey:@"expires_in"];
    [encoder encodeObject:self.uid forKey:@"uid"];
    [encoder encodeObject:self.createTime forKey:@"createTime"];
    [encoder encodeObject:self.userName forKey:@"name"];
}
/**
 *  解档，从沙盒中获取对象
 *
 *  @param coder <#coder description#>
 *
 *  @return <#return value description#>
 */
- (id)initWithCoder:(NSCoder *)decoder;{
    if (self==[super init]) {
        self.access_token=[decoder decodeObjectForKey:@"access_token"];
        self.expires_in=[decoder decodeObjectForKey:@"expires_in"];
        self.uid=[decoder decodeObjectForKey:@"uid"];
        self.createTime=[decoder decodeObjectForKey:@"createTime"];
        self.userName=[decoder decodeObjectForKey:@"name"];
    }
    return self;
    
}
@end
