% Licensed to the Apache Software Foundation (ASF) under one or more
% contributor license agreements.  See the NOTICE file distributed with
% this work for additional information regarding copyright ownership.
% The ASF licenses this file to you under the Apache License, Version
% 2.0 (the "License"); you may not use this file except in compliance
% with the License.  You may obtain a copy of the License at
%
%   http://www.apache.org/licenses/LICENSE-2.0
%
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS,
% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
% implied.  See the License for the specific language governing
% permissions and limitations under the License.

function validElements = parseValidElements(data, opts)
% Returns a logical vector of the validElements in data. 
%
% opts is a scalar struct that is required to have a field called
% InferNulls. opts may have a field named Valid. If so, it takes 
% precedence over InferNulls.

    if isfield(opts, "Valid")
        validElements = parseValid(numel(data), opts.Valid);
    else
        validElements = parseInferNulls(data, opts.InferNulls);
    end
end

function validElements = parseValid(numElements, valid)
    if islogical(valid)
        validElements = reshape(valid, [], 1);
        if ~isscalar(validElements)
            % Verify the logical vector has the correct number of elements
            validateattributes(validElements, "logical", {'numel', numElements});
        else
            % TODO: consider making validElements empty if every 
            % element is Valid.

            % Expand scalar logical inputs to the correct dimensions
            validElements = repmat(validElements, numElements, 1);
        end
    else
        % valid is a list of indices. Verify the indices are numeric, 
        % integers, and within the range 1 < indices < numElements.
        validateattributes(valid, "numeric", {'integer', '>', 0, '<=', numElements});
        % Create a logical vector that contains true values at the indices
        % specified by opts.Valid.
        validElements = false([numElements 1]);
        validElements(valid) = true;
    end
end

function validElements = parseInferNulls(data, inferNulls)
    if inferNulls
        % TODO: consider making validElements empty if everything is valid.
        validElements = ~ismissing(data);
        validElements = reshape(validElements, [], 1);
    else
        % TODO: consider making this an empty array if everything is valid
        validElements = true([numel(data) 1]);
    end
end