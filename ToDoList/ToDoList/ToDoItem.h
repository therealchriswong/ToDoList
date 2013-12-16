//
//  ToDoItem.h
//  ToDoList
//
//  Created by Chris Wong on 11/10/2013.
//
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;

@property BOOL completed;

@property (readonly) NSDate *creationDate;

@end
