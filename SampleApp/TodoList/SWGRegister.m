#import "NIKDate.h"
#import "SWGRegister.h"

@implementation SWGRegister

-(id)email: (NSString*) email
    first_name: (NSString*) first_name
    last_name: (NSString*) last_name
    display_name: (NSString*) display_name
    new_password: (NSString*) new_password
    code: (NSString*) code
{
  _email = email;
  _first_name = first_name;
  _last_name = last_name;
  _display_name = display_name;
  _newpassword = new_password;
  _code = code;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _email = dict[@"email"]; 
        _first_name = dict[@"first_name"]; 
        _last_name = dict[@"last_name"]; 
        _display_name = dict[@"display_name"]; 
        _newpassword = dict[@"new_password"];
        _code = dict[@"code"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_email != nil) dict[@"email"] = _email ;
    if(_first_name != nil) dict[@"first_name"] = _first_name ;
    if(_last_name != nil) dict[@"last_name"] = _last_name ;
    if(_display_name != nil) dict[@"display_name"] = _display_name ;
    if(_newpassword != nil) dict[@"new_password"] = _newpassword ;
    if(_code != nil) dict[@"code"] = _code ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

