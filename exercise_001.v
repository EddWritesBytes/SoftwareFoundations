Definition nandb (b1:bool) (b2:bool) : bool :=
    match b1 with
    | false => true
    | true => match b2 with
              | false => true
              | true => false
              end
    end.

(* Found a non-nested method of patten matching! *)
Definition nandb' (b1:bool) (b2:bool) : bool :=
    match b1, b2 with
    | true, true => false
    | _, _ => true
    end.

(* Truth table for testing *)
Compute (nandb true false).
Compute (nandb false false).
Compute (nandb false true).
Compute (nandb true true).

(* Truth table for testing *)
Compute (nandb' true false).
Compute (nandb' false false).
Compute (nandb' false true).
Compute (nandb' true true).


Example test_nandb1: (nandb true false) = true.
Proof. simpl. reflexivity. Qed.

Example test_nandb2: (nandb false false) = true.
Proof. simpl. reflexivity. Qed.

Example test_nandb3: (nandb false true) = true.
Proof. simpl. reflexivity. Qed.

Example test_nandb4: (nandb true true) = false.
Proof. simpl. reflexivity. Qed.

Example test_nandb1': (nandb' true false) = true.
Proof. simpl. reflexivity. Qed.

Example test_nandb2': (nandb' false false) = true.
Proof. simpl. reflexivity. Qed.

Example test_nandb3': (nandb' false true) = true.
Proof. simpl. reflexivity. Qed.

Example test_nandb4': (nandb' true true) = false.
Proof. simpl. reflexivity. Qed.