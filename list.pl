% If N is 1, we want to remove the first item.
% So we just ignore the first item (_) and keep the rest (Tail).
remove_nth(1, [_|Tail], Tail).

%The symbol | in Prolog is used inside list notation to separate the head and tail of a list.

% If N is more than 1:
% - Keep the first item (Head).
% - Go forward in the list (Tail).
% - Reduce N by 1.
% - Keep doing this until N becomes 1.
remove_nth(N, [Head|Tail], [Head|Result]) :-
    N > 1,                 % check N is more than 1
    N1 is N - 1,           % subtract 1 from N
    remove_nth(N1, Tail, Result).  % call again on smaller list
