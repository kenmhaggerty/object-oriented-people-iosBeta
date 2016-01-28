//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Ken M. Haggerty on 1/28/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson ()
@property (nonatomic, strong, readwrite) NSString *name;
@property (nonatomic, readwrite) NSUInteger ageInYears;
@property (nonatomic, readwrite) NSUInteger heightInInches;
@property (nonatomic, strong, readwrite) NSMutableArray *skills;
@end

@implementation FISPerson

- (instancetype)init {
    
    self = [super init];
    return self;
}

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears {
    
    self = [super init];
    return self;
}

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches {
    
    self = [super init];
    if (self) {
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
    }
    return self;
}

- (NSString *)celebrateBirthday {
    
    return nil;
}

- (void)learnSkillBash {
    
    //
}

- (void)learnSkillXcode {
    
    //
}

- (void)learnSkillObjectiveC {
    
    //
}

- (void)learnSkillObjectOrientedProgramming {
    
    //
}

- (void)learnSkillInterfaceBuilder {
    
    //
}

- (BOOL)isQualifiedTutor {
    
    return NO;
}

@end
