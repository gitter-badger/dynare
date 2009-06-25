function print_info(info,noprint)
% Prints error messages
%
% INPUTS
%   info    [double]   vector returned by resol.m 
%   noprint [integer]  equal to 0 if the error message has to be printed. 
% OUTPUTS
%    none
%
% SPECIAL REQUIREMENTS
%    none

% Copyright (C) 2005-2009 Dynare Team
%
% This file is part of Dynare.
%
% Dynare is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% Dynare is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with Dynare.  If not, see <http://www.gnu.org/licenses/>.

  if ~noprint
    switch info(1)
      case 1
        error(['The model doesn''t determine the current variables' ...
               ' uniquely'])
      case 2
        error(['MJDGGES returns the following error code' ...
               int2str(info(2))])
      case 3
        error(['Blanchard Kahn conditions are not satisfied: no stable' ...
               ' equilibrium'])
      case 4
        error(['Blanchard Kahn conditions are not satisfied:' ...
               ' indeterminacy'])
      case 5
        error(['Blanchard Kahn conditions are not satisfied:' ...
               ' indeterminacy due to rank failure'])
      case 19
        error('The steadystate file did not compute the steady state (inconsistent deep parameters).')
      case 20
        error(['Impossible to find the steady state. Either the model' ...
               ' doesn''t have a unique steady state of the guess values' ...
               ' are too far from the solution'])
      case 21
        error('The steady state is complex.')
      case 30 
        error('Variance can''t be computed')
      otherwise
        error('This case shouldn''t happen. Contact the authors of Dynare')
    end
  end