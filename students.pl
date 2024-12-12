student(s1).
student(s2).

has_student_card(A)     :- student(A).
has_student_id(A)       :- has_student_card(A).