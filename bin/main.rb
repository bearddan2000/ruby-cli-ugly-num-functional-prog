#!/usr/bin/env ruby
# This function divides a by greatest divisible power of b
 def max_divide(a, b)
     if a % b != 0
        return a;
     end
     c = a/b;
     return max_divide(c, b);
 end

 # Function to check if a number is ugly or not
 def is_ugly(n, args, no)
   if n >= args.length
    return no == 1;
   end
   c = max_divide(no, args[n]);
   return is_ugly(n+1, args, c);
end

def find_ugly(n, i, count, args)
  if n < count
    return i-1;
  end
  if is_ugly(0, args, i)
    return find_ugly(n, i+1, count+1, args);
  else
    return find_ugly(n, i+1, count, args);
  end
end

def main
  input = 10
  args = [2,3,5]
  puts( "[INPUT] %d" % input)
  output = find_ugly(input, 1, 1, args)
  puts( "[OUTPUT] %d" % output)
end
main;
