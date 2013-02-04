//
//  TestViewController.m
//  lecture3
//
//  Created by Yevgen Potapov on 2/4/13.
//  Copyright (c) 2013 Yevgen Potapov. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - UITableView Delegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   // NSLog(@"%d %d", indexPath.section, indexPath.row);
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"TableCell"];
    if (cell == nil)
    {
        NSLog(@"creating cell %d", indexPath.row);
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier: @"TableCell"];

    }
    else
    {
        NSLog(@"re-using cell %d", indexPath.row);
    }
    cell.textLabel.text = [NSString stringWithFormat:@"Cell %d", indexPath.row];
    if (indexPath.row == 1)
    {
        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
        cell.imageView.image = [UIImage imageNamed:@"2012-11-30 18.31.11.png"];
        cell.detailTextLabel.text = @"Эге - гей!!!!";
    }
    else
    {
        cell.accessoryType = UITableViewCellAccessoryNone;
        cell.imageView.image = nil;
        cell.detailTextLabel.text = nil;
    }
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertView* alterView = [[UIAlertView alloc] initWithTitle:@"Внимание!" message:@"Вы выбрали ячейку" delegate: nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alterView show];
}

  
@end
