% Base case: Move one disk directly
move(1, Source, Destination, _) :-
    format("Move disk from ~w to ~w~n", [Source, Destination]).

% Recursive case: Move N disks
move(N, Source, Destination, Auxiliary) :-
    N > 1,
    N1 is N - 1,
    move(N1, Source, Auxiliary, Destination),      % Move N-1 disks to auxiliary
    move(1, Source, Destination, _),                % Move the largest disk to destination
    move(N1, Auxiliary, Destination, Source).       % Move N-1 disks to destination
