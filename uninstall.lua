local shell = require('shell')
local scripts = {
    'scan.lua',
    'stockList.lua',
    'autoStock.lua',
    'setup.lua',
    'uninstall.lua'
}

-- UNINSTALL
for i=1, #scripts do
    shell.execute(string.format('rm %s', scripts[i]))
    print(string.format('Uninstalled %s', scripts[i]))
end