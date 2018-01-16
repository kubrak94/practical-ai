(clear)

(deftemplate human 
	(slot name) 
	(slot age)
	(slot gender (default male)))

(defrule gotoarmy 
	(human (name ?x) (age 18) (gender male))
	(season autumn|spring)
	=> 
	(assert (serve ?x)))
; assertions

(assert (human (name "Alex") (age 18)))
(assert (season spring))

(run)
(facts)
(exit)
