#import "VBALetraViewController.h"

@implementation VBALetraViewController

@synthesize letra;

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if(self)
	{
        palavras = [[VBAPalavrasStore getInstancia] palavras];
	}
	return self;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if([[[self navigationController] viewControllers] count] > 2)
    {
        NSArray * views1 = [[self navigationController] viewControllers];
        NSUInteger tamanho = [views1 count];
        NSArray * view = [views1 subarrayWithRange:NSMakeRange(tamanho - 2, tamanho - 1)];
        [[self navigationController] setViewControllers:view];
    }
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    [[self navigationItem] setTitle:[NSString stringWithFormat:@"%C", letra]];
    [_palavra setText:[[palavras objectForKey:[NSString stringWithFormat:@"%C", letra]] objectAtIndex:0]];
	[_definicao setText:[[palavras objectForKey:[NSString stringWithFormat:@"%C", letra]] objectAtIndex:1]];
	[_imagem setImage:[[palavras objectForKey:[NSString stringWithFormat:@"%C", letra]] objectAtIndex:2]];
    if(letra == 'A')
	{
	    UIBarButtonItem * rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:[NSString stringWithFormat:@"%C", (unichar)(letra+1)] style:UIBarButtonItemStylePlain target:self action:@selector(proximaLetra:)];
		UISwipeGestureRecognizer * leftSwipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(proximaLetra:)];
		[leftSwipeGestureRecognizer setDirection:UISwipeGestureRecognizerDirectionLeft];
		[[self navigationItem] setRightBarButtonItem:rightBarButtonItem];
		[[self view] addGestureRecognizer:leftSwipeGestureRecognizer];
	}
	else
	{
	    if(letra == 'Z')
		{
		    UIBarButtonItem * leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:[NSString stringWithFormat:@"%C", (unichar)(letra-1)] style:UIBarButtonItemStylePlain target:self action:@selector(letraAnterior:)];
		    UISwipeGestureRecognizer * rightSwipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(letraAnterior:)];
		    [rightSwipeGestureRecognizer setDirection:UISwipeGestureRecognizerDirectionRight];
			[[self navigationItem] setLeftBarButtonItem:leftBarButtonItem];
		    [[self view] addGestureRecognizer:rightSwipeGestureRecognizer];
		}
		else
		{
		    UIBarButtonItem * leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:[NSString stringWithFormat:@"%C",(unichar)(letra-1)] style:UIBarButtonItemStylePlain target:self action:@selector(letraAnterior:)];
		    UISwipeGestureRecognizer * rightSwipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(letraAnterior:)];
			UIBarButtonItem * rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:[NSString stringWithFormat:@"%C", (unichar)(letra+1)] style:UIBarButtonItemStylePlain target:self action:@selector(proximaLetra:)];
		    UISwipeGestureRecognizer * leftSwipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(proximaLetra:)];
		    [rightSwipeGestureRecognizer setDirection:UISwipeGestureRecognizerDirectionRight];
			[leftSwipeGestureRecognizer setDirection:UISwipeGestureRecognizerDirectionLeft];
			[[self navigationItem] setLeftBarButtonItem:leftBarButtonItem];
			[[self navigationItem] setRightBarButtonItem:rightBarButtonItem];
			[[self view] addGestureRecognizer:leftSwipeGestureRecognizer];
		    [[self view] addGestureRecognizer:rightSwipeGestureRecognizer];
		}
	}
}

-(void)letraAnterior:(UIGestureRecognizer *)gestureRecognizer
{
    if([[[self navigationController] viewControllers] count] == 1)
    {
        VBALetraViewController * letraViewController = [[VBALetraViewController alloc] initWithNibName:@"letra" bundle:nil];
        [letraViewController setLetra:letra-1];
        NSMutableArray * views = [[NSMutableArray alloc] initWithArray:[[self navigationController] viewControllers]];
        [views insertObject:letraViewController atIndex:0];
        [[self navigationController] setViewControllers:views animated:YES];
    }
    [[self navigationController] popViewControllerAnimated:YES];
}

-(void)proximaLetra:(UIGestureRecognizer *)gestureRecognizer
{
	VBALetraViewController * letraViewController = [[VBALetraViewController alloc] initWithNibName:@"letra" bundle:nil];
    [letraViewController setLetra:letra+1];
    [[self navigationController] pushViewController:letraViewController animated:YES];
}

-(IBAction)sinteseDeVoz:(id)sender
{
    NSMutableString * mutableString = [[NSMutableString alloc] init];
    [mutableString appendString:[_palavra text]];
    [mutableString appendString:@" "];
    [mutableString appendString:[_definicao text]];
    AVSpeechSynthesisVoice * speechSynthesisVoice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"];
    AVSpeechUtterance * speechUtterance = [[AVSpeechUtterance alloc] initWithString:mutableString];
    [speechUtterance setRate:0.3];
	AVSpeechSynthesizer * speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
	[speechUtterance setVoice:speechSynthesisVoice];
	[speechSynthesizer speakUtterance:speechUtterance];
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
	palavras = nil;
	_palavra = nil;
	_definicao = nil;
	_imagem = nil;
}

-(void)dealloc
{
    palavras = nil;
	_palavra = nil;
	_definicao = nil;
	_imagem = nil;
}

@end
