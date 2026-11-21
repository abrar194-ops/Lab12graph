% facts
edge('Dammam', 'Qatif').
edge('Qatif', 'Dammam').
edge('Dammam', 'Riyadh').
edge('Riyadh', 'Dammam').
edge('Tabuk', 'Taif').
edge('Taif', 'Tabuk').
edge('Madinah', 'Makkah').
edge('Makkah', 'Madinah').
edge('Taif', 'Dammam').
edge('Qatif', 'Madinah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Makkah', 'Riyadh').

% rules
travel(From, To, Path) :-
    path(From, To, [From], P),
    reverse(P, Path).

path(X, X, P, P).
path(X, Y, Visited, P) :-
    edge(X, Z),
    not(member(Z, Visited)),
    path(Z, Y, [Z|Visited], P).
