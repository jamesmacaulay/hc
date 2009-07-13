//
//  AppViewController.m
//  hc
//
//  Created by James MacAulay on 13/07/09.
//  Copyright 2009 James MacAulay. All rights reserved.
//

#import "AppViewController.h"
#import "App.h"
#import "ObjectiveSupport.h"

#define LABEL_TAG 1 
#define VALUE_TAG 2


@implementation AppViewController
@synthesize app;

/*
- (id)initWithStyle:(UITableViewStyle)style {
    // Override initWithStyle: if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
    if (self = [super initWithStyle:style]) {
    }
    return self;
}
*/


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = app.name;
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return [self tableView:tableView appPropertyCellForRow:indexPath.row];
    } else {
        return [self tableView:tableView appPropertyCellForRow:indexPath.row];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView appPropertyCellForRow:(int)row {
    static NSString *CellIdentifier = @"AppPropertyCell";
    UILabel *propertyLabel, *valueLabel;
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        UIViewController *c = [[UIViewController alloc] initWithNibName:@"AppPropertyCell" bundle:nil];        
        cell = (UITableViewCell *)c.view;
    }
    propertyLabel = (UILabel *)[cell.contentView viewWithTag:LABEL_TAG]; 
    valueLabel = (UILabel *)[cell.contentView viewWithTag:VALUE_TAG]; 
    
    // Set up the cell...
    switch (row) {
        case 0:
            propertyLabel.text = @"domain";
            valueLabel.text = app.domainName;
            break;
        case 1:
            propertyLabel.text = @"owner";
            valueLabel.text = app.owner;
            break;
        case 2:
            propertyLabel.text = @"dynos";
            valueLabel.text = [app.dynos description];
            break;
        case 3:
            propertyLabel.text = @"created";
            valueLabel.text = [app.createdAt description];
            break;
        case 4:
            propertyLabel.text = @"repo";
            
            valueLabel.text = [self stringFromFileSize:[app.repoSize integerValue]];
            break;
        case 5:
            propertyLabel.text = @"slug";
            valueLabel.text = [self stringFromFileSize:[app.slugSize integerValue]];
            break;
        default:
            break;
    }
	
    return cell;    
}

- (NSString *)stringFromFileSize:(int)theSize {
	float floatSize = theSize;
	if (theSize<1023)
		return([NSString stringWithFormat:@"%i bytes",theSize]);
	floatSize = floatSize / 1024;
	if (floatSize<1023)
		return([NSString stringWithFormat:@"%1.1f KB",floatSize]);
	floatSize = floatSize / 1024;
	if (floatSize<1023)
		return([NSString stringWithFormat:@"%1.1f MB",floatSize]);
	floatSize = floatSize / 1024;
    
	// Add as many as you like
    
	return([NSString stringWithFormat:@"%1.1f GB",floatSize]);
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
	// AnotherViewController *anotherViewController = [[AnotherViewController alloc] initWithNibName:@"AnotherView" bundle:nil];
	// [self.navigationController pushViewController:anotherViewController];
	// [anotherViewController release];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:YES];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


- (void)dealloc {
    [super dealloc];
}


@end

