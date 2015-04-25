;function mergesort(m)
;   var list left, right, result
;   if length(m) ≤ 1
;       return m
;   else
;       var middle = length(m) / 2
;       for each x in m up to middle - 1
;           add x to left
;       for each x in m at and after middle
;           add x to right
;       left = mergesort(left)
;       right = mergesort(right)
;       if last(left) ≤ first(right) 
;          append right to left
;          return left
;       result = merge(left, right)
;       return result
;
;function merge(left,right)
;   var list result
;   while length(left) > 0 and length(right) > 0
;       if first(left) ≤ first(right)
;           append first(left) to result
;           left = rest(left)
;       else
;           append first(right) to result
;           right = rest(right)
;   if length(left) > 0 
;       append rest(left) to result
;   if length(right) > 0 
;       append rest(right) to result
;   return result
;
(defun readList (N)
	(loop for i from 1 to N collect (read)) 
)
(defun half (x)
	(floor (/ x 2))
)
(defun halfLength (lst)
	(half (length lst))
)
(defun mergesort (lst)
	(cond
		((<= (length lst) 1) lst)
		(t (combine (mergesort (leftList lst (halfLength lst))) (mergesort(rightList lst (halfLength lst)))))
	)
)
(defun combine (left right)
	(cond
		((<= (length left) 0) right)
		((<= (length right) 0) left)
		((<= (car left) (car right)) (cons (car left) (combine (cdr left) right)))
		((> (car left) (car right)) (cons (car right) (combine left (cdr right))))
	)
)
; index from -1(NIL) to (mid - 1)
(defun leftList (lst mid)
	(cond
		((<= mid 0) nil)
		(t (cons (car lst) (leftList (cdr lst) (- mid 1))))
	)
)
; index from mid to (length - 1)
(defun rightList (lst mid)
	(cond
		((<= mid 0) lst)
		(t (rightList (cdr lst) (- mid 1)))
	)
)
; main ()
(
	let ( (N (read)) )
	(
		let ( (lst (readList N)) )
		(format t "~A~%" (mergesort lst))
	)
	nil
)
