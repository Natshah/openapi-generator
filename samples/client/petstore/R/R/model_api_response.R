#' Create a new ModelApiResponse
#'
#' @description
#' Describes the result of uploading an image resource
#'
#' @docType class
#' @title ModelApiResponse
#' @description ModelApiResponse Class
#' @format An \code{R6Class} generator object
#' @field code  integer [optional]
#' @field type  character [optional]
#' @field message  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ModelApiResponse <- R6::R6Class(
  "ModelApiResponse",
  public = list(
    `code` = NULL,
    `type` = NULL,
    `message` = NULL,
    `_field_list` = c("code", "type", "message"),
    `additional_properties` = list(),
    #' Initialize a new ModelApiResponse class.
    #'
    #' @description
    #' Initialize a new ModelApiResponse class.
    #'
    #' @param code code
    #' @param type type
    #' @param message message
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `code` = NULL, `type` = NULL, `message` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`code`)) {
        stopifnot(is.numeric(`code`), length(`code`) == 1)
        self$`code` <- `code`
      }
      if (!is.null(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!is.null(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
      if (!is.null(additional_properties)) {
        for (key in names(additional_properties)) {
          self$additional_properties[[key]] <- additional_properties[[key]]
        }
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ModelApiResponse in JSON format
    #' @export
    toJSON = function() {
      ModelApiResponseObject <- list()
      if (!is.null(self$`code`)) {
        ModelApiResponseObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`type`)) {
        ModelApiResponseObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`message`)) {
        ModelApiResponseObject[["message"]] <-
          self$`message`
      }
      for (key in names(self$additional_properties)) {
        ModelApiResponseObject[[key]] <- self$additional_properties[[key]]
      }

      ModelApiResponseObject
    },
    #' Deserialize JSON string into an instance of ModelApiResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of ModelApiResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ModelApiResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ModelApiResponse in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`code`)) {
          sprintf(
          '"code":
            %d
                    ',
          self$`code`
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        },
        if (!is.null(self$`message`)) {
          sprintf(
          '"message":
            "%s"
                    ',
          self$`message`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
      json_obj <- jsonlite::fromJSON(json_string)
      for (key in names(self$additional_properties)) {
        json_obj[[key]] <- self$additional_properties[[key]]
      }
      json_string <- as.character(jsonlite::minify(jsonlite::toJSON(json_obj, auto_unbox = TRUE, digits = NA)))
    },
    #' Deserialize JSON string into an instance of ModelApiResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of ModelApiResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ModelApiResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`code` <- this_object$`code`
      self$`type` <- this_object$`type`
      self$`message` <- this_object$`message`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to ModelApiResponse
    #'
    #' @description
    #' Validate JSON input with respect to ModelApiResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ModelApiResponse
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }),
    # Lock the class to prevent modifications to the method or field
    lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
#ModelApiResponse$unlock()
#
## Below is an example to define the print fnuction
#ModelApiResponse$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#ModelApiResponse$lock()

