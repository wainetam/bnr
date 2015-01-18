//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Waine Tam on 12/12/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation BNRQuizViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    // call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self) {
        // create two arrays filled with questions and answers
        // and make the pointers point to them
        self.questions = @[@"From what is cognac made?", @"What is 7+7", @"What is the capital of Vermont"];
        self.answers = @[@"Grapes", @"14", @"Montpelier"];
    }
    
    // return the address of the new object
    return self;
}

- (IBAction)showQuestion:(id)sender {
    // step to the next question
    self.currentQuestionIndex++;
    
    // am i past the last question?
    if(self.currentQuestionIndex == [self.questions count]) {
        // go back to first question
        self.currentQuestionIndex = 0;
    }
    
    // get the string at that index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    // display the string in the question label
    self.questionLabel.text = question;
    
    // reset answer label
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender {
    // what is the answer to the current question
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    // display it in the answer label
    self.answerLabel.text = answer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
