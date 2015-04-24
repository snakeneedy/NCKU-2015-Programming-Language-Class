(defun readList (N)
	(
		let (
			(lst 
				(loop for i from 1 to N collect (read)) 
			) 
		)
	lst
	)
)
; demo
(
	let ( (N (read)) ) ; (read) = 10
	(format t "[debug] N=~A.~%" N)
	(format t "[debug] call (readList 10) => ~A~%" (readList N))
	nil
)
