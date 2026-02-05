% Base case: the reverse of an empty list is an empty list
reverse_list([], []).

% Recursive case: reverse the tail, and append the head at the end
reverse_list([Head|Tail], Reversed) :-
    reverse_list(Tail, ReversedTail),
    append(ReversedTail, [Head], Reversed).
