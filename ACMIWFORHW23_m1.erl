%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lviv'2020 // ACM // OpenCV faces detection use example by Erlag             %
%    file: acmiwforhw23_m1.erl                                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-module(main).
-export([start/0]).

-define (INPUT_DATA, [5, 7, 3, 4, 1, 9, 2, 8, 10, 6]).

qsort([]) ->
    [];
qsort([Pivot | L]) ->
    LesserPart = [X || X <- L, X < Pivot],
    GreaterPart = [X || X <- L, X >= Pivot],
    qsort(LesserPart) ++ [Pivot] ++ qsort(GreaterPart).
        
print([]) ->
    [];
print([CurrElement | Others]) ->
    io:fwrite("~w ", [CurrElement]), %io:fwrite("~w" ++ " ", [CurrElement]),
    print(Others).

start() ->
    Input = ?INPUT_DATA,
    Output = qsort(Input),
    io:fwrite("input:\n"),
    print(Input),
    io:fwrite("\n"),
    io:fwrite("output:\n"),
    print(Output), 
    io:fwrite("\n").