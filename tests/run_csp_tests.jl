include("../aimajulia.jl");

using Base.Test;

using aimajulia;

#The following CSP tests are from the aima-python doctest

d = CSPDict(ConstantFunctionDict(42));

@test d["life"] == 42;

@test (!(typeof(backtracking_search(aimajulia.australia_csp)) <: Void) == true);

@test (!(typeof(backtracking_search(aimajulia.australia_csp,
                                    select_unassigned_variable=minimum_remaining_values)) <: Void) == true);

@test (!(typeof(backtracking_search(aimajulia.australia_csp,
                                    order_domain_values=least_constraining_values)) <: Void) == true);

@test (!(typeof(backtracking_search(aimajulia.australia_csp,
                                    select_unassigned_variable=minimum_remaining_values,
                                    order_domain_values=least_constraining_values)) <: Void) == true);

@test (!(typeof(backtracking_search(aimajulia.australia_csp, inference=forward_checking)) <: Void) == true);

@test (!(typeof(backtracking_search(aimajulia.australia_csp,
                                    inference=maintain_arc_consistency)) <: Void) == true);

@test (!(typeof(backtracking_search(aimajulia.australia_csp,
                                    select_unassigned_variable=minimum_remaining_values,
                                    order_domain_values=least_constraining_values,
                                    inference=maintain_arc_consistency)) <: Void) == true);

