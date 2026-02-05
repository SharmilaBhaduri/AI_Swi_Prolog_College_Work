% Generate Fibonacci number at position N
fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    F is F1 + F2.

% Print Fibonacci series up to N terms
print_fib_series(N) :- print_fib_series(0, N).

% Helper rule with counter
print_fib_series(Current, N) :-
    Current < N,
    fibonacci(Current, F),
    write(F), write(', '),
    Next is Current + 1,
    print_fib_series(Next, N).

% Stop condition
print_fib_series(N, N).

