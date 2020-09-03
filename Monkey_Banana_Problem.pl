on(floor,monkey).
on(floor,chair).
in(room,monkey).
in(room,chair).
in(room,banana).
at(ceiling,banana).

on(floor,monkey).
on(floor,chair).
in(room,monkey).
in(room,chair).
in(room,banana).
at(ceiling,banana).

clever(monkey).
grasp(monkey).
climb(monkey,chair).

push(monkey,chair):-
    clever(monkey).

under(banana,chair):-
    push(monkey,chair).



canreach(banana,monkey):-
    at(floor,banana);
    at(ceiling,banana),
    under(banana,chair),
    climb(monkey,chair).

canget(banana,monkey):-
    canreach(banana,monkey),grasp(monkey).