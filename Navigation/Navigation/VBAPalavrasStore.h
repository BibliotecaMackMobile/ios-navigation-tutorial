#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface VBAPalavrasStore : NSObject
{
    NSDictionary * palavras;
}

@property NSDictionary * palavras;

+(VBAPalavrasStore *)getInstancia;

@end