# Demorgan's Law implementation in MeTTa 

Applied Propagating Truth values for boolean expressions, both binary and n-ary case by ensuring negations pushed down.


The implementation receives binary expression tree and applies Demorgan's law by 
- Flipping truth values at NOT
- Inverting junctor types when encountering negated AND/OR
- Propagate the chnages throughout the tree.

# Binary Case
- Negation Simplification: NOT (NOT A) → A
- AND/OR Inversion with NOT:
    NOT (AND A B) → OR (NOT A) (NOT B)
    NOT (OR A B) → AND (NOT A) (NOT B)
-Recursive Processing: Applies rules to nested expressions.
# N-ary Case
- Extends the binary transformation to handle multiple arguments.
- Uses list operations (car-atom, cdr-atom) to process multi-element expressions.
- Applies superpose to distribute transformations across all elements.
