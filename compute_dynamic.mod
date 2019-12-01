@#include "declaration.mod" 
@#include "calibration.mod" 

model;
  @#include "equations.mod" 
  % 12. Incentive constraint
  [mcp = 'lambda>0']
  lambda = 1-nu/(theta*phi);
end;

@#include "planner.mod" 

SS = load("compute_ss_results");
oo_.steady_state = SS.oo_.steady_state;

@#include "shocks.mod" 

@#include "constraints.mod" 

perfect_foresight_setup(periods=2000);
options_.lmmcp.Display = 'iter'; options_.lmmcp.MaxIter = 100;
perfect_foresight_solver(lmmcp);

% @#include "figures.mod"  