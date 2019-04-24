//
//  ViewController.m
//  CustomeTableViewCell
//
//  Created by JETS Mobile Lab on 4/24/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray * firstLabelArray;
    NSArray * secondLabelArray ;
    NSArray * imageArray ;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     firstLabelArray = @[@"label one",@"label two",@"label three"];
    secondLabelArray = @[@"detailed one",@"detailed two",@"detailed three"];
    imageArray= @[@"zero",@"one",@"two"];
    // Do any additional setup after loading the view, typically from a nib.
    _myTableView.delegate = self ;
    _myTableView.dataSource = self;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [firstLabelArray count];
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
     UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    UILabel * labelOne =[cell viewWithTag:1];
        UILabel * labelTwo =[cell viewWithTag:2];
       UIImageView * img=[cell viewWithTag:3] ;
    
       labelOne.text = [firstLabelArray objectAtIndex:indexPath.row];
        labelTwo.text = [secondLabelArray objectAtIndex:indexPath.row];
         img.image = [UIImage imageNamed: [imageArray objectAtIndex:indexPath.row]];
    
    //cell.textLabel.text = [firstLabelArray objectAtIndex:indexPath.row];
    //cell.textLabel.text = [secondLabelArray objectAtIndex:indexPath.row];
    
    
    return  cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 180;
}


@end
