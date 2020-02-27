edge(a,b).
edge(b,c).
edge(c,d).
edge(c,e).
edge(a,f).
edge(e,d).
edge(f,e).
edge(f,g).
edge(g,c).
edge(f,c).

pathLen2(Node1, Node2) :- edge(Node1, SomeNode), edge(SomeNode, Node2).

pathLen3(Node1, Node2) :- pathLen2(Node1, SomeNode), edge(SomeNode, Node2).

pathLen3(Node1, Node2):- edge(Node1, SomeNode1), edge(SomeNode1, SomeNode2), edge(SomeNode2, Node2).

path(Node1,Node2) :- edge(Node1, Node2).

path(Node1,Node2) :- edge(Node1, SomeNode), path(SomeNode, Node2).

path(Node1, Node1).
