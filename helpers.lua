--- Executes a function with the given arguments and handles any errors that occur, very verbose.
--- @param f function: The function to execute.
--- @param fname string: The name of the function (optional).
--- @param ... any: The arguments to pass to the function.
--- @return any: The result of the function if it was successful, false if the function threw an error.
function tryFunc(f, fname, ...)
  args = { ... }
  argstr = (function(args)
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

envprint = function () for key, val in pairs(_ENV) do print(tostring(key) .. ": " .. tostring(val)) end end
envprint()