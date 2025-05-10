;; variables
(defparameter x 10)
(defparameter y 20)
(defparameter z 30)
(print (+ x y z))

;; shorthand
(defvar a 10)
(defvar b 20)
(defvar c 30)
(print (+ x y z))

;; constants
(defconstant +pi+ 3.14159)
(print +pi+)

;; local variables
(let ((x 10)(y 20)) (+ x y))

;; modify variables
(setf x 100)
(print x)
