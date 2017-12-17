//
//  ViewController.m
//  ProtobufDemo
//
//  Created by WangJie on 2017/12/14.
//  Copyright © 2017年 SnoopPanda. All rights reserved.
//

#import "ViewController.h"
#import "Person.pbobjc.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *person = [[Person alloc] init];
    person.id_p = 11;
    person.name = @"xiaoming";
    person.email = @"xiaoming@gmail.com";
    NSData *data = [person data];
    
    Person *parsePerson = [Person parseFromData:data error:nil];
    NSLog(@"id = %d , name = %@, email= %@", parsePerson.id_p, parsePerson.name, parsePerson.email);
}

@end
