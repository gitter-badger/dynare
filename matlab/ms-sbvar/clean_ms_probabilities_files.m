function clean_ms_probabilities_files(file_tag)
% function clean_ms_probabilities_files()
% removes MS probabilities files
%
% INPUTS
%    file_tag: string indicating tag to use when deleting files
%
% OUTPUTS
%    none
%
% SPECIAL REQUIREMENTS
%    none

% Copyright (C) 2011 Dynare Team
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

delete_if_exists(['smoothed_' file_tag '.out']);
delete_if_exists(['filtered_' file_tag '.out']);
delete_if_exists(['real_time_smoothed_' file_tag '.out']);
delete_dir_if_exists([file_tag filesep 'Output' filesep 'Probabilities']);
end
