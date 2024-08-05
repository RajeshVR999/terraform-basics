variable "sample" {
    default = "Hello World" # Declaring the variable
}

output "sample" {
    value = var.sample  # Printing the variable
}

output "sample1" {
    value = "The value that I am Printing is ${var.sample}"
}

variable "number" {
    default = 100
}

output "number" {
    value = var.number # printing the variables
}

# List Variable
variable "ex-list" {
    default = [
        "cloud",
        "Devops",
        100,
        false,
        "Rajesh VR",
        "SRE"
    ]
}

output "ex-list-output" {
    value = "welcome to ${var.ex-list[0]} ${var.ex-list[1]} the terraform duration is ${var.ex-list[2]} terform expert name is ${var.ex-list[4]}"
}

# Map Variable 

variable "ex-map" {
    default = {
        Duration  = 105 
        Timing    = "0730AMIST"
        Batch     = 51 
        teraform  = "Rajesh VR" 
        
    }
}

output "ex-map" {
    value = "Wlcome to batch ${var.ex-map["Batch"]} and the sessions timings are ${var.ex-map["Timing"]} and Teraform Expert name is ${var.ex-map["terraform"]}"
}


# A variable can be accessed without ${} only the variable is called. In case, if it's needed to be added with other strings or in between something, then we need to enclose them in
# in the double quotes. Single quotes are not valid in terraform. 