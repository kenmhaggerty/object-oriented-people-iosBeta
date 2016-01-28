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
    
    self = [self initWithName:@"Ken" ageInYears:26 heightInInches:70];
    return self;
}

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears {
    
    self = [self initWithName:name ageInYears:ageInYears heightInInches:70];
    return self;
}

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches {
    
    self = [super init];
    if (self) {
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
        _skills = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)celebrateBirthday {
    
    NSString *birthdayMessage = [NSString stringWithFormat:@"Happy %lu%@ Birthday, %@!!!", ++self.ageInYears, [self ordinalForInteger:self.ageInYears], self.name].uppercaseString;
    NSLog(@"%@", birthdayMessage);
    return birthdayMessage;
}

- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
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
