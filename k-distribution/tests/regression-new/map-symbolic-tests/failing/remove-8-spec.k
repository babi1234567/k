// Copyright (c) 2019 K Team. All Rights Reserved.

requires "../map-tests.k"

module REMOVE-08-SPEC
    imports MAP-TESTS

    claim <k> remove ( (MAP:Map X:MyId |-> 1) [Y:MyId <- undef] [ Z:MyId ] ) => . </k> requires Y =/=K X andBool Z  ==K Y andBool Z =/=K X

endmodule
