BlinkJAK
========

Blink animations for any objects:

Simply add these methods in your view controller

- (void)flashOff:(UIView *)v
{
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionAllowUserInteraction animations:^ {
        v.alpha = .01;  //don't animate alpha to 0, otherwise you won't be able to interact with it
    } completion:^(BOOL finished) {
        [self flashOn:v];
    }];
}

- (void)flashOn:(UIView *)v
{
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionAllowUserInteraction animations:^ {
        v.alpha = 1;
    } completion:^(BOOL finished) {
        [self flashOff:v];
    }];
}


//Call Method to the component which you want to add blink animation

    [self flashOn:JAKButton];

Prefered:

- (void)viewDidLoad
{
    [super viewDidLoad];

        [self flashOn:ObjectName];

}

