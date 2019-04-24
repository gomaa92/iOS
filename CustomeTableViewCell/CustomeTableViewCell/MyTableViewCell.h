//
//  MyTableViewCell.h
//  CustomeTableViewCell
//
//  Created by JETS Mobile Lab on 4/24/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *firstLabel;
@property (strong, nonatomic) IBOutlet UILabel *secondLabel;

@property (strong, nonatomic) IBOutlet UIImageView *img;

@end

NS_ASSUME_NONNULL_END
