<%


Dim randomInsideWallpaper
Randomize
randomInsideWallpaper = Round(Rnd * 1)+1


sPath = Request.ServerVariables("URL")


contact = InStr(sPath,"contacts")
tools = InStr(sPath,"tools")
about = InStr(sPath,"about")
awards = InStr(sPath,"aboutAwards")
rates = InStr(sPath,"rates")
research = InStr(sPath,"research")
rmbOnline = InStr(sPath,"rmbOnline")
webank = InStr(sPath,"weBank")
weenhance = InStr(sPath,"weEnhance")
wefinance = InStr(sPath,"weFinance")
weinvest = InStr(sPath,"weInvest")
wetrade = InStr(sPath,"weTrade")
sitemap = InStr(sPath,"sitemap")
terms = InStr(sPath,"terms")
regulatory = InStr(sPath,"regulatory")


if contact > 0 then
 response.Cookies("insidewallpaper") = "contact/" & randomInsideWallpaper

elseif tools > 0 then
 response.Cookies("insidewallpaper") = "tools/" & randomInsideWallpaper
 	
elseif about > 0 then
 response.Cookies("insidewallpaper") = "about/" & randomInsideWallpaper
 	
elseif contactus > 0 then
 response.Cookies("insidewallpaper") = "contactus/" & randomInsideWallpaper
 	
elseif rates > 0 then
 response.Cookies("insidewallpaper") = "rates/" & randomInsideWallpaper
 
elseif research > 0 then
 response.Cookies("insidewallpaper") = "research/" & randomInsideWallpaper
	
elseif rmbOnline > 0 then
 response.Cookies("insidewallpaper") = "rmbOnline/" & randomInsideWallpaper

elseif webank > 0 then
 response.Cookies("insidewallpaper") = "webank/" & randomInsideWallpaper
	
elseif weenhance > 0 then
 response.Cookies("insidewallpaper") = "weenhance/" & randomInsideWallpaper
 
elseif wefinance > 0 then
 response.Cookies("insidewallpaper") = "wefinance/" & randomInsideWallpaper
 
elseif weinvest > 0 then
 response.Cookies("insidewallpaper") = "weinvest/" & randomInsideWallpaper
 
elseif wetrade > 0 then
 response.Cookies("insidewallpaper") = "weTrade/" & randomInsideWallpaper
 
 elseif sitemap > 0 then
 response.Cookies("insidewallpaper") = "sitemap/" & randomInsideWallpaper
 
 elseif terms > 0 then
 response.Cookies("insidewallpaper") = "terms/" & randomInsideWallpaper
 
 elseif regulatory > 0 then
 response.Cookies("insidewallpaper") = "regulatory/" & randomInsideWallpaper
 
else
 response.Cookies("insidewallpaper") = "about/" & randomInsideWallpaper

end if


' Overwrite the above for special pages
if awards > 0 then
 response.Cookies("insidewallpaper") = "awards/" & 1
end if


%>
