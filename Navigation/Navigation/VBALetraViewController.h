#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "VBAPalavrasStore.h"

@interface VBALetraViewController : UIViewController
{
    NSDictionary * palavras;
}

@property IBOutlet UILabel * palavra;
@property IBOutlet UITextView * definicao;
@property IBOutlet UIImageView * imagem;
@property unichar letra;

-(IBAction)sinteseDeVoz:(id)sender;

@end