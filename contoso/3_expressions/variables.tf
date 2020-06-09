# variables.tf
variable rg_names {
    type = list(string)    
}

variable region {           
    type = string
    default = "North Europe"
}

variable tags {
    type= map          
}