function [ face ] = biased_coin( p_heads )

    if rand < p_heads
        face = 0;
    else
        face = 1;
    end
end

