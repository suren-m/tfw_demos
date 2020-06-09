# variables.tf
variable rg_names {
    type = list(string)    
}

variable prefix {
    type = string
    default = "contoso"
}

variable region {           
    type = string
    default = "UK South"
}

variable tags {
    type = map          
}