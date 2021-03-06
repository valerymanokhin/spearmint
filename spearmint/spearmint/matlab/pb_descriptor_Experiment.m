function [descriptor] = pb_descriptor_Experiment()
%pb_descriptor_Experiment Returns the descriptor for message Experiment.
%   function [descriptor] = pb_descriptor_Experiment()
%
%   See also pb_read_Experiment
  
  descriptor = struct( ...
    'name', 'Experiment', ...
    'full_name', 'Experiment', ...
    'filename', 'spearmint.proto', ...
    'containing_type', '', ...
    'fields', [ ...
      struct( ...
        'name', 'language', ...
        'full_name', 'Experiment.language', ...
        'index', 1, ...
        'number', uint32(1), ...
        'type', uint32(14), ...
        'matlab_type', uint32(10), ...
        'wire_type', uint32(0), ...
        'label', uint32(2), ...
        'default_value', int32(1), ...
        'read_function', @(x) pblib_helpers_first(typecast(x, 'int32')), ...
        'write_function', @(x) typecast(int32(x), 'uint32'), ...
        'options', struct('packed', false) ...
      ), ...
      struct( ...
        'name', 'name', ...
        'full_name', 'Experiment.name', ...
        'index', 2, ...
        'number', uint32(2), ...
        'type', uint32(9), ...
        'matlab_type', uint32(7), ...
        'wire_type', uint32(2), ...
        'label', uint32(2), ...
        'default_value', '', ...
        'read_function', @(x) char(x{1}(x{2} : x{3})), ...
        'write_function', @uint8, ...
        'options', struct('packed', false) ...
      ), ...
      struct( ...
        'name', 'variable', ...
        'full_name', 'Experiment.variable', ...
        'index', 3, ...
        'number', uint32(3), ...
        'type', uint32(11), ...
        'matlab_type', uint32(9), ...
        'wire_type', uint32(2), ...
        'label', uint32(3), ...
        'default_value', struct([]), ...
        'read_function', @(x) pb_read_Experiment__ParameterSpec(x{1}, x{2}, x{3}), ...
        'write_function', @pblib_generic_serialize_to_string, ...
        'options', struct('packed', false) ...
      ) ...
    ], ...
    'extensions', [ ... % Not Implemented
    ], ...
    'nested_types', [ ... % Not implemented
    ], ...
    'enum_types', [ ... % Not Implemented
    ], ...
    'options', [ ... % Not Implemented
    ] ...
  );
  
  descriptor.field_indeces_by_number = java.util.HashMap;
  put(descriptor.field_indeces_by_number, uint32(1), 1);
  put(descriptor.field_indeces_by_number, uint32(2), 2);
  put(descriptor.field_indeces_by_number, uint32(3), 3);
  
