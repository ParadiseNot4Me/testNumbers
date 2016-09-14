//
//  testnumberTests.m
//  testnumberTests
//
//  Created by Иван Григорьев on 12.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Expecta.h>
#import "NumberConverter.h"

@interface testnumberTests : XCTestCase

@end

@implementation testnumberTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testExample {
    NSString *spellOutNumber1 = [NumberConverter convert:0];
    expect(spellOutNumber1).to.equal(@"ноль");
    
    NSString *spellOutNumber2 = [NumberConverter convert:1];
    expect(spellOutNumber2).to.equal(@"один");
    
    NSString *spellOutNumber3 = [NumberConverter convert:16];
    expect(spellOutNumber3).to.equal(@"шестнадцать");
    
    NSString *spellOutNumber4 = [NumberConverter convert:219];
    expect(spellOutNumber4).to.equal(@"двести девятнадцать");
    
    NSString *spellOutNumber5 = [NumberConverter convert:801];
    expect(spellOutNumber5).to.equal(@"восемьсот один");
    
    NSString *spellOutNumber6 = [NumberConverter convert:1318];
    expect(spellOutNumber6).to.equal(@"одна тысяча триста восемнадцать");
    
    NSString *spellOutNumber7 = [NumberConverter convert:1000000];
    expect(spellOutNumber7).to.equal(@"один миллион");
    
    NSString *spellOutNumber8 = [NumberConverter convert:1000100];
    expect(spellOutNumber8).to.equal(@"один миллион сто");
    
    NSString *spellOutNumber9 = [NumberConverter convert:2000000];
    expect(spellOutNumber9).to.equal(@"два миллиона");
    
    NSString *spellOutNumber10 = [NumberConverter convert:2103051];
    expect(spellOutNumber10).to.equal(@"два миллиона сто три тысячи пятьдесят один");
    
    NSString *spellOutNumber11 = [NumberConverter convert:2103001];
    expect(spellOutNumber11).to.equal(@"два миллиона сто три тысячи один");
    
    NSString *spellOutNumber12 = [NumberConverter convert:3020200];
    expect(spellOutNumber12).to.equal(@"три миллиона двадцать тысяч двести");
    
    NSString *spellOutNumber13 = [NumberConverter convert:9001000];
    expect(spellOutNumber13).to.equal(@"девять миллионов одна тысяча");
    
    NSString *spellOutNumber14 = [NumberConverter convert:123456789];
    expect(spellOutNumber14).to.equal(@"сто двадцать три миллиона четыреста пятьдесят шесть тысяч семьсот восемьдесят девять");
    
    NSString *spellOutNumber15 = [NumberConverter convert:3000000010000];
    expect(spellOutNumber15).to.equal(@"три триллиона десять тысяч");
    
    NSString *spellOutNumber16 = [NumberConverter convert:90000000000000001];
    expect(spellOutNumber16).to.equal(@"девяносто квадриллионов один");
    
    NSString *spellOutNumber17 = [NumberConverter convert:92233720368547807];
    expect(spellOutNumber17).to.equal(@"девяносто два квадриллиона двести тридцать три триллиона семьсот двадцать миллиардов триста шестьдесят восемь миллионов пятьсот сорок семь тысяч восемьсот семь");

    NSString *spellOutNumber18 = [NumberConverter convert:LLONG_MAX];
    expect(spellOutNumber18).to.equal(@"девять квинтиллионов двести двадцать три квадриллиона триста семьдесят два триллиона тридцать шесть миллиардов восемьсот пятьдесят четыре миллиона семьсот семьдесят пять тысяч восемьсот семь");
    
    NSString *spellOutNumber19 = [NumberConverter convert:100];
    expect(spellOutNumber19).to.equal(@"сто");

//    NSNumberFormatter *formatter = [NSNumberFormatter new];
//    formatter.numberStyle = NSNumberFormatterSpellOutStyle;
//    [formatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"ru_RU"]];
//
//    for(long long i = 0; i < LLONG_MAX; i++) {
//        NSString *formatterString = [formatter stringFromNumber:@(i)];
//        expect(formatterString).to.equal([NumberConverter convert:i]);
//    }
    
}

@end
