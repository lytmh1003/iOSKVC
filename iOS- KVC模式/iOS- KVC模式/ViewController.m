//
//  ViewController.m
//  iOS- KVC模式
//
//  Created by 李育腾 on 2022/9/19.
//
#import "Person.h"
#import "ViewController.h"
#import "newPerson.h"
/**
 
 
 
 
 
 */
@interface ViewController () 

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    Person* person = [[Person alloc]init];
//    NSString* name = [person valueForKey:@"name"];
//    NSLog(@"%@", name);
//    [person setValue:@101 forKey:@"pAge"];
//    [person setValue:@120 forKeyPath:@"dog.age"];
    /***
     KVC- 嵌套适用，可以用KeyPath的点语法
     */
    // 麻烦的方法1
//    NSObject* dog = [person valueForKey:@"dog"];
//    id age = [dog valueForKey:@"age"];
//
//    // KVC提供的嵌套方法
//    id age2 = [person valueForKeyPath:@"dog.age"];
//    id age3 = [person valueForKey:@"pAge"];
//    NSLog(@"dog 的年龄是 %@",  age);
//    NSLog(@"keyPath获得的年龄是%@", age2);
    
    
    /**
     KVC批量取值测试
     */
    NSDictionary* pDictionary = @{@"pName":@"Lyt", @"pAge":@"19", @"Sex":@"Girl"};
    newPerson* Nperson = [[newPerson alloc] init];
    [Nperson setValuesForKeysWithDictionary:pDictionary];
    NSLog(@"newPerson.pName: %@", Nperson.pName);
    NSLog(@"newPerson.pAge: %ld", Nperson.pAge);
    NSLog(@"newPerson.pSex: %@", Nperson.pSex);
    
    NSDictionary* returnDictionary = [Nperson dictionaryWithValuesForKeys:@[@"pName", @"pAge", @"pSex"]];
    NSLog(@"returnDictionary%@", returnDictionary);
}


@end
