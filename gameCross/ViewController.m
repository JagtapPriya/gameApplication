//
//  ViewController.m
//  gameCross
//
//  Created by Student 6 on 06/04/17.
//  Copyright © 2017 felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    BOOL isFirst;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    isFirst = true;
    count = 0;
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch  = [touches anyObject];
   // CGPoint point = [touch locationInView:self.img1];
    if ([self.img1 pointInside:[touch locationInView:self.img1] withEvent:event]) {
   // self.img1.image = [UIImage imageNamed:@"tick-40143_1280.png"];
        
        [self Addimageonview:_img1];
        
    }
    else if ([self.img2 pointInside:[touch locationInView:self.img2] withEvent:event])
    {
        [self Addimageonview:_img2];
    }
    else if ([self.img3 pointInside:[touch locationInView:self.img3] withEvent:event])
    {
        [self Addimageonview:_img3];
    }
    else if ([self.img4 pointInside:[touch locationInView:self.img4] withEvent:event])
    {
        [self Addimageonview:_img4];
    }
    else if ([self.img5 pointInside:[touch locationInView:self.img5] withEvent:event])
    {
        [self Addimageonview:_img5];
    }
    else if ([self.img6 pointInside:[touch locationInView:self.img6] withEvent:event])
    {
        [self Addimageonview:_img6];
    }
    else if ([self.img7 pointInside:[touch locationInView:self.img7] withEvent:event])
    {
        [self Addimageonview:_img7];
    }
    else if ([self.img8 pointInside:[touch locationInView:self.img8] withEvent:event])
    {
        [self Addimageonview:_img8];
    }
    else if ([self.img9 pointInside:[touch locationInView:self.img9] withEvent:event])
    {
        [self Addimageonview:_img9];
    }
}

-(void)Addimageonview:(UIImageView *)imgvw
{
    count++;
    if (isFirst == true) {
        isFirst = false;
        imgvw.image = [UIImage imageNamed:@"tick-40143_1280.png"];
        _segment.selectedSegmentIndex = 1;
    }
    else
    {
        imgvw.image = [UIImage imageNamed:@"DeleteRed.png"];
        isFirst = true;
        _segment.selectedSegmentIndex = 0;
    }
    if ([self Validateticktacktoe] == true) {
        
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Alert" message:@"Win" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            [self dismissViewControllerAnimated:YES completion:nil];
            
            _img1.image = [UIImage imageNamed:@""];
            _img2.image = [UIImage imageNamed:@""];
            _img3.image = [UIImage imageNamed:@""];
            _img4.image = [UIImage imageNamed:@""];
            _img5.image = [UIImage imageNamed:@""];
            _img6.image = [UIImage imageNamed:@""];
            _img7.image = [UIImage imageNamed:@""];
            _img8.image = [UIImage imageNamed:@""];
            _img9.image = [UIImage imageNamed:@""];
            _segment.selectedSegmentIndex = 0;
        }];
        [alertController addAction:alertAction];
        [self presentViewController:alertController animated:YES completion:nil];
    }
    else
    {
        if (count == 9) {
            count = 0 ;
            
            
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Alert" message:@"Draw" preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
                [self dismissViewControllerAnimated:YES completion:nil];
                
                _img1.image = [UIImage imageNamed:@""];
                _img2.image = [UIImage imageNamed:@""];
                _img3.image = [UIImage imageNamed:@""];
                _img4.image = [UIImage imageNamed:@""];
                _img5.image = [UIImage imageNamed:@""];
                _img6.image = [UIImage imageNamed:@""];
                _img7.image = [UIImage imageNamed:@""];
                _img8.image = [UIImage imageNamed:@""];
                _img9.image = [UIImage imageNamed:@""];
                _segment.selectedSegmentIndex = 0;
                count = 0;
            }];
            [alertController addAction:alertAction];
            [self presentViewController:alertController animated:YES completion:nil];
            
        }
    }
}

-(BOOL)Validateticktacktoe
{
    if ([_img1.image isEqual:_img2.image] && [_img2.image isEqual:_img3.image]) {
        
        return YES;
    }
    else if ([_img4.image isEqual:_img5.image] && [_img5.image isEqual:_img6.image])
    {
        return YES;
    }
    else if ([_img7.image isEqual:_img8.image] && [_img8.image isEqual:_img9.image])
    {
        return YES;
    }
    else if ([_img1.image isEqual:_img4.image] && [_img4.image isEqual:_img7.image])
    {
        return YES;
    }
    else if ([_img2.image isEqual:_img5.image] && [_img5.image isEqual:_img8.image])
    {
        return YES;
    }
    else if ([_img3.image isEqual:_img6.image] && [_img6.image isEqual:_img9.image])
    {
        return YES;
    }
    else if ([_img1.image isEqual:_img5.image] && [_img5.image isEqual:_img9.image])
    {
        return YES;
    }
    else if ([_img3.image isEqual:_img5.image] && [_img5.image isEqual:_img7.image])
    {
        return YES;
    }
    
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
