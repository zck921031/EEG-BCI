%% feature
% data: N-by-dimension matrix, raw data matrix
% channels: e.g 6
% myfun is a function to extra features of a vector.
function [res] = extract_feature(data, channel, myfun, varargin)
    res = zeros( size(data) );
    dim = size(data,2);
    block_size = dim / channel;
    if dim ~= channel*block_size
        error('dimension must be a multiple of channel');
    end
    for i=1:size(data,1)
        for c=1:channel
            bg = block_size*(c-1) + 1;
            ed = block_size*c;
            sample = data(i, bg:ed);
            C= myfun(sample, varargin{:} );
            res(i, bg:ed) = C(:);
        end
    end
end