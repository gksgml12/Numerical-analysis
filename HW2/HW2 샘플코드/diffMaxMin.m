function diff = diffMaxMin(f, x, varargin)

y= f(x, varargin{:});
diff = max(y)-min(y);
plot(x, y); grid; 