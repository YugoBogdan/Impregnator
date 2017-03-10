///backspace_function(string)

string_var = argument[0];
if (string_var != ""){
    string_var = string_delete(string_var, string_length(string_var), 1);
}
return string_var;
