//
//  AddToDoItemViewController.m
//  ToDoList
//
//  Created by Chris Wong on 10/24/2013.
//
//

#import "AddToDoItemViewController.h"

@interface AddToDoItemViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation AddToDoItemViewController

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if( sender != self.doneButton ) return;
    
    if( self.textField.text.length > 0){
        
        self.toDoItem = [[ToDoItem alloc] init];
        
        self.toDoItem.itemName = self.textField.text;
        
        self.toDoItem.completed = NO;
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
