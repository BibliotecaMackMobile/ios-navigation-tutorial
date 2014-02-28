#import "VBAPalavrasStore.h"

@implementation VBAPalavrasStore

@synthesize palavras;

-(id)allocWithZone:(NSZone *)zone
{
    return [VBAPalavrasStore getInstancia];
}

-(id)init
{
    self = [super init];
	if(self)
	{
	    if(!palavras)
		{
            palavras = @{@"A" : @[@"Abelha", @"Inseto voador que fabrica a cera e o mel", [UIImage imageNamed:@"abelha.jpg"]], @"B" : @[@"Banana", @"Fruta doce de coloraçao amarela", [UIImage imageNamed:@"banana.jpg"]], @"C" : @[@"Cachorro", @"Mamifero carnivoro com bastante pelo", [UIImage imageNamed:@"doge.jpg"]], @"D" : @[@"Dado", @"Pequeno cubo usado em certos jogos, que apresenta em cada face certo número de marcas ou pontos", [UIImage imageNamed:@"dado.gif"]], @"E" : @[@"Escola", @"Casa ou estabelecimento em que se ministra conhecimentos", [UIImage imageNamed:@"escola.gif"]], @"F" : @[@"Fogueira", @"Monte de madeira em chamas", [UIImage imageNamed:@"fogueira.png"]], @"G" : @[@"Gato", @"Mamífero carnívoro doméstico de grande utilidade para a destruição de ratos", [UIImage imageNamed:@"gato.gif"]], @"H" : @[@"Hotel", @"Estabelecimento onde se alugam quartos ou apartamentos mobiliados, com ou sem refeições", [UIImage imageNamed:@"hotel.jpg"]], @"I" : @[@"Indio", @"Povo que vive no meio da floresta e sempre esta em harmonia com a natureza", [UIImage imageNamed:@"indio.jpg"]], @"J" : @[@"Jacare", @"Reptil com escamas grossas que vive em rios", [UIImage imageNamed:@"jacare.gif"]], @"K" : @[@"Kiwi", @"Fruto de sabor suave com casca fina e fibrosa, apresenta coloracao marrom, e polpa verde", [UIImage imageNamed:@"kiwi.jpg"]], @"L" : @[@"Laranja", @"Fruta citrica e doce", [UIImage imageNamed:@"laranja.jpg"]], @"M" : @[@"Melancia", @"Fruta grande e doce com casca verde e interior vermelho", [UIImage imageNamed:@"melancia.jpg"]], @"N" : @[@"Navio", @"Veiculo grande utilizado para locomoçao em rios e mares", [UIImage imageNamed:@"navio.jpg"]], @"O" : @[@"Ovo", @"Cria das aves de onde nasce o pintinho", [UIImage imageNamed:@"ovo.jpg"]], @"P" : @[@"Peixe", @"Animal vertebrado e aquático, com os membros transformados em barbatanas e com respiração branquial", [UIImage imageNamed:@"peixe.jpg"]], @"Q" : @[@"Queijo", @"Alimento salgado feito a base de leite", [UIImage imageNamed:@"queijo.jpg"]], @"R" : @[@"Rato", @"Mamifero roedor que vive em lugares sujos", [UIImage imageNamed:@"rato.jpg"]], @"S" : @[@"Salada", @"Mistura de vegetais e frutos", [UIImage imageNamed:@"salada.jpg"]], @"T" : @[@"Tucano", @"Passaro de coloracao preta e laranja com bico comprido laranja", [UIImage imageNamed:@"tucano.jpg"]], @"U" : @[@"Uva", @"Fruta pequena e doce de coloracao roxa ou branca", [UIImage imageNamed:@"uva.jpg"]], @"V" : @[@"Vaca", @"Femea do boi", [UIImage imageNamed:@"vaca.jpg"]], @"W" : @[@"Walt Disney", @"Desenhista famoso conhecidos pelos seus desenhos infantis como Mickey", [UIImage imageNamed:@"waltdisney.jpg"]], @"X" : @[@"Xarope", @"Substancia concentrada produzida a partir da polpa das frutas misturada com acucar", [UIImage imageNamed:@"xarope.jpg"]], @"Y" : @[@"Yoyo", @"Brinquedo formado por uma rodinha e um barbante", [UIImage imageNamed:@"yoyo.gif"]], @"Z" : @[@"Zebra", @"Especie de cavalo branco com listras pretas", [UIImage imageNamed:@"zebra.gif"]]};
        }
	}
	return self;
}

+(VBAPalavrasStore *)getInstancia
{
    static VBAPalavrasStore * palavrasStore = nil;
	if(!palavrasStore)
	{
	    palavrasStore = [[super allocWithZone:nil] init];
	}
	return palavrasStore;
}

-(void)dealloc
{
    palavras = nil;
}

@end