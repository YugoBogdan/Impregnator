///instance_create_unique(x,y,object)

var instance_object = argument[2];

if(!instance_exists(instance_object)){
    var instance_x = argument[0];
    var instance_y = argument[1];
    
    instance = instance_create(instance_x,instance_y,instance_object);
    
    return instance;    
}



