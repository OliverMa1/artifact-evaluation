;; 
;; Created by Chih-Hong Cheng
;; 
(define (problem pb7)
    (:domain gripper)
  	(:objects roomA roomB roomC roomD Ball1 Ball2 Ball3 Ball4  Ball5 Ball6 Ball7 Ball8 Ball9 left right)
	(:init 
		(room roomA)
		(room roomB)
		(room roomC)
		(room roomD)
		(ball Ball1)
		(ball Ball2)
		(ball Ball3)
		(ball Ball4)
		(ball Ball5)
		(ball Ball6)
		(ball Ball7)
		(ball Ball8)	
		(ball Ball9)		
		(gripper left)
		(gripper right)
		(at-robby roomA) 
		(free left) 
		(free right)  
		(at Ball1 roomA)
		(at Ball2 roomA)
		(at Ball3 roomA)
		(at Ball4 roomA)
		(at Ball5 roomC)
		(at Ball6 roomC)
		(at Ball7 roomB)
		(at Ball8 roomB)
		(at Ball9 roomD)
		(is-working left)
		(is-working right))
	(:goal (and (at Ball1 roomB) 
		(at Ball2 roomD)
        (at Ball3 roomD)
        (at Ball4 roomC)
        (at Ball5 roomD) 
        (at Ball6 roomB)
        (at Ball7 roomA) 
        (at Ball8 roomA)
	(at Ball9 roomA)))
 )
