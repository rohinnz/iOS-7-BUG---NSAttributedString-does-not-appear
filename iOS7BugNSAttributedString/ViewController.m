
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableParagraphStyle* paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.alignment = NSTextAlignmentCenter;
    
    NSAttributedString* attrStr = [[NSAttributedString alloc] initWithString:@"Lorem ipsum dolor sit" attributes:
                                   @{NSUnderlineStyleAttributeName:@(NSUnderlineStyleSingle),
                                     NSParagraphStyleAttributeName:paragraph}];
    
    UILabel* myLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 30, 0, 0)];
    myLabel.backgroundColor = [UIColor greenColor];
    myLabel.attributedText = attrStr;
    [myLabel sizeToFit];
    
    [self.view addSubview:myLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
