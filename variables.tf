variable "a_01_string_variable" {
  type = string
  description ="This is string variable example"
  default = "Myna"
}

variable "a_02_number_variable" {
  type = number
  description ="This is number variable example"
  default = 100.50
}

variable "a_03_bool_variable" {
  type = bool
  description ="This is number variable example"
  default = true
}

variable "a_04_list_variable" {
  type = list(string)
  description ="This is list variable example"
  default = ["one",2,"three",4.0,true]
}

variable "a_05_list_variable" {
  type = object(
    { name = string
      age = number
      salary = number
      skills = list (string)}
  )
  description ="This is object variable example"
  default =  {
    name ="antony"
    age = 44
    salary = 10000
    skills = [ ".net","sql","azure" ]
  }
}

variable "a_06_any_variable" {
  type = any
  description = "any type"
  default = {
    name ="string"
    skills = [ ".net","sql","azure" ]
    resoure_count = 26
    reported_log ={
        id = 1
        installed = false
        engine_involved = ["jet","focub", "morocco"]
    }

  }
}

variable "resource_group_name" {
  type = string
  description = "resource group name"
  default = ""
}

variable "location" {
  type = string
  description = "location name"
  default = "east us"
}


variable "envrionmnet_name" {
  type = string
  description = "envrionmnet name"
  default = "dev"
}

variable "tags" {
  type = map 
  description = "resource tags"
  default = null
}