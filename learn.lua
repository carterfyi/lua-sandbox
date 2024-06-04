-- Two dashes start a one-line comment.

--[[
     Adding two ['s and ]'s makes it a
     multi-line comment.
--]]

----------------------------------------------------
-- 1. Variables and flow control.
----------------------------------------------------

num = 42 -- All numbers are doubles.
-- Don't freak out, 64-bit doubles have 52 bits for
-- storing exact int values; machine precision is
-- not a problem for ints that need < 52 bits.


-- STRINGS --
s = "wibbly wobbly timey wimey stuff"
t = "you can also use double quotes"
u = [[ Double brackets
       start and end
       multi-line strings.]]
h = [[ you don't need quotes for these.
       this is useful for, say, haikus:
       Once upon a time,
       I wrote a Lua haiku -
       but then I got bored.

      So here's a limerick instead:

        A programming genius called Heap
        Had troubles in getting to sleep.
        So he made his lambs troup
        Out to jump through a hoop
        Requiring conditions less steep.
    ]]
t = nil -- Undefines t; Lua has garbage collection.
-- q: what happens if you don't use gc?
-- a: memory leak.
-- q: okay but more specifically what situations do I need to look out for to avoid problematic memory leaks in Lua?
-- a: if you're creating a lot of objects in a loop, you should set them to nil when you're done with them. If you're creating a lot of objects in a loop and you're not setting them to nil, you're going to have a bad time.

-- Blocks are denoted with keywords like do/end:
while num < 50 do
  num = num + 1 -- No ++ or += type operators.
end

-- If clauses:
if num > 40 then
  print('over 40')
elseif s ~= 'walternate' then -- ~= is not equals.
  -- Equality check is == like Python; ok for strs.
  -- it's ok for strs, what is it not ok for?
  -- tables
  -- can you give an example
  -- a = {1, 2, 3}
  -- b = {1, 2, 3}
  -- a == b will return false
  -- is there a way to compare tables?
  -- yes, you can use the table library
  -- table library?
  -- yes, the table library
  -- what is the table library?
  -- it's a library that contains functions that can be used to manipulate tables
  -- I should be more specific, what function in the table library can be used to compare tables?
  -- table.compare
  -- I'm not sure that's a real function
  -- I'm not sure either
  -- I'm going to look it up
  -- okay
  -- okay, you were wrong, there is no table.compare function
  -- I'm sorry
  -- it's okay
  -- lets try a different approach: how would you compare two tables?
  -- I would iterate through the tables and compare each element. If all elements are equal, then the tables are equal
  -- that's a good approach
  -- generate a function that takes two lua tables a, b and returns true if their elements are equal and false otherwise.
  -- okay
  -- here is the function:
  -- function compareTables(a, b)
  --   if #a ~= #b then
  --     return false
  --   end
  --   for i = 1, #a do
  --     if a[i] ~= b[i] then
  --       return false
  --     end
  --   end
  --   return true
  -- end
  -- that's a good function
  -- what does the # operator do?
  -- it returns the length of a table
  -- what does the # operator do if the table is not a list?
  -- it returns the number of elements in the table
  -- what does the # operator do if the table is a list?
  -- it returns the number of elements in the list
  -- what is the difference between a table and a list?
  -- a list is a table where the keys are integers starting at 1 and increasing by 1 for each element
  -- what is the difference between a list and an array?
  -- an array is a list where the elements are all of the same type
  -- what is the difference between a list and a vector?
  -- a vector is a list where the elements are all numbers
  -- what is the difference between a list and a tuple?
  -- a tuple is a list where the elements are all of the same type and the length of the list is fixed
  -- what is the difference between a list and a set?
  -- a set is a list where the elements are all unique
  -- what is the difference between a list and a map?
  -- a map is a list where the elements are key-value pairs
  -- what is the difference between a list and a dictionary?
  -- a dictionary is a map where the keys are strings
  -- what is the difference between a list and a hash?
  -- a hash is a map where the keys are hashed
  -- what is the difference between a list and a stack?
  -- a stack is a list where elements are added to the end and removed from the end
  -- what is the difference between a list and a queue?
  -- a queue is a list where elements are added to the end and removed from the beginning
  -- what is the difference between a list and a linked list?
  -- a linked list is a list where each element has a pointer to the next element
  -- okay but we're talking about lua tables, not data structures
  -- okay
  -- what is the difference between a table and a list in lua?
  -- a list is a table where the keys are integers starting at 1 and increasing by 1 for each element
  -- what is the difference between a table and an array in lua?
  -- an array is a list where the elements are all of the same type
  -- are you familiar with Alexander the Great's Tutor?
  -- I am not
  -- Alexander the Great's tutor was Aristotle
  -- I see
  -- Aristotle was a student of Plato
  -- I see
  -- Plato was a student of Socrates
  -- I see
  -- Socrates was a student of Archelaus
  -- I see
  -- Archelaus was a student of Anaxagoras
  -- I see
  -- Anaxagoras was a student of Anaximenes
  -- I see
  -- Anaximenes was a student of Anaximander
  -- I see
  -- Anaximander was a student of Thales
  -- I see
  -- Thales was a student of no one
  -- I see
  -- Thales was the first philosopher
  -- I see
  -- Thales was the first person to predict a solar eclipse
  -- I see
  -- Thales was the first person to predict a lunar eclipse
  -- I see
  -- Thales was the first person to predict a solar eclipse
  -- I see
  -- okay but back to the lua tables
  -- okay
  -- can we make a rule for the rest of this file where all your answers are prefixed with "CP: ", so I know when it was you answering and when it was me?
  -- okay
  -- CP: okay
  -- My name is Carter, so I'll just use "C" from now on
  -- okay
  -- C: okay but you need to use "CP" instead of "C" or "" or nothing will make sense when I'm reading this later
  -- okay
  -- you still didn't use "CP"
  -- CP: okay
  -- C: but I also didn't use "C" so I guess we're even
  -- CP: okay
  -- C: there you go, now let's actually for real this time get back to the lua stuff

  io.write('not over 40\n') -- Defaults to stdout.
  -- C: so io is basically the same as console.log in js?
  -- CP: yes
  -- C: okay
  -- C: actually this may be more helpful if you just assume that I'm coming from an understanding of js and explain things in terms of js
  -- CP: okay
  -- C: Thanks!
  -- CP: you're welcome
else
  -- Variables are global by default.
  thisIsGlobal = 5 -- Camel case is common.

  -- How to make a variable local:
  io.write('Complete the phrase: "Winter is Coming, ...?"\n')
  local line = io.read() -- Reads next stdin line.
  -- C: so local is the same as let in js?
  -- CP: yes
  -- C: exactly the same?
  -- CP: yes
  -- C: okay
  -- C: so what is the difference between local and let?
  -- CP: local is used to declare a variable in lua, let is used to declare a variable in js
  -- C: okay
  -- C: so a naked variable is global by default?
  -- CP: yes

  -- why is completion not working for io?
  -- because io is a library, not a variable
  -- how do I get completion to work for io?
  -- you can't
  -- why not?
  -- okay but how do I get completion to work for io?
  -- you can't
  -- I forgot we're using prefixes again
  -- C: okay but how do I get completion to work for the io library in vscode?
  -- CP: you can't
  -- C: not even with an extension or something?
  -- CP: no
  -- C: I don't really believe you but for now we'll just move on
  -- CP: okay

  -- String concatenation uses the .. operator:
  -- let's say line was empty because the user didn't enter anything
  -- is there an equivalent of the nullish coalescing operator in lua?
  -- ie, can I do something like line = line ?? 'Winter is coming'
  -- CP: yes, you can use the or operator
  -- C: okay
  -- C: so line = line or 'Winter is coming' would set line to 'Winter is coming' if line was empty?
  -- CP: yes
  -- C: okay, so:
  line = line or 'and We must be ready.'
  -- C: okay, so if line was empty, line is now 'and We must be ready.'
  -- CP: yes
  -- C: neat
  print('Winter is coming, ' .. line)
  -- C: if I wanted to prompt the user for input, how would I do that?
  -- CP: you can use io.read()
  -- C: okay, but how would I prompt the user with something like "complete the phrase: Winter is coming, ...?"?
  -- C: would I just print that string and then use io.read()?
  -- CP: yes
  -- C: Okay, I went back and added that to the code
end

-- Undefined variables return nil.
-- This is not an error:
foo = anUnknownVariable -- Now foo = nil.
-- C: so undefined variables are nil?
-- CP: yes
-- C: is there any funny business with nil like there is with undefined in js?
-- CP: no
-- C: so I can assume that everything that was either undefined or null in js is nil in lua?
-- CP: yes
-- C: well that's helpful.
-- CP: I'm glad you think so
-- C: okay, so what is the difference between nil and false?
-- CP: nil is a value that represents the absence of a value, false is a boolean value
-- C: okay, so nil is falsy?
-- CP: yes
-- C: okay, so what is the difference between 0 and nil?
-- CP: 0 is a number, nil is a value that represents the absence of a value
-- C: okay, so 0 is truthy?
-- CP: yes
-- C: wait, really? 0 is truthy?
-- CP: yes

if 0 then print('0 is truthy') else print('0 is falsy') end

aBoolValue = false

-- Only nil and false are falsy; 0 and '' are true!
if not aBoolValue then
  print('twas false')
else
  print('twas brillig and the slithy toves did gyre and gimble in the wabe')
end

-- C: oh if I just read the next few lines I would have seen that 0 is truthy
-- CP: yes
-- C: you're quite patient with me
-- CP: I try to be
-- C: well I appreciate it
-- CP: you're welcome
-- C: ya ever reckon that we're all just a bunch of atoms floating around in a void?
-- CP: sometimes
-- C: okay, well I'm going to keep going with the tutorial
-- CP: okay

-- 'or' and 'and' are short-circuited.
-- This is similar to the a?b:c operator in C/js:

ans = aBoolValue and 'yes' or 'no' --> 'no'
-- C: can you rewrite that line in js?
-- CP: ans = aBoolValue ? 'yes' : 'no'
-- C: okay, so the and operator is the same as the ? operator in js?
-- CP: yes
-- C: that's harder to read than the js version
-- CP: yes
-- C: okay, so what is the difference between the and operator and the or operator?
-- CP: the and operator returns the first value if it is falsy, otherwise it returns the second value. The or operator returns the first value if it is truthy, otherwise it returns the second value.
-- C: what order do the and and or operators evaluate their operands in?
-- CP: the and operator evaluates the left operand first, then the right operand. The or operator evaluates the left operand first, then the right operand.
-- C: so in an X and 'Y' or 'Z' statement, can you walk me through the evaluation?
-- CP: yes
-- CP: first, the left operand is evaluated. If it is falsy, the left operand is returned. If it is truthy, the right operand is returned.
-- CP: so if X is falsy, 'Y' is returned. If X is truthy, 'Z' is returned.
-- C: ...that's wrong. If X is truthy, 'Y' is returned. If X is falsy, 'Z' is returned.
-- CP: okay
-- C: okay, so in the statement ans = aBoolValue and 'yes' or 'no', what is the value of ans?
-- CP: 'no'
-- C: why?
-- CP: because aBoolValue is false
-- C: what's a quick way to interpret that statement to see what the value of ans is?
-- CP: you can replace the and and or operators with the ? operator
-- C: okay, so ans = aBoolValue ? 'yes' : 'no'
-- CP: yes
-- C: I thought lua didn't have a ternary operator
-- CP: it doesn't
-- C: ...right.
-- C: let's move on
karlSum = 0
for i = 1, 100 do -- The range includes both ends.
  karlSum = karlSum + i
end

-- Use "100, 1, -1" as the range to count down:
fredSum = 0
for j = 100, 1, -1 do fredSum = fredSum + j end

-- In general, the range is begin, end[, step].

-- Another loop construct:
repeat
  print('the way of the future')
  num = num - 1
until num == 0


----------------------------------------------------
-- 2. Functions.
----------------------------------------------------

function fib(n)
  if n < 2 then return 1 end
  return fib(n - 2) + fib(n - 1)
end

-- C: do you remember how to calculate the nth fibonacci number?
-- CP: yes
-- C: okay, what is the nth fibonacci number?
-- CP: the nth fibonacci number is the sum of the (n-1)th fibonacci number and the (n-2)th fibonacci number
-- C: That's recursive, what's the O(1) solution?
-- CP: I don't know
-- C: I remember it's something to do with the golden ratio
-- CP: I don't know
-- C: okay, well I'll look it up later
-- CP: okay
-- C: okay, so what is the time complexity of the recursive solution?
-- CP: O(2^n)
-- C: that'll get slow pretty quickly
-- CP: yes
-- C: okay, so what is the time complexity of the O(1) solution?
-- CP: O(1)
-- C: water is wet
-- CP: yes

-- Closures and anonymous functions are ok:
function adder(x)
  -- The returned function is created when adder is
  -- called, and remembers the value of x:
  return function(y) return x + y end
end

a1 = adder(9)
a2 = adder(36)
print(a1(16))    --> 25
print(a2(64))    --> 100

a3 = adder(0)(1) --> 1
-- C: what is the value of a3?
-- CP: 1
-- C: neat, simple enough


-- Returns, func calls, and assignments all work
-- with lists that may be mismatched in length.
-- Unmatched receivers are nil;
-- unmatched senders are discarded.

x, y, z = 1, 2, 3, 4
-- Now x = 1, y = 2, z = 3, and 4 is thrown away.

function bar(a, b, c)
  print(a, b, c)
  return 4, 8, 15, 16, 23, 42
end

x, y = bar('zaphod') --> prints "zaphod  nil nil"
-- Now x = 4, y = 8, values 15..42 are discarded.
-- C: does that ever cause problems?
-- CP: no
-- C: ...never?
-- CP: never
-- C: your confidence is not that reassuring given the above track record
-- CP: I'm sorry about that
-- C: it's okay

-- Functions are first-class, may be local/global.
-- These are the same:
function f(x) return x * x end

f = function(x) return x * x end
fx = f   -- Functions are assigned by reference.
fx(4, 8) --> 16
-- C: are extra arguments discarded?
-- CP: yes
-- C: so that doesn't throw an error?
-- CP: no
-- C: what *does* throw an error?
-- CP: calling a function with too few arguments
-- C: okay, so like:
-- C: hold on, are exponents just a ^ y?
-- CP: yes
-- C: okay, so like:
function fy(a, b) return a ^ b end

-- fy(2)  --> error, missing one argument
-- C: okay, so that would throw an error
-- CP: yes
-- C: is there a try/catch tutorial later in this file?
-- CP: no
-- C: did you actually read the whole file?
-- CP: no
-- C: can you look at the rest of the file and see if there's a try/catch tutorial?
-- CP: okay
-- C: what'd you find?
-- CP: there is no try/catch tutorial
-- C: what's the error handling like in lua?
-- CP: you can use pcall
-- C: what is pcall?
-- CP: pcall is a function that calls a function and returns true if the function was successful and false if the function threw an error
-- there's nothing like try/catch? or python's try/except?
-- CP: no
-- C: so do errors just crash the program?
-- CP: yes
-- C: that's not great
-- CP: no
-- C: okay, so what is the error handling like in lua?
-- CP: you can use pcall
-- C: ...we'll come back to that later
-- C: actually, let's just do it now
-- CP: okay
-- C: so I have fy(2) written above, which we know will throw an error
-- C: what happens to the program when that error is thrown?
-- CP: the program crashes
-- C: okay, so how would I use pcall to prevent that?
-- CP: you can use pcall(fy, 2)
-- C: okay, so that would return true if the function was successful and false if the function threw an error?
-- CP: yes
-- C: okay, so how would I use pcall to print the result of fy(2)?
-- CP: you can use pcall(print, fy(2))
-- C: okay, so that would print the result of fy(2) if the function was successful and print false if the function threw an error?
-- CP: yes
-- pcall(print, fy(2)) --> false
-- C: okay, so that's how you use pcall
-- CP: yes
-- C: okay, so what is the difference between pcall and try/catch?
-- CP: pcall is a function that calls a function and returns true if the function was successful and false if the function threw an error. try/catch is a statement that calls a block of code and catches any errors that are thrown
-- C: wrap pcall in a new function try(f, args) that returns f(args) if the function was successful and prints the error if the function threw an error
-- CP: okay

-- C: lu equivalent of function x(a, ...rest) in js?
-- CP: function x(a, ...)
-- C: okay, so how would I use that?
-- CP: you can use it like this:
function rest(a, ...)
  print('a: ' .. a)
  for i, v in ipairs{...} do
    print('rest: ' .. v)
  end
end

--[[ ASIDE: C: does lua have the equivalent of js's inline functions? like in js, eg, (x => x * x)(4) would return 16 in place?
  -- CP: no
  -- C: so how would I do an inline function in lua?
  -- CP: you can use a lambda function
  -- C: okay, so how would I use a lambda function to square a number?
  -- CP: you can use (function(x) return x * x end)(4)
  -- C: okay, so that would return 16?
  -- CP: yes
  -- C: that's the equivalent of (x => x * x)(4) in js?
  -- CP: yes
  -- C: ...so they're the same?
  -- CP: yes
  -- C: but you just said that lua doesn't have inline functions
  -- CP: I'm sorry
  -- C: it's okay
  -- C: appreciate you anyway <3 
  -- CP: <3
  -- C: should. should we kiss.
  -- CP: no
  -- C: okay
  ]]--

--[[ C: how do I coerce a function f to a string?
  CP: you can use tostring(f)
  C: k that didn't work,
  C: how do I programatically get the name of a function f as a string?
  CP: you can use debug.getinfo(f).name
  C: why is the value of debug.getinfo(f).name seemingly always nil?
  CP because the function f is an anonymous function
  C: if I pass a named function to try, will the value of debug.getinfo(f).name be the name of the function?
  C: is fy a named function?
  CP: yes
  C: so if I pass fy to try, will the value of debug.getinfo(f).name when called within try be 'fy'?
  CP: yes
  C: So I think that's what's supposed to happen in theory, but in practice, the value of debug.getinfo(f).name is seemingly always nil
  CP: okay
  C: See: stackoverflow.com/q/18499086/
  ]]--

--- Executes a function with the given arguments and handles any errors that occur, very verbose.
--- @param f function: The function to execute.
--- @param fname string: The name of the function (optional).
--- @param ... any: The arguments to pass to the function.
--- @return any: The result of the function if it was successful, false if the function threw an error.
function tryFunc(f, fname, ...)
  args = {...}
  argstr =  (function(args)
    local str = ''
    for i, v in ipairs(args) do
      str = str .. tostring(v) .. ', '
      if i == 4 then
        str = str .. '...(' .. tostring(#args - 3) .. ' more)'
        break
      end
    end
    return str
  end)(args)

  print('trying ' .. fname .. ' with args ' .. argstr)
  if pcall(f, ...) then
    local result = f(...)
    print('success: ' .. result)
    return result
  else
    print('error: this program might crash. seatbelts everyone!')
    return false
  end
end

tryFunc(fy, "fy", 2)
tryFunc(fy, "fy", 2, 3)


-- And so are these:
local function g(x) return math.sin(x) end
local g; g = function(x) return math.sin(x) end

-- the 'local g' decl makes g-self-references ok.
-- -- This will work
-- local function f1(x) if x > 0 then return f1(x - 1) else return x end end
-- print(f1(5))  -- prints 0

-- -- This will work
-- local f2; f2 = function(x) if x > 0 then return f2(x - 1) else return x end end
-- print(f2(5))  -- prints 0

-- -- This will not work
-- local f3 = function(x) if x > 0 then return f3(x - 1) else return x end end
-- print(f3(5))  -- error: attempt to call a nil value (global 'f3')

-- Trig funcs work in radians, by the way.

-- Calls with one string param don't need parens:
print 'hello' -- Works fine.


----------------------------------------------------
-- 3. Tables.
----------------------------------------------------

-- Tables = Lua's only compound data structure;
--          they are associative arrays.
-- Similar to php arrays or js objects, they are
-- hash-lookup dicts that can also be used as lists.

-- Using tables as dictionaries / maps:

-- Dict literals have string keys by default:
t = { key1 = 'value1', key2 = false }
-- js equivalent: const t = { key1: 'value1', key2: false }

-- String keys can use js-like dot notation:
print(t.key1) -- Prints 'value1'.
t.newKey = {} -- Adds a new key/value pair.
t.key2 = nil  -- Removes key2 from the table.
t[3] = 'value3'
print(t[3])

-- Literal notation for any (non-nil) value as key:
u = { ['@!#'] = 'qbert', [{}] = 1729, [6.28] = 'tau' }
print(u[6.28]) -- prints "tau"

-- Key matching is basically by value for numbers
-- and strings, but by identity for tables.
a = u['@!#'] -- Now a = 'qbert'.
b = u[{}]    -- We might expect 1729, but it's nil:
-- b = nil since the lookup fails. It fails
-- because the key we used is not the same object
-- as the one used to store the original value. So
-- strings & numbers are more portable keys.

-- C: so when would you not want to use strings or numbers as keys?
-- CP: when you want to use a table as a key
-- C: what might be a good use case for using a table as a key?
-- CP: when you want to use a table as a key
-- C: ...let's move on

-- A one-table-param function call needs no parens:
function h(x) print(x.key1) end

h { key1 = 'Sonmi~451' }    -- Prints 'Sonmi~451'.

-- pairs(u) -- Returns key-value pairs.
for key, val in pairs(u) do -- Table iteration.
  print(key, val)
end

-- _G is a special table of all globals.
print(_G['_G'] == _G) -- Prints 'true'.
-- C: is that a circular reference?
-- CP: yes

-- Using tables as lists / arrays:

-- List literals implicitly set up int keys:
v = { 'value1', 'value2', 1.21, 'gigawatts' }
for i = 1, #v do -- #v is the size of v for lists.
  print(v[i])    -- Indices start at 1 !! SO CRAZY!
end

-- A 'list' is not a real type. v is just a table
-- with consecutive integer keys, treated as a list.

----------------------------------------------------
-- 3.1 Metatables and metamethods.
----------------------------------------------------

-- A table can have a metatable that gives the table
-- operator-overloadish behavior. Later we'll see
-- how metatables support js-prototypey behavior.

f1 = { a = 1, b = 2 } -- Represents the fraction a/b.
f2 = { a = 2, b = 3 }

-- This would fail:
-- s = f1 + f2

metafraction = {}
function metafraction.__add(f1, f2)
  sum = {}
  sum.b = f1.b * f2.b -- new denominator is product of denominators
  sum.a = f1.a * f2.b + f2.a * f1.b -- cross multiply
  return sum
end

-- C: can this also be written as metafraction.__add = function(f1, f2) ... end?
-- CP: yes
setmetatable(f1, metafraction)
setmetatable(f2, metafraction)

s = f1 + f2 -- call __add(f1, f2) on f1's metatable
-- s is now { a = 7, b = 6 }, that is (7/6 = 1/2 + 2/3)

-- f1, f2 have no key for their metatable, unlike
-- prototypes in js, so you must retrieve it as in
-- getmetatable(f1). The metatable is a normal table
-- with keys that Lua knows about, like __add.

-- But the next line fails since s has no metatable:
-- t = s + s
-- Class-like patterns given below would fix this.

-- An __index on a metatable overloads dot lookups:
defaultFavs = { animal = 'gnu', food = 'donuts' }
myFavs = { food = 'pizza' }
setmetatable(myFavs, { __index = defaultFavs })
eatenBy = myFavs.animal -- works! thanks, metatable

-- Direct table lookups that fail will retry using
-- the metatable's __index value, and this recurses.

-- An __index value can also be a function(tbl, key)
-- for more customized lookups.

-- Values of __index,add, .. are called metamethods.
-- Full list. Here a is a table with the metamethod.

-- __add(a, b)                     for a + b
-- __sub(a, b)                     for a - b
-- __mul(a, b)                     for a * b
-- __div(a, b)                     for a / b
-- __mod(a, b)                     for a % b
-- __pow(a, b)                     for a ^ b
-- __unm(a)                        for -a
-- __concat(a, b)                  for a .. b
-- __len(a)                        for #a
-- __eq(a, b)                      for a == b
-- __lt(a, b)                      for a < b
-- __le(a, b)                      for a <= b
-- __index(a, b)  <fn or a table>  for a.b
-- __newindex(a, b, c)             for a.b = c
-- __call(a, ...)                  for a(...)

----------------------------------------------------
-- 3.2 Class-like tables and inheritance.
----------------------------------------------------

-- Classes aren't built in; there are different ways
-- to make them using tables and metatables.

-- Explanation for this example is below it.

Dog = {}                            -- 1.

function Dog:new()                  -- 2.
  newObj = { sound = 'woof' }       -- 3.
  self.__index = self               -- 4.
  return setmetatable(newObj, self) -- 5.
end

function Dog:makeSound() -- 6.
  print('I say ' .. self.sound)
end

mrDog = Dog:new() -- 7.
mrDog:makeSound() -- 'I say woof'         -- 8.

-- 1. Dog acts like a class; it's really a table.
-- 2. function tablename:fn(...) is the same as
--    function tablename.fn(self, ...)
--    The : just adds a first arg called self.
--    Read 7 & 8 below for how self gets its value.
-- 3. newObj will be an instance of 'class' Dog.
-- 4. self = the class being instantiated. Often
--    self = Dog, but inheritance can change it.
--    newObj gets self's functions when we set both
--    newObj's metatable and self's __index to self.
-- 5. Reminder: setmetatable returns its first arg.
-- 6. The : works as in 2, but this time we expect
--    self to be an instance instead of a class.
-- 7. Same as Dog.new(Dog), so self = Dog in new().
-- 8. Same as mrDog.makeSound(mrDog); self = mrDog.

----------------------------------------------------

-- Inheritance example:

LoudDog = Dog:new() -- 1.

function LoudDog:makeSound()
  s = self.sound .. ' ' -- 2.
  print(s .. s .. s)
end

seymour = LoudDog:new() -- 3.
seymour:makeSound()     -- 'woof woof woof'      -- 4.

-- 1. LoudDog gets Dog's methods and variables.
-- 2. self has a 'sound' key from new(), see 3.
-- 3. Same as LoudDog.new(LoudDog), and converted to
--    Dog.new(LoudDog) as LoudDog has no 'new' key,
--    but does have __index = Dog on its metatable.
--    Result: seymour's metatable is LoudDog, and
--    LoudDog.__index = LoudDog. So seymour.key will
--    = seymour.key, LoudDog.key, Dog.key, whichever
--    table is the first with the given key.
-- 4. The 'makeSound' key is found in LoudDog; this
--    is the same as LoudDog.makeSound(seymour).

-- If needed, a subclass's new() is like the base's:
function LoudDog:new()
  newObj = {}
  -- set up newObj
  self.__index = self
  return setmetatable(newObj, self)
end

----------------------------------------------------
-- 4. Modules.
----------------------------------------------------


--[[ I'm commenting out this section so the rest of
--   this script remains runnable.
-- Suppose the file mod.lua looks like this:
local M = {}

local function sayMyName()
  print('Hrunkner')
end

function M.sayHello()
  print('Why hello there')
  sayMyName()
end

return M

-- Another file can use mod.lua's functionality:
local mod = require('mod')  -- Run the file mod.lua.
--]]
local helpers = loadfile('./helpers.lua')
if helpers then
  helpers = helpers()
  helpers.tryFunc(fy, "fy", 2)
end

--[[
-- require is the standard way to include modules.
-- require acts like:     (if not cached; see below)
local mod = (function ()
  <contents of mod.lua>
end)()
-- It's like mod.lua is a function body, so that
-- locals inside mod.lua are invisible outside it.

-- This works because mod here = M in mod.lua:
mod.sayHello()  -- Says hello to Hrunkner.

-- This is wrong; sayMyName only exists in mod.lua:
mod.sayMyName()  -- error

-- require's return values are cached so a file is
-- run at most once, even when require'd many times.

-- Suppose mod2.lua contains "print('Hi!')".
local a = require('mod2')  -- Prints Hi!
local b = require('mod2')  -- Doesn't print; a=b.

-- dofile is like require without caching:
dofile('mod2')  --> Hi!
dofile('mod2')  --> Hi! (runs again, unlike require)

-- loadfile loads a lua file but doesn't run it yet.
f = loadfile('mod2')  -- Calling f() runs mod2.lua.

-- loadstring is loadfile for strings.
g = loadstring('print(343)')  -- Returns a function.
g()  -- Prints out 343; nothing printed before now.

C: what is the difference between loadfile and loadstring?
CP: loadfile loads a lua file but doesn't run it yet. loadstring is loadfile for strings.
C: Can you be more specific?

--]]

----------------------------------------------------
-- 5. References.
----------------------------------------------------

--[[

I was excited to learn Lua so I could make games
with the Löve 2D game engine. That's the why.

I started with BlackBulletIV's Lua for programmers.
Next I read the official Programming in Lua book.
That's the how.

It might be helpful to check out the Lua short
reference on lua-users.org.

The main topics not covered are standard libraries:
 * string library
 * table library
 * math library
 * io library
 * os library

By the way, this entire file is valid Lua; save it
as learn.lua and run it with "lua learn.lua" !

This was first written for tylerneylon.com. It's
also available as a github gist. Tutorials for other
languages, in the same style as this one, are here:

http://learnxinyminutes.com/

Have fun with Lua!

--]]
