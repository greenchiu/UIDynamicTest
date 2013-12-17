#import "ViewController.h"

static NSString *const kIdentifierForCell =  @"kIdentifierForCell";

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	dynamicBehaviors = @[@"Attachment", @"Attachment2", @"Collision", @"Push", @"Snap", @"Custom"];

	[self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kIdentifierForCell];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [dynamicBehaviors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kIdentifierForCell];
	cell.textLabel.text = dynamicBehaviors[indexPath.row];
	return cell;
}

#pragma mark - 
#pragma mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSString *className = [NSString stringWithFormat:@"%@BehaviorViewController", dynamicBehaviors[indexPath.row]];
	Class targetClass = NSClassFromString(className);
	id viewController = [[targetClass alloc] init];
	[viewController setTitle:dynamicBehaviors[indexPath.row]];
	[self.navigationController pushViewController:viewController animated:YES];
}

@end
