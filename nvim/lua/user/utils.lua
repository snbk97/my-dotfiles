local M = {}

local function func_or_extend(overrides, default, extend)
  if extend then
    if type(overrides) == "table" then
      default = vim.tbl_deep_extend("force", default, overrides)
    elseif type(overrides) == "function" then
      default = overrides(default)
    end
  elseif overrides ~= nil then
    default = overrides
  end
  return default
end

function M.user_plugin_opts(module, default, extend)
  if extend == nil then
    extend = true
  end
  local user_settings = load_module_file("user." .. module)
  if user_settings == nil then
    user_settings = user_setting_table(module)
  end
  if user_settings ~= nil then
    default = func_or_extend(user_settings, default, extend)
  end
  return default
end

return M
