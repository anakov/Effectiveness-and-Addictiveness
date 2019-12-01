@#include "declaration.mod" 
@#include "calibration.mod" 

model;
  @#include "equations.mod" 
  % 12. Incentive constraint
  lambda = max(0, 1-nu/(theta*phi));
end;

@#include "planner.mod" 

@#include "initval.mod" 

STEADY;
% CHECK;