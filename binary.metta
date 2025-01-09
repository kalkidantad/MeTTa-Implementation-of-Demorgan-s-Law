(: demorgan (-> (Expr $t) (Expr $t)))

 ; Base case: Leaves (constants or variables) remain unchanged
(= (demorgan $leaf) $leaf)

 ; Simplify double negation: NOT (NOT A) → A
(= (demorgan (NOT (NOT $a))) (demorgan $a))

 ; Apply De Morgan's laws: NOT (AND A B) → OR (NOT A) (NOT B)
(= (demorgan (NOT (AND $a $b)))
    (OR (demorgan (NOT $a)) (demorgan (NOT $b))))

 ; Apply De Morgan's laws: NOT (OR A B) → AND (NOT A) (NOT B)
(= (demorgan (NOT (OR $a $b)))
    (AND (demorgan (NOT $a)) (demorgan (NOT $b))))

 ; Recursive case: Transform AND and OR expressions by processing their children
(= (demorgan (AND $a $b))
    (AND (demorgan $a) (demorgan $b)))

(= (demorgan (OR $a $b))
    (OR (demorgan $a) (demorgan $b)))

! (demorgan (NOT (AND x1 x2)))
