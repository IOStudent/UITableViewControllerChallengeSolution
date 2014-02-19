//
//  CSChallengeSolutionTableViewControler.m
//  UITableViewControllerChallengeSolution
//
//  Created by Anca Negrean on 2/19/14.
//  Copyright (c) 2014 Radu Negrean. All rights reserved.
//

#import "CSChallengeSolutionTableViewControler.h"

@interface CSChallengeSolutionTableViewControler ()

@end

@implementation CSChallengeSolutionTableViewControler

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//Adjust the data source methods numberOfSectionsInTableView: and numberOfRowsInSection:. The TableView should display three sections: Section 0 should have 2 rows; Section 1 should have 1 row; Section 2 should have 3 rows


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 3;
    
    }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    if (section ==0){
        return 2;}
    else if (section ==1){
        return 1;
    }
    else {
        return 3;
    }
}

//Adjust the data source method cellForRowAtIndexPath:.
//
//Section 1's cells should display the text “I am in section 0”.
//Section 2's cells should display “another section”.
//Section 3's cells  should display the word cell and the current row number. Use a format string and pass in NSIndexPath’s property row.
//Update the cell’s textColor for section 1 to be red, the cells in section 2 should be blue, and cells in section 3 should be yellow.

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (indexPath.section ==0){
        cell.textLabel.text= @"I am in section 0.";
        cell.backgroundColor =[UIColor redColor];
    }
    else if (indexPath.section==1)
    {
        cell. textLabel.text = @"another section";
        cell.backgroundColor=[UIColor blueColor];
    }
    else{
        cell.textLabel.text =[NSString stringWithFormat:@"Row %i", indexPath.row];
        cell.backgroundColor=[UIColor yellowColor]; 
    }
    
    
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
