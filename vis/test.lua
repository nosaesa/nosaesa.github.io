require 'io'
JSON = require('JSON')
require 'torch'

file = io.open('cell_linux_h310_l2.json')
temp = file:read()
file:close()
karpathy = JSON:decode(temp)
kkeys = {}
i = 0
for k,v in pairs(karpathy) do kkeys[i] = k; i = i + 1; end
torch.save('karpathy.t7',karpathy)
