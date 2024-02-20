#-asdf3.1 (error "ASDF 3.1 or bust!")

(defpackage :pm-system
  (:use #:cl #:asdf))

(in-package #:pm-system)

(defsystem :pm
    :name "pm"
    :version "0.0.3"
    :description "A fancy wrapper around ping"
    :license "MIT"
    :author "Raymund Martinez <zhaqenl@gmail.com>"
    :maintainer "Rommel Martínez <rommel.martinez@valmiz.com>"
    :class :package-inferred-system
    :depends-on ((:version "cl-scripting" "0.1")
                 (:version "inferior-shell" "2.0.3.3")
                 (:version "fare-utils" "1.0.0.5")
                 #:net.didierverna.clon
                 "pm/pm"))
