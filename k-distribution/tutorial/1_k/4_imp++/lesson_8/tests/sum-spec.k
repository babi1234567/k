// Copyright (c) 2016-2019 K Team. All Rights Reserved.

module SUM-INVARIANT
  imports IMP

claim
  <threads><thread>...
    <k>
      while (!(n <= 0)) {
        sum = sum + n;
        n = n + -1;
      }
    =>
      .K
    ...</k>
    <env>...
      n   |-> LN:Int
      sum |-> LSUM:Int
    ...</env>
  ...</thread></threads>
  <store>...
    LN   |-> (N:Int => 0)
    LSUM |-> (S:Int => S +Int ((N +Int 1) *Int N /Int 2))
  ...</store>
requires N >=Int 0

endmodule

module SUM-SPEC
  imports SUM-INVARIANT

claim
  <threads><thread>...
    <k>
      int n, sum;
      n = N:Int;
      sum = 0;
      while (!(n <= 0)) {
        sum = sum + n;
        n = n + -1;
      }
    =>
      .K
    ...</k>
    <env>
      .Map
    =>
      n   |-> ?LN:Int
      sum |-> ?LSUM:Int
    </env>
  ...</thread></threads>
  <store>...
    .Map
  =>
    ?LN   |-> 0
    ?LSUM |-> ((N +Int 1) *Int N /Int 2)
  ...</store>
requires N >=Int 0
endmodule
