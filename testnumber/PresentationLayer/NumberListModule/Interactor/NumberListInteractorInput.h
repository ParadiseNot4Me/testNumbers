//
//  NumberListInteractorInput.h
//  testnumber
//
//  Created by Иван Григорьев on 13.09.16.
//  Copyright © 2016 IG. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NumberListInteractorInput <NSObject>

- (NSArray *)obtainNumberListSpellOut:(BOOL)spellOut;

@end
