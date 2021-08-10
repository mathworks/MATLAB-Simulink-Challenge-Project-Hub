function g = clip_gradient(g, thresh)

g_norm = norm(extractdata(g));
if g_norm > thresh
    g = (thresh/g_norm).*g;
end

end