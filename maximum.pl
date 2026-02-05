maximum(X, Y, Max) :-
    (X >= Y ->      % if X is greater than or equal to Y
        Max = X     % then Max is X
    ;                  % else
        Max = Y     % Max is Y
    ).
