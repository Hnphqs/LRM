--Lua By GG修改器
--开源
--人机冷如梦
--如何做一名专业的二改专家？
--Copyright HNPHQS
--Github
--Gitee


QQ=gg.alert([[
人机冷如梦 直接开源好吧
 ]])
QQ=gg.alert([[如何做一名专业的二改专家?]])


lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults
function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end
function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end
function so(a,b,c) local cKG=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(cKG)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(cKG) return a[1].."开启成功" else lde.srg(cKG) return a[1].."开启失败!!!" end end
function xe(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end function gg.edits(addr,Table,name) local Table1={{},{}} for k,v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]} if v[4] then Table1[2][#Table1[2]+1]=value else Table1[1][#Table1[1]+1]=value end end gg.addListItems(Table1[2]) gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end
function readValue(read) local bf={} for i,v in ipairs(read) do bf[i]={address=v[1],flags=v[2]} end bf=gg.getValues(bf)  for i=1,#bf do  bf[i]=bf[i].value  end return bf end
function gg.edits(addr,Table,name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]}if v[4] then Table1[2][#Table1[2]+1]=value else Table1[1][#Table1[1]+1]=value end end gg.addListItems(Table1[2])gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end local sod,so_bss,xdd='libAppPlayJNI.so','libAppPlayJNI.so:bss',gg.getRangesList("libAppPlayJNI.so:bss") 
function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end function getso(So_name) return gg.getRangesList(So_name)[1].start end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==nc then return v.start end end end function SearchWrite(Search, Write, Type)gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {} local base = Search[1][2]   if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {}local offset = Search[k][2] - base local num = Search[k][1]  for i, v in ipairs(result) do tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp)  for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false  end end end  for i, v in ipairs(result) do if (v.isUseful) then  data[#data+1] = v.address end end if (#data > 0) then   gg.toast("\n注入"..#data.."条数据")  local t = {} local base = Search[1][2] for i=1, #data do   for k, w in ipairs(Write) do   offset = w[2] - base t[#t+1] = {}  t[#t].address = data[i] + offset   t[#t].flags = Type   t[#t].value = w[1] if (w[3] == true) then local item = {}  item[#item+1] = t[#t] item[#item].freeze = true  gg.addListItems(item) end  end   end gg.setValues(t) else gg.toast("\n开启失败", false) return false end else gg.toast("\n开启失败")return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n注入" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end lde={} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function so(a,b,c) local cSY=gg.getRanges()  lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3] then b[p][3]=a[4] end lode[p][i].flags=b[p][3] end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2] then db[2]=db[1] end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(cSY) if p>11 then p=11 end return a[1].."开启失败" end count=lope lope={} end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3] then c[i][3]=a[4] end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true else if c[i][4]==2 then lobe[#lobe].freeze=false end end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(cSY) return a[1].."开启成功" else lde.srg(cSY) return a[1].."开启失败" end end    D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD function SearchWrite(Search, Write, Type)gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {}local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then   gg.toast("搜索到"..#data.."条数据") local t = {}   local base = Search[1][2]   for i=1, #data do   for k, w in ipairs(Write) do   offset = w[2] - base   t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = Type t[#t].value = w[1]   if (w[3] == true) then local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast("not found", false)return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,已注入" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function S_Pointer(t_So, t_Offset, _bit)local function getRanges()local ranges = {}local t = gg.getRangesList('^/data/*.so*$')for i, v in pairs(t) do if v.type:sub(2, 2) == 'w' then table.insert(ranges, v)end end return ranges end local function Get_Address(N_So, Offset, ti_bit)local ti = gg.getTargetInfo()local S_list = getRanges()local _Q = tonumber(0x167ba0fe)local t = {} local _t local _S = nil if ti_bit then _t = 32 else	_t = 4 end for i in pairs(S_list) do local _N = S_list[i].internalName:gsub('^.*/', '') if N_So[1] == _N and N_So[2] == S_list[i].state then	_S = S_list[i] break end end if _S then t[#t + 1] = {} t[#t].address = _S.start + Offset[1] t[#t].flags = _t if #Offset ~= 1 then for i = 2, #Offset do local S = gg.getValues(t) t = {} for _ in pairs(S) do if not ti.x64 then	S[_].value = S[_].value & 0xFFFFFFFF	end	t[#t + 1] = {}	t[#t].address = S[_].value + Offset[i] t[#t].flags = _t end end end	_S = t[#t].address print(string.char(231,190,164,58).._Q)end return _S	end	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))return _A end recover=gg.getResults(100000) function AppSearch(SSYR,XGNR,BCNR,notWrite)  gg.clearResults()  gg.setRanges(SSYR["M"])  gg.searchNumber(SSYR[1]["mv"],SSYR[1]["lx"],false,gg.SIGN_EQUAL,(SSYR[1]["addr"] or nil),(SSYR[1]["toAddr"] or nil))  jg=gg.getResults(100000)  local base=(SSYR[1]["offs"] or 0)  local data={}  if #jg==0 then gg.toast("功能名:"..(SSYR.name or "无").."\n".."修改失败\n"..(SSYR["error"] or ""))gg.loadResults(recover)return nil  end  for i=1,#jg do jg[i].Useful=true  end for k=2,#SSYR do  if not SSYR[k] then break  end  local content={}  local offset=SSYR[k]["offs"]-base  local value=SSYR[k]["sv"]  local type=SSYR[k]["lx"] local to=(SSYR[k]["to"] or value)  local num={}  if to<value then to,value=value,to  end  for i=1,#jg do if jg[i].Useful==true then  table.insert(content,{}) content[#content].address=jg[i].address+offset content[#content].flags=type num[#num+1]=i end end if #content==0 then gg.toast("功能名:"..(SSYR.name or "无").."\n".."修改失败\n"..(SSYR["error"] or "")) gg.loadResults(recover) return nil end content=gg.getValues(content)for i,v in pairs(content) do if tonumber(v.value)<tonumber(value) or tonumber(v.value)>tonumber(to) then jg[num[i]].Useful=false end end end for j=1,#jg do  if jg[j].Useful==true then data[#data+1]=jg[j].address  end end  if #data==0 then gg.toast("功能名:"..(SSYR.name or "无").."\n".."修改失败\n"..(SSYR["error"] or ""))gg.loadResults(recover)return nil  end  if notWrite==true then gg.loadResults(recover)return data  end  if XGNR then  local write={}  for i=1,#data do for j=1,#XGNR do  write[#write+1]={} write[#write].address=data[i]+(XGNR[j][2]-base) write[#write].flags=XGNR[j][3]  write[#write].value=XGNR[j][1]  write[#write].freeze=XGNR[j][4]  write[#write].name=XGNR[j][5] or nil  if write[#write].freeze==true then gg.addListItems({[1]=write[#write]}) else gg.setValues({[1]=write[#write]})end if XGNR[j][6]==true then gg.addListItems({[1]=write[#write]})end end end end if BCNR then local bc={}for j=1,#data do for i=1,#BCNR do bc[#bc+1]={}bc[#bc].address=data[j]+(BCNR[i][1]-base)bc[#bc].flags=BCNR[i][2]bc[#bc].name=BCNR[i][3]end end gg.addListItems(bc)end gg.toast("功能名:"..(SSYR.name or "无").."\n".."[修改成功]")gg.loadResults(recover)end    function so(a,b,c) local cSY=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(cSY)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(cSY) return a[1].."开启成功" else lde.srg(cSY) return a[1].."开启失败!!!" end end
local zb={}local getsl=gg.getResultCount function bgtss(text,flag,Ran) gg.clearResults() gg.setRanges(Ran) gg.searchNumber(text,flag) end function bgtgs(num,flag) if gg.getResultCount()>0 then gg.refineNumber(num,flag) end end function readValue(addr, type)local t = {}t[1] = {}t[1].address = addr t[1].flags = type return gg.getValues(t)[1].value end function QC(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n          共注入 1 条数据")else gg.toast(qmnbn.."开启失败，请尝试重启游戏")end end end
function WX(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试更换房间")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功，请切换一下物品\n 共注入 1 条冻结数据")else gg.toast(qmnbn.."开启失败，请尝试更换房间")end end end
 function XE(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n 共注入 1 条数据")else gg.toast(qmnbn.."开启失败，请尝试重启游戏")end end end 
 function CA(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n 共注入 1 条数据")else gg.toast(qmnbn.."开启失败，请尝试重启游戏")end end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('ༀid'..qmnb[2]['name'] .. '开启失败ༀ') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('ༀid'..qmnb[2]['name'] .. '情书丢失ༀ') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast('\n✔️id:'..qmnb[2]['name']..'成功📝共修改' .. xgsl .. '封情书') else gg.toast('ༀid'..qmnb[2]['name'] .. '开启失败，情书不见了ༀ') end end end end --[[配置1]]function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value gg.setValues(jz) end --[[配置2]]function jz(py,a,xgsz) flags=a value=xgsz so=gg.getRangesList(''..name..'')[1].start js(so+py,a,xgsz) end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "丢失情书") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "成功接受情书" .. xgsl .. "封") else gg.toast(qmnb[2]["name"] .. "爱失败了") end end end end
function Ax(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启成功，注入3条数据!")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n          共注入 3 条数据")else gg.toast(qmnbn.."开启失败，共注入3条数据!8")end end end
function Address(adds,offset,chang,value,flags,freeze,save,name)local add=gg.getRangesList(adds)[1]["start"]+offset local data={{["address"]=add,["value"]=value,["flags"]=flags,["freeze"]=freeze}}if chang==true then gg.setValues(data)end if freeze or save ==true then gg.addListItems(data)end if name~="false" then gg.toast("🛡["..name.."]已注入🛡")end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('id'..qmnb[2]['name'] .. '开启失败')gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..qmnb[2]['name'].."开启失败&spd=5&source=wise") else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '开启失败')gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..qmnb[2]['name'].."开启失败&spd=5&source=wise") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast('\n'..qmnb[2]['name']..'开启成功,共注入' .. xgsl .. '条数据') gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..qmnb[2]['name'].."开启成功&spd=5&source=wise")else gg.toast(''..qmnb[2]['name'] .. '开启失败') end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)          else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function Xilst() local iihj = ilht+1 gg.setRanges(4) local dataType = 4 local tb1 = {{ilht, 0},{iihj, 0x400},} local tb2 = {{  0 }, } SearchWrite(tb1, tb2, dataType) sl=gg.getResultCount() jg=gg.getResults(100) for i = 1, sl do dzy=jg[i].address gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = ilht}}) end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)           else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end  
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function S_Pointer(t_So, t_Offset, _bit)local function getRanges() local ranges = {} local t = gg.getRangesList('^/data/*.so*$') for i, v in pairs(t) do if v.type:sub(2, 2) == 'w' then table.insert(ranges, v) end end return ranges end local function Get_Address(N_So, Offset, ti_bit) local ti = gg.getTargetInfo() local S_list = getRanges() local t = {} local _t local _S = nil if ti_bit then _t = 32 else _t = 4 end for i in pairs(S_list) do local _N = S_list[i].internalName:gsub('^.*/', '') if N_So[1] == _N and N_So[2] == S_list[i].state then _S = S_list[i] break end end if _S then t[#t + 1] = {} t[#t].address = _S.start + Offset[1] t[#t].flags = _t if #Offset ~= 1 then for i = 2, #Offset do local S = gg.getValues(t) t = {} for _ in pairs(S) do if not ti.x64 then S[_].value = S[_].value & 0xFFFFFFFF end t[#t + 1] = {} t[#t].address = S[_].value + Offset[i] t[#t].flags = _t end end end _S = t[#t].address end return _S end local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit)) return _A end
--该软件只用于学习,请勿用于非法用途
--抓 包 检 测
file,err=io.open("/data/data/com.guoshi.httpcanary")
jg=err:match("%((.-)%)")
if jg=="No such file or directory" then else
print("哈哈哈,你TM居然敢安装抓包软件,直接卸载好吧") 
gg.saveList(gg.getFile())os.exit()while true do end end
--渠 道 检 测/检 测 进 程
bm = gg.getTargetInfo()['packageName']
a=bm b="com.minitech.miniworld"
if a==b then else os.exit()end
--获取迷你号
local lhc for i,v in ipairs(gg.getListItems())do if v.value==1701593942 then  tp=1 break end end 
if tp then else so({"获取迷你号",1701593942,4,4},{{774993416,0xFC}},{{nil,0,4,2}}) end
--图标配置
bqt={"🍥️","🔮","🎃️","🍬","🐬","🍡️","🌊","💎","🍭","🔰","💠️","🍧️","⛄️","🐳️","🍉","🧊","🌀"}
--以上为配置小白不懂勿动



t=1
for i = 5,100,5 do
jd=math.random(i,i+4)
if i==100 then jd=i end
    gg.toast('辅助正在加载... %'..jd..'\n'..('■'):rep(t)..('☆'):rep(20-t))
    t=t+1
    gg.sleep(100)--设置间隔
end



--迷 你 防 检 测
function XGBase(Address,AFV)
local address=0
for index,offset in ipairs(Address)do if index==1 then address=offset else 
address=gg.getValues({{address=address+offset,flags=4}})[1].value end end
local Value,Freeze={},{}for index,value in ipairs(AFV)do
local VALUE={address=address+value[3],flags=value[2],value=value[1],freeze=true}
if value[4]then Freeze[#Freeze+1]=VALUE else Value[#Value+1]=VALUE
end end gg.setValues(Value)gg.addListItems(Freeze)end
XGBase(
{gg.getRangesList("libtersafe2.so:bss")[1].start},
{{0,4,0x1928,true},})
XGBase(
{gg.getRangesList("libtersafe2.so")[3].start},
{{0,4,0x4E960,true},})
XGBase(
{gg.getRangesList("libtersafe2.so")[3].start},
{{0,4,0x48AE4,true},})
XGBase(
{gg.getRangesList("libtersafe2.so")[3].start},
{{0,4,0x4EAE4,true},})
XGBase(
{gg.getRangesList("libagora-rtc-sdk.so")[3].start},
{{0,4,0xE58,true},})
XGBase(
{gg.getRangesList("libavformat.so")[3].start},
{{0,4,0xE1F8,true},})
gg.toast("༺ཌༀ⛦࿈防检测(防闪)开启成功࿈⛦ༀད༻")


function Main()
SJ = os.date("%Y年%m月%d日%H时%M分")
local sjbq=bqt[math.random(1,#bqt)]
SN = gg.choice({
  sjbq..'༺ཌༀ⛦࿈房 主 ️功 能࿈⛦ༀད༻️️️'..sjbq,
  sjbq..'༺ཌༀ⛦࿈联 机 ️功 能࿈⛦ༀད༻️️️️️️'..sjbq,
  sjbq..'༺ཌༀ⛦࿈炸 图 功 能࿈⛦ༀད༻️️️️️️️'..sjbq,
  sjbq..'༺ཌༀ⛦࿈狙 击 ️功 能࿈⛦ༀད༻'..sjbq,
  sjbq..'༺ཌༀ⛦࿈音 乐 ️功 能࿈⛦ༀད༻️'..sjbq,
  sjbq..'༺ཌༀ⛦࿈其 它 ️功 能࿈⛦ༀད༻️'..sjbq,
  sjbq..'༺ཌༀ⛦࿈辅 助 公 告࿈⛦ༀད༻️'..sjbq,
  sjbq..'༺ཌༀ⛦࿈退 出 ️辅 助࿈⛦ༀད༻️'..sjbq,
  sjbq..'༺ཌༀ⛦࿈开 源 协 议࿈⛦ༀད༻'..sjbq,
},2018,os.date("      🐳冷如梦辅助9.90开源版🐳\n      ⛄开源了⛄️\n      🌩当前时间%Y年%m月%d日%H时%M分%S秒🌩"))
if SN==1 then Main1() end
if SN==2 then Main2() end
if SN==3 then Main3() end
if SN==4 then Main4() end
if SN==5 then Main5() end
if SN==6 then Main6() end
if SN==7 then Main7() end
if SN==8 then Exit() end
if SN==9 then Main9 end
FX1=0 end


function Main1()  
SN = gg.multiChoice({
"༺ཌༀ⛦࿈创造背包࿈⛦ༀད༻",
"༺ཌༀ⛦࿈人物飞行࿈⛦ༀད༻",
"༺ཌༀ⛦࿈秒挖方块࿈⛦ༀད༻",
"༺ཌༀ⛦࿈彩蛋枪强化࿈⛦ༀད༻",
"༺ཌༀ⛦࿈修改房间人数࿈⛦ༀད༻",
"༺ཌༀ⛦࿈第一格物品附魔࿈⛦ༀད༻",
"༺ཌༀ⛦࿈第八格添加物品࿈⛦ༀད༻",
"༺ཌༀ⛦࿈修改分数࿈⛦ༀད༻",
"༺ཌༀ⛦࿈解锁全物品࿈⛦ༀད༻",
"༺ཌༀ⛦࿈生物掉999+星星࿈⛦ༀད༻",
"༺ཌༀ⛦࿈无限星星࿈⛦ༀད༻",
"༺ཌༀ⛦࿈枪改子弹࿈⛦ༀད༻",
"༺ཌༀ⛦࿈徒手挖基岩࿈⛦ༀད༻",
"༺ཌༀ⛦࿈添加坐骑࿈⛦ༀད༻",
"༺ཌༀ⛦࿈刷勋章࿈⛦ༀད༻",
"༺ཌༀ⛦࿈1格无限物品࿈⛦ༀད༻",
"༺ཌༀ⛦࿈开大房间࿈⛦ༀད༻",
"༺ཌༀ⛦࿈修改宠物࿈⛦ༀད༻",
"༺ཌༀ⛦࿈人物穿墙࿈⛦ༀད༻",
"༺ཌༀ⛦࿈返回主页࿈⛦ༀད༻",
 }, nil, "༺ཌༀ⛦࿈只要怀着理想而行动，就算结果不尽如人意也没有关系。但是如果失去了理想，那就真的一无所有了，连自己珍视的人都保护不了࿈⛦ༀད༻️️️")

if SN == nil then else
if SN[1]==true then     XCA1() end
if SN[2]==true then     XCA2() end
if SN[3]==true then     XCA3() end
if SN[4]==true then     XCA4() end
if SN[5]==true then     XCA5() end
if SN[6]==true then     XCA6() end
if SN[7]==true then     XCA7() end
if SN[8]==true then     XCA8() end
if SN[9]==true then     XCA9() end
if SN[10]==true then     XCA10() end
if SN[11]==true then     XCA11() end
if SN[12]==true then     XCA12() end
if SN[13]==true then     XCA13() end
if SN[14]==true then     XCA14() end
if SN[15]==true then     XCA15() end
if SN[16]==true then     XCA16() end
if SN[17]==true then     XCA17() end
if SN[18]==true then     XCA18() end
if SN[19]==true then     XCA19() end
if SN[20]==true then     Main() end
end
FX=0 end


function XCA1()
gg.toast(so({"创造背包",281510439550976,4,32},{{16777216,0x1C0,4}},{{16777472,0x1C0,4}}))
end


function XCA2()
F = gg.alert("请选择｛开 关｝","开","️关️️")

if  F== 1 then
qmnb={
{["memory"]=4},
{["name"]="伪飞行"},
{["value"]=-1020002304,["type"]=4},
{["lv"]=-1046478848,["offset"]=-4,["type"]=4}

}
qmxg={
{["value"]=16777472,["offset"]=-92,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
 qmnb={
{["memory"]=4},
{["name"]="伪飞行"},
{["value"]=-1020002304,["type"]=4},
{["lv"]=-1046478848,["offset"]=-4,["type"]=4}

}
qmxg={
{["value"]=16777216,["offset"]=-92,["type"]=4,["freeze"]=false}
}
xqmnb(qmnb)
gg.clearResults()
end
end


function XCA3()
F = gg.alert("请选择｛开 关｝","开","️关️️")

if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "秒挖方块"},
{["value"] = 1133903872, ["type"] = 4},
{["lv"] = 50.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = -70.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "秒挖方块"},
{["value"] = 1133903872, ["type"] = 4},
{["lv"] = 50.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = -70.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 0.3, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function XCA4()
local b = gg.prompt({"『输入子弹代码』12299无畏导弹12300星星弹15007 罐装手雷15008 菠萝手雷15050 投射物-野人猎手15051 投射物-硫黄弓手15052 投射物-小恶魔15053 投射物-野生团子15054 投射物-黑龙火球15055 投射物-黑龙熔岩石柱15056 投射物-黑龙熔岩球15057 投射物-黑龙混乱球15058 投射物-小外星人A15059 投射物-小外星人B15060 投射物-小外星人C15061 投射物-萌眼叮叮15062 投射物-萌眼咚咚15063 投射物-萌眼当当15064 投射物-萌眼叮咚15065 投射物-萌眼叮当15066 投射物-萌眼咚当15067 投射物-萌眼咻咻15068 投射物-混乱弓手15069 投射物-远程守卫15070 投射物-远程守卫15071 投射物-远程守卫15072 投射物-年兽boss15501 冲锋枪子弹15502 牛仔左轮子弹15503 狙击枪子弹15504 重机枪子弹15505 虚空巨石15506 圆球爆弹15507 冰锥15508 熔岩球15509 萌眼星BOSS-击飞激光15510 萌眼星BOSS-冰冻激光15511 萌眼星BOSS-爆炸激光15512 萌眼星BOSS-岩石海啸15513 萌眼星BOSS-蓝色手臂技能15514 萌眼星BOSS-白色手臂技能15515 萌眼星BOSS精英怪-蓝色投掷15516 萌眼星BOSS精英怪-白色投掷15517 萌眼星BOSS精英怪-蓝色技能15518 萌眼星BOSS精英怪-白色技能15519 黑龙熔岩球15520 黑龙混乱球15521 摄像机15522 长方体15523 胶囊体（竖）15524 球体15525 中心长方体15526 胶囊体（横）15527 胶囊体（直）"},{[1]=12299},{[1]="number"})
if not b then return end
gg.toast(so({"彩弹枪强化",434259848432382,4,32},{{1,-0xC,4}},{{b[1],-0x8,4}}))
end



function XCA5()
local Aa3=gg.prompt({"输入1～40人房间人数,开启此功能后点击开6人房间"},{"22"},{"number"})
if not Aa3 then return end
if Aa3 then
gg.toast(so({"大房间",1078198272,4,4},{{1077805056,-0x10},{1077149696,-0x20},{1076101120,-0x30},{1075052544,-0x50}},{{Aa3[1],-0x44,64}}))
end
end


function XCA6()
qa1 = gg.choice({
"༺ཌༀ⛦࿈第一格武器附魔࿈⛦ༀད༻",--1
"༺ཌༀ⛦࿈第一格工具附魔࿈⛦ༀད༻",--2
"༺ཌༀ⛦࿈第一格弓箭附魔࿈⛦ༀད༻",--3
"༺ཌༀ⛦࿈第一格装备附魔࿈⛦ༀད༻",--4
"༺ཌༀ⛦࿈第一格自定义附魔࿈⛦ༀད༻",--5
"༺ཌༀ⛦࿈返回主页࿈⛦ༀད༻",},2018,os.date("第一格附魔"))
if qa1 ==1 then ww1() end
if qa1 ==2 then ww2() end
if qa1 ==3 then ww3() end
if qa1 ==4 then ww4() end
if qa1 ==5 then ww5() end
if qa1 ==6 then Main() end
XGCK=-1
end

function ww1()
gg.toast(so({"武器附魔",945804461,4,4},{{1000,-4,4}},{{20000,4,4,1},{5,8,4,1},{505,12,4,1},{605,16,4,1},{1005,20,4,1},{1105,24,4,1},{705,28,4,1}}))
end

function ww2()
gg.toast(so({"工具附魔",945804461,4,4},{{1000,-4,4}},{{20000,4,4,1},{5,8,4,1},{2505,12,4,1},{2603,16,4,1},{2401,20,4,1},{1505,24,4,1},{1105,28,4,1}}))
end

function ww3()
gg.toast(so({"弓箭附魔",945804461,4,4},{{1000,-4,4}},{{20000,4,4,1},{5,8,4,1},{505,12,4,1},{1005,16,4,1},{905,20,4,1},{1305,24,4,1},{1405,28,4,1}}))
end

function ww4()
gg.toast(so({"装备附魔",945804461,4,4},{{1000,-4,4}},{{20000,4,4,1},{5,8,4,1},{2205,12,4,1},{1805,16,4,1},{1705,20,4,1},{1605,24,4,1},{2305,28,4,1}}))
end

function ww5()
fm1 = gg.prompt({"༺ཌༀ⛦第一个附魔效果⛦ༀད༻\n耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2505},{[1]="number"})[1]
gg.clearResults()
fm2 = gg.prompt({"༺ཌༀ⛦第二个附魔效果⛦ༀད༻\n耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2603},{[1]="number"})[1]
gg.clearResults()
fm3 = gg.prompt({"༺ཌༀ⛦第三个附魔效果⛦ༀད༻\n耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2401},{[1]="number"})[1]
gg.clearResults()
fm4 = gg.prompt({"༺ཌༀ⛦第四个附魔效果⛦ༀད༻\n耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=1505},{[1]="number"})[1]
gg.clearResults()
fm5 = gg.prompt({"༺ཌༀ⛦第五个附魔效果⛦ༀད༻\n耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=1105},{[1]="number"})[1]
gg.toast(so({"自定义附魔",945804461,4,4},{{1000,-4,4}},{{20000,4,4,1},{5,8,4,1},{fm1,12,4,1},{fm2,16,4,1},{fm3,20,4,1},{fm4,24,4,1},{fm5,28,4,1}}))
end



function XCA7() 
local wp=gg.prompt({"物品代码","物品数量"},{[1]="",[2]=""},{[1]="number",[2]="number"})
v.value = so({"物品",wp[1],4,4},{{"-1000000000~1999999999",96,4}},{{nil,0,4,2}})
gg.toast(so({'添加物品',1000,4,4},{{1007,0x118,4},{"945804460~945804999",4,4},{"-1000000000~1999999999",120,4}},{{nil,0,4,1},{945804460+wp[2],0,4,1},{v.value,0,4,1}}))end



function XCA8()
xx= gg.choice({
    "༺ཌༀ⛦࿈红队࿈⛦ༀད༻",
    "༺ཌༀ⛦࿈蓝队࿈⛦ༀད༻",
    "༺ཌༀ⛦࿈绿队࿈⛦ༀད༻️",
    "༺ཌༀ⛦࿈黄队࿈⛦ༀད༻",
    "༺ཌༀ⛦࿈橙队࿈⛦ༀད༻",    
    "༺ཌༀ⛦࿈紫队࿈⛦ༀད༻",    
    "༺ཌༀ⛦࿈返回主页࿈⛦ༀད༻",},2018,os.date("️"))
if xx==1 then  fs1() end
if xx==2 then  fs2() end
if xx==3 then  fs3() end
if xx==4 then  fs4() end
if xx==5 then  fs5() end
if xx==6 then  fs6() end
if xx==7 then  Main() end
XGCK=-1 end
function fs1()
mn1=gg.prompt({"『当前红队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的红队分数』"},{'520'},{"number"})[1]
if not mn1 then return end
if not mn2 then return end
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -120},{-1, -984} }
local tb2 = {{mn2, -120  }, }
SearchWrite(tb1, tb2, dataType)
	 gg.toast("修改成功")
	 gg.clearResults()
end
function fs2()
mn1=gg.prompt({"『当前蓝队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的蓝队分数』"},{'520'},{"number"})[1]
if not mn1 then return end
if not mn2 then return end
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -104},{-1, -984} }
local tb2 = {{mn2, -104  }, }
SearchWrite(tb1, tb2, dataType)
 gg.toast("修改成功")
	 gg.clearResults()
end
function fs3()
mn1=gg.prompt({"『当前绿队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的绿队分数』"},{'520'},{"number"})[1]
if not mn1 then return end
if not mn2 then return end
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -88},{-1, -984} }
local tb2 = {{mn2, -88  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("修改成功")
	 gg.clearResults()
end
function fs4()
mn1=gg.prompt({"『当前黄队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的黄队分数』"},{'520'},{"number"})[1]
if not mn1 then return end
if not mn2 then return end
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -72},{-1, -984} }
local tb2 = {{mn2, -72  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("修改成功")
	 gg.clearResults()
end
function fs5()
mn1=gg.prompt({"『当前橙队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的橙队分数』"},{'520'},{"number"})[1]
if not mn1 then return end
if not mn2 then return end
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -56},{-1, -984} }
local tb2 = {{mn2, -56  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("修改成功")
	 gg.clearResults()
end
function fs6()
mn1=gg.prompt({"『当前紫队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的紫队分数』"},{'520'},{"number"})[1]
if not mn1 then return end
if not mn2 then return end
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -40},{-1, -984} }
local tb2 = {{mn2, -40  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("修改成功")
	 gg.clearResults()
end



function XCA9()
so({'图鉴解锁',10000,4,4},{{10000,0x400,4}},{{0,-4,4,1}})
gg.toast("全部图鉴解锁成功")
end


function XCA10()
SN = gg.multiChoice({
	 "༺ཌༀ⛦࿈野人掉999+星星࿈⛦ༀད༻",
	 "༺ཌༀ⛦࿈熔岩巨人掉999+星星࿈⛦ༀད༻",
	 "༺ཌༀ⛦࿈墩墩掉999+星星࿈⛦ༀད༻",
	 "༺ཌༀ⛦࿈沃沃兽掉999+星星࿈⛦ༀད༻",
	 "༺ཌༀ⛦࿈嘟嘟鸟掉999+星星࿈⛦ༀད༻",
	 "༺ཌༀ⛦࿈狐狸掉999+星星࿈⛦ༀད༻",
	 "༺ཌༀ⛦࿈返回主页࿈⛦ༀད༻",
}, nil, "༺ཌༀ⛦࿈打死功能里面的指定生物即可掉999+星星࿈⛦ༀད༻️")
if SN[1]==true then
	 HS2()
end
if SN[2]==true then
	 HS38()
end
if SN[3]==true then
	 HS3()
end
if SN[4]==true then
	 HS16()
end
if SN[5]==true then
	 HS17()
end
if SN[6]==true then
	 HS21()
end
if SN[7]==true then
	 Main()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3101;12526;13::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功打野人一下试试")
	 gg.clearResults()
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3130;11310;21::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功打熔岩巨人一下试试")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3402;12522;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功打墩墩一下试试")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3401;12516;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功打沃沃兽一下试试")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3400;12518;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功打嘟嘟鸟一下试试")
	 gg.clearResults()
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3407;11307;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功打狐狸一下试试")
	 gg.clearResults()
end



function XCA11()
qmnb = {{["memory"] = 4},
{["name"] = "无限星星"},
{["value"] = 4474776592571170816, ["type"] = 32},
{["lv"] = 1120403456, ["offset"] = -24, ["type"] = 32},
}qmxg = {{["value"] = 1000000, ["offset"] = -80, ["type"] = 16, ["freeze"] = true},{["value"] = 1000000, ["offset"] = -256, ["type"] = 16, ["freeze"] = true},{["value"] = 0.00006336603, ["offset"] = 0x14, ["type"] = 16},}
xqmnb(qmnb)
end


function XCA12()
F = gg.alert("🔥请选择🔥","🍁狙击🍁","🍁️冲锋🍁️️","🎾重机🎾")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
 A4 = gg.prompt({"『输入子弹代码』12299无畏导弹12300星星弹15007 罐装手雷15008 菠萝手雷15050 投射物-野人猎手15051 投射物-硫黄弓手15052 投射物-小恶魔15053 投射物-野生团子15054 投射物-黑龙火球15055 投射物-黑龙熔岩石柱15056 投射物-黑龙熔岩球15057 投射物-黑龙混乱球15058 投射物-小外星人A15059 投射物-小外星人B15060 投射物-小外星人C15061 投射物-萌眼叮叮15062 投射物-萌眼咚咚15063 投射物-萌眼当当15064 投射物-萌眼叮咚15065 投射物-萌眼叮当15066 投射物-萌眼咚当15067 投射物-萌眼咻咻15068 投射物-混乱弓手15069 投射物-远程守卫15070 投射物-远程守卫15071 投射物-远程守卫15072 投射物-年兽boss15501 冲锋枪子弹15502 牛仔左轮子弹15503 狙击枪子弹15504 重机枪子弹15505 虚空巨石15506 圆球爆弹15507 冰锥15508 熔岩球15509 萌眼星BOSS-击飞激光15510 萌眼星BOSS-冰冻激光15511 萌眼星BOSS-爆炸激光15512 萌眼星BOSS-岩石海啸15513 萌眼星BOSS-蓝色手臂技能15514 萌眼星BOSS-白色手臂技能15515 萌眼星BOSS精英怪-蓝色投掷15516 萌眼星BOSS精英怪-白色投掷15517 萌眼星BOSS精英怪-蓝色技能15518 萌眼星BOSS精英怪-白色技能15519 黑龙熔岩球15520 黑龙混乱球15521 摄像机15522 长方体15523 胶囊体（竖）15524 球体15525 中心长方体15526 胶囊体（横）15527 胶囊体（直）"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪强化"},
{["value"] = 1155186688, ["type"] = 4},
{["lv"] = 1152319488, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1137836032, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = A4, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end
if   F==2   then
A5 = gg.prompt({"『输入子弹代码』12299无畏导弹12300星星弹15007 罐装手雷15008 菠萝手雷15050 投射物-野人猎手15051 投射物-硫黄弓手15052 投射物-小恶魔15053 投射物-野生团子15054 投射物-黑龙火球15055 投射物-黑龙熔岩石柱15056 投射物-黑龙熔岩球15057 投射物-黑龙混乱球15058 投射物-小外星人A15059 投射物-小外星人B15060 投射物-小外星人C15061 投射物-萌眼叮叮15062 投射物-萌眼咚咚15063 投射物-萌眼当当15064 投射物-萌眼叮咚15065 投射物-萌眼叮当15066 投射物-萌眼咚当15067 投射物-萌眼咻咻15068 投射物-混乱弓手15069 投射物-远程守卫15070 投射物-远程守卫15071 投射物-远程守卫15072 投射物-年兽boss15501 冲锋枪子弹15502 牛仔左轮子弹15503 狙击枪子弹15504 重机枪子弹15505 虚空巨石15506 圆球爆弹15507 冰锥15508 熔岩球15509 萌眼星BOSS-击飞激光15510 萌眼星BOSS-冰冻激光15511 萌眼星BOSS-爆炸激光15512 萌眼星BOSS-岩石海啸15513 萌眼星BOSS-蓝色手臂技能15514 萌眼星BOSS-白色手臂技能15515 萌眼星BOSS精英怪-蓝色投掷15516 萌眼星BOSS精英怪-白色投掷15517 萌眼星BOSS精英怪-蓝色技能15518 萌眼星BOSS精英怪-白色技能15519 黑龙熔岩球15520 黑龙混乱球15521 摄像机15522 长方体15523 胶囊体（竖）15524 球体15525 中心长方体15526 胶囊体（横）15527 胶囊体（直）"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "冲锋枪强化"},
{["value"] = 1154613248, ["type"] = 4},
{["lv"] = 1149861888, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = A5, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end
if    F==3  then
A6 = gg.prompt({"『输入子弹代码』12299无畏导弹12300星星弹15007 罐装手雷15008 菠萝手雷15050 投射物-野人猎手15051 投射物-硫黄弓手15052 投射物-小恶魔15053 投射物-野生团子15054 投射物-黑龙火球15055 投射物-黑龙熔岩石柱15056 投射物-黑龙熔岩球15057 投射物-黑龙混乱球15058 投射物-小外星人A15059 投射物-小外星人B15060 投射物-小外星人C15061 投射物-萌眼叮叮15062 投射物-萌眼咚咚15063 投射物-萌眼当当15064 投射物-萌眼叮咚15065 投射物-萌眼叮当15066 投射物-萌眼咚当15067 投射物-萌眼咻咻15068 投射物-混乱弓手15069 投射物-远程守卫15070 投射物-远程守卫15071 投射物-远程守卫15072 投射物-年兽boss15501 冲锋枪子弹15502 牛仔左轮子弹15503 狙击枪子弹15504 重机枪子弹15505 虚空巨石15506 圆球爆弹15507 冰锥15508 熔岩球15509 萌眼星BOSS-击飞激光15510 萌眼星BOSS-冰冻激光15511 萌眼星BOSS-爆炸激光15512 萌眼星BOSS-岩石海啸15513 萌眼星BOSS-蓝色手臂技能15514 萌眼星BOSS-白色手臂技能15515 萌眼星BOSS精英怪-蓝色投掷15516 萌眼星BOSS精英怪-白色投掷15517 萌眼星BOSS精英怪-蓝色技能15518 萌眼星BOSS精英怪-白色技能15519 黑龙熔岩球15520 黑龙混乱球15521 摄像机15522 长方体15523 胶囊体（竖）15524 球体15525 中心长方体15526 胶囊体（横）15527 胶囊体（直）"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "重机枪强化"},
{["value"] = 1157840896, ["type"] = 4},
{["lv"] = 1149861888, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = A6, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end end





function XCA13()
local F=gg.alert("秒撸基岩\n请选择{开 关}","开","️关️️")
if  F== 1 then
local addr=readPointer('libAppPlayJNI.so:bss',{0x5C0A8,0x10,0x2AC},1)
gg.edits(addr,{{0,16,0}}) end
if F== 2 then
local addr=readPointer('libAppPlayJNI.so:bss',{0x5C0A8,0x10,0x2AC},1)
gg.edits(addr,{{-1,16,0}}) end
end












function XCA14()
o2= gg.choice({
      "༺ཌༀ⛦࿈化石龙࿈⛦ༀད༻",--1
      "༺ཌༀ⛦࿈机灵飞鼠࿈⛦ༀད༻",--2
      "༺ཌༀ⛦࿈瑞祥麒麟࿈⛦ༀད༻",--3
      "༺ཌༀ⛦࿈陆行鸟࿈⛦ༀད༻",--4
      "༺ཌༀ⛦࿈盛典白象࿈⛦ༀད༻",--5    
      "༺ཌༀ⛦࿈超能海豹࿈⛦ༀད༻",--6
      "༺ཌༀ⛦࿈舞狮猫猫࿈⛦ༀད༻",--7
      "༺ཌༀ⛦࿈星河天马࿈⛦ༀད༻",--8
      "༺ཌༀ⛦࿈桃香扇缘࿈⛦ༀད༻",--9
      "༺ཌༀ⛦࿈深渊咆哮࿈⛦ༀད༻",--10
      "༺ཌༀ⛦࿈皎月仙宫࿈⛦ༀད༻",--11
      "༺ཌༀ⛦࿈冰雪传说࿈⛦ༀད༻",--12   
      "༺ཌༀ⛦࿈缤纷幻想࿈⛦ༀད༻",--13
      "༺ཌༀ⛦࿈福运哞哞࿈⛦ༀད༻",--14
      "༺ཌༀ⛦࿈浮游山海࿈⛦ༀད༻",--15
      "༺ཌༀ⛦࿈镜花水月࿈⛦ༀད༻",--16
      "༺ཌༀ⛦࿈鹿王本身࿈⛦ༀད༻",--17 
      "༺ཌༀ⛦࿈南瓜车࿈⛦ༀད༻",--18 
      "༺ཌༀ⛦࿈竹蜻蜓࿈⛦ༀད༻",--19   
      "༺ཌༀ⛦࿈曦光绘梦࿈⛦ༀད༻",--20  
      "༺ཌༀ⛦࿈裂空机甲࿈⛦ༀད༻",--21
      "༺ཌༀ⛦࿈星河机甲࿈⛦ༀད༻",--22  
      "༺ཌༀ⛦࿈环海诺诺࿈⛦ༀད༻",--23 
      "༺ཌༀ⛦࿈尼东若若࿈⛦ༀད༻",--24 
      "༺ཌༀ⛦࿈虚空龙祖࿈⛦ༀད༻",--25       
      "༺ཌༀ⛦࿈繁花夜明࿈⛦ༀད༻",--26 
      "༺ཌༀ⛦࿈星月魔毯࿈⛦ༀད༻",--27
      "༺ཌༀ⛦࿈千机隼࿈⛦ༀད༻",--28
      "༺ཌༀ⛦࿈无限电音࿈⛦ༀད༻",--29
      "༺ཌༀ⛦࿈云梦花舞࿈⛦ༀད༻",--30
      "༺ཌༀ⛦࿈醉花阴࿈⛦ༀད༻",--31
      "༺ཌༀ⛦࿈旺  财࿈⛦ༀད༻",--32
      "༺ཌༀ⛦࿈帝皇战龙࿈⛦ༀད༻",--33
      "༺ཌༀ⛦࿈虎虎生威࿈⛦ༀད༻",--34
      "༺ཌༀ⛦࿈春风燕语࿈⛦ༀད༻",--35
      "༺ཌༀ⛦࿈绘江山࿈⛦ༀད༻",--36
      "༺ཌༀ⛦࿈米奇拉࿈⛦ༀད༻",--37
      "༺ཌༀ⛦࿈帝皇侠࿈⛦ༀད༻",--38
      "༺ཌༀ⛦࿈揽梦之翼࿈⛦ༀད༻",--39
      "༺ཌༀ⛦࿈冰霜绽放࿈⛦ༀད༻",--40
      "༺ཌༀ⛦࿈福兔临门࿈⛦ༀད༻",--41
      "༺ཌༀ⛦࿈天幕星龙࿈⛦ༀད༻",--42
      "༺ཌༀ⛦࿈迷你变形车࿈⛦ༀད༻",--43
      "༺ཌༀ⛦࿈羽辉之钥࿈⛦ༀད༻",--44
      "༺ཌༀ⛦࿈轩辕圣剑࿈⛦ༀད༻",--45
      "༺ཌༀ⛦࿈赤颜幻姬࿈⛦ༀད༻",--46
      "༺ཌༀ⛦࿈梦幻时光࿈⛦ༀད༻",--47
      "༺ཌༀ⛦࿈韶光࿈⛦ༀད༻",--48
      "༺ཌༀ⛦࿈沙漠之舟࿈⛦ༀད༻",--49
      "༺ཌༀ⛦࿈风铃兰语࿈⛦ༀད༻",--50
      "༺ཌༀ⛦࿈月中桂࿈⛦ༀད༻",--51
      "༺ཌༀ⛦࿈朋克猪燃燃࿈⛦ༀད༻",--52
      "༺ཌༀ⛦࿈极限枫动࿈⛦ༀད༻",--53
      "༺ཌༀ⛦࿈庆典之书࿈⛦ༀད༻",--54
      "༺ཌༀ⛦࿈自定义添加࿈⛦ༀད༻",--55
       "༺ཌༀ⛦࿈返回主页࿈⛦ༀད༻",},2018,os.date("请先点击坐骑按钮界面再召唤没有点击坐骑界面将无法召唤"))
if o2==1 then o=3431 o4() end
if o2==2 then o=3435 o4() end
if o2==3 then o=3438 o4() end
if o2==4 then o=3441 o4() end
if o2==5 then o=3444 o4() end
if o2==6 then o=3447 o4() end
if o2==7 then o=3456 o4() end
if o2==8 then o=3459 o4() end
if o2==9 then o=3462 o4() end
if o2==10 then o=3471 o4() end
if o2==11 then o=3480 o4() end
if o2==12 then o=3485 o4() end
if o2==13 then o=3487 o4() end
if o2==14 then o=3489 o4() end
if o2==15 then o=3492 o4() end
if o2==16 then o=3497 o4() end
if o2==17 then o=4503 o4() end
if o2==18 then o=4507 o4() end
if o2==19 then o=4510 o4() end
if o2==20 then o=4515 o4() end
if o2==21 then o=4518 o4() end
if o2==22 then o=4521 o4() end
if o2==23 then o=4526 o4() end
if o2==24 then o=4529 o4() end
if o2==25 then o=4533 o4() end
if o2==26 then o=4537 o4() end
if o2==27 then o=4541 o4() end
if o2==28 then o=4545 o4() end
if o2==29 then o=4548 o4() end
if o2==30 then o=4551 o4() end
if o2==31 then o=4554 o4() end
if o2==32 then o=4556 o4() end
if o2==33 then o=4562 o4() end
if o2==34 then o=4566 o4() end
if o2==35 then o=4574 o4() end
if o2==36 then o=4581 o4() end
if o2==37 then o=4568 o4() end
if o2==38 then o=4569 o4() end
if o2==39 then o=4634 o4() end
if o2==40 then o=4637 o4() end
if o2==41 then o=4629 o4() end
if o2==42 then o=4621 o4() end
if o2==43 then o=4644 o4() end
if o2==44 then o=4585 o4() end
if o2==45 then o=4592 o4() end
if o2==46 then o=4588 o4() end
if o2==47 then o=4598 o4() end
if o2==48 then o=4596 o4() end
if o2==49 then o=4608 o4() end
if o2==50 then o=4603 o4() end
if o2==51 then o=4616 o4() end
if o2==52 then o=4612 o4() end
if o2==53 then o=4619 o4() end
if o2==54 then o=4646 o4() end
if o2==55 then o5() end
if o2==56 then HOME() end
XGCK=-1 end
function o4()
gg.toast(so({"坐骑",4842495500454461440,4,32},{{1127481344,4,4},{1106247680,0x1C,4},{1065353216,-0x8,4},{"16777216~16777472",-0x3C,4}},{{o,0x128,4,1},{16777472,-0x3C,4,1}}))
  gg.toast("召唤坐骑开启成功")
end
function o5()
XG = gg.prompt({"请输入坐骑召唤代码"}
,{[1]=""},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "自定义坐骑"},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 28, ["type"] = 4},}
qmxg = {
{["value"] = XG, ["offset"] = 296, ["type"] = 4, ["freeze"] = true},
{["value"] = 16777472, ["offset"] = -60, ["type"] = 4, ["freeze"] = true}}
xqmnb(qmnb)
end



function XCA15()
SN = gg.multiChoice({
"༺ཌༀ⛦࿈刷茁壮成长勋章࿈⛦ༀད༻",
"༺ཌༀ⛦࿈刷华丽变身勋章࿈⛦ༀད༻",
"༺ཌༀ⛦࿈返回主页࿈⛦ༀད༻",
 }, nil, "༺ཌༀ⛦࿈刷勋章࿈⛦ༀད༻️️️")
if SN == nil then else
if SN[1]==true then     X1() end
if SN[2]==true then     X2() end
if SN[3]==true then     Main() end
end
XGCK=-1 end

function X1()
SN = gg.choice({
	 "༺ཌༀ⛦࿈️1级家园改25级࿈⛦ༀད༻️",
	 "༺ཌༀ⛦࿈️2级家园改25级࿈⛦ༀད༻️",
	 "༺ཌༀ⛦࿈3级家园改25级࿈⛦ༀད༻",
	 "༺ཌༀ⛦࿈4级家园改25级࿈⛦ༀད༻",
	 "༺ཌༀ⛦࿈5级家园改25级࿈⛦ༀད༻",
	 "༺ཌༀ⛦࿈6级家园改25级࿈⛦ༀད༻",
	 "༺ཌༀ⛦࿈7级家园改25级࿈⛦ༀད༻",
	 "༺ཌༀ⛦࿈返回主页࿈⛦ༀད༻",
}, nil, "")
if SN==1 then
	 HS99()
end
if SN==2 then
	 HS999()
end
if SN==3 then
	 HS9999()
end
if SN==4 then
	 HS99999()
end
if SN==5 then
	 HS999999()
end
if SN==6 then
	 HS9999999()
end
if SN==7 then
	 HS99999999()
end
if SN==8 then
	 Main()
end
FX1=0
FX2=0
end

function HS99()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1E;4634626229029306368Q", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1500)
	 sl=gg.getResultCount()
	 if sl>1500 then sl=1500 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS999()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2E;4634626229029306368Q", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1500)
	 sl=gg.getResultCount()
	 if sl>1500 then sl=1500 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end



function HS9999()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3E;4634626229029306368Q", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1500)
	 sl=gg.getResultCount()
	 if sl>1500 then sl=1500 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS99999()
	  gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("4E;4634626229029306368Q", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1500)
	 sl=gg.getResultCount()
	 if sl>1500 then sl=1500 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS999999()
	  gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5E;4634626229029306368Q", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1500)
	 sl=gg.getResultCount()
	 if sl>1500 then sl=1500 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS9999999()
 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("6E;4634626229029306368Q", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1500)
	 sl=gg.getResultCount()
	 if sl>1500 then sl=1500 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS99999999()
 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("7E;4634626229029306368Q", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(1500)
	 sl=gg.getResultCount()
	 if sl>1500 then sl=1500 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end



function X2()
vip= gg.prompt({"输入你拥有的一个皮肤号：1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃     117白光莹     118灰姑娘克里斯丁     119灵公主     120小龙人麒休     121妙妙     122白天鹅     123时稀      124洁莉      125快客小窝     140秋果     146璎落     147雷光    148凛冬"}
,{[1]=148},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "华丽变身"},
{["value"] = 808465457, ["type"] = 4},
{["lv"] = 2, ["offset"] = 216, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
{["lv"] = 0, ["offset"] = -28, ["type"] = 4}}
qmxg = {
{["value"] = vip, ["offset"] = -84, ["type"] = 4},}
xqmnb(qmnb)
end



function XCA16()
F = gg.alert("无限物品","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择开关")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "无限物品[开]"},
{["value"] = 4294967296000, ["type"] = 32},
{["lv"] = 1000, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = -36, ["type"] = 4},
{["lv"] = 1, ["offset"] = 148, ["type"] = 32},
{["lv"] = 1001, ["offset"] = 260, ["type"] = 4}}
qmxg = {
{["value"]= 945804388,["offset"]= 8,["type"]= 4,["freeze"] = true}}
xqmnb(qmnb)
gg.clearResults()
elseif  F== 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "无限物品[关]"},
{["value"] = 4294967296000, ["type"] = 32},
{["lv"] = 1000, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = -36, ["type"] = 4},
{["lv"] = 1, ["offset"] = 148, ["type"] = 32},
{["lv"] = 1001, ["offset"] = 260, ["type"] = 4}}
qmxg = {
{["value"]= 945804640,["offset"]= 8,["type"]= 4,["freeze"] = false}}
xqmnb(qmnb)
gg.clearResults()
end
end
function XCA17()
local a=gg.prompt({'输入1～40人房间人数,开启此功能后点击开6人房间'},{'22'},{'number'})
if not a then return end
if a then
so({'大房间',1078198272,4,4},{{1077805056,-0x10},{1077149696,-0x20},{1076101120,-0x30},{1075052544,-0x50}},{{a[1],-0x44,64}})
end
end

function XCA18()
local a = gg.prompt({'请输入宠物代码10001-小泡沫.10002-泡泡团子.10003-四泡团.10004-小孩子.10005-的叶团子.10006-豪华团.10007-小石子.10008-岩石团.10009-巨岩团.10010-小火量.10011-暖暖团.10012-报火团.10013-小HT.10014-跳跳蛙.10015-忍忍娃.10016-小免机.10017-免叫.10018-玉免机.10019-迷你注.10020-旺旺.10021-旺旺警长.10022-小龙蛋10023-黑龙重10024-黑龙糕10025-小菲鹏.10026-球糟鹏10027-全羽鹅网.10028-小灵球.10029-幽酬球.10030-重灵王球.10031-小黑猫.10032-焦炭猫.10033-黑飘远.10034-小球节.10035-球球豹.10036-球豹王子.10037-小擦报.10038-奏乐猴.10039-梵音猴.10040-小孔雀.10041-雏孔雀.10042-丰羽孔雀 虚空幻境-猛3516 虚空幻境-速3515 远古叮叮-3511 房主闪退-3513  爆爆蛋-3109  恢复-10001'},{[1]=3512},{[1]='number'})[1]
so({'修改宠物',10001,4,4},{{1,4,4}},{{a,8,4}})
end



function XCA19()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0}, {120, -4}, {60, -16}, {120, 4},}
local tb2 = {{-9999, -12,true}, }
SearchWrite(tb1, tb2,  dataType)
 elseif  F== 2 then
gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0}, {120, -4}, {60, -16}, {120, 4},}
local tb2 = {{180, -12,true}, }
SearchWrite(tb1, tb2,  dataType)
end end



function Main2()  
SN = gg.multiChoice({
"༺ཌༀ⛦࿈透视࿈⛦ༀད༻",
"༺ཌༀ⛦࿈伪房主࿈⛦ༀད༻",
"༺ཌༀ⛦࿈查看身份证࿈⛦ༀད༻",
"༺ཌༀ⛦࿈连跳飞天࿈⛦ༀད༻",
"༺ཌༀ⛦࿈吸人࿈⛦ༀད༻",
"༺ཌༀ⛦࿈坐标传送࿈⛦ༀད༻",
"༺ཌༀ⛦࿈查询手持物品代码࿈⛦ༀད༻",
"༺ཌༀ⛦࿈喷漆改物品࿈⛦ༀད༻",
"༺ཌༀ⛦࿈修改速度࿈⛦ༀད༻",
"༺ཌༀ⛦࿈修改跳跃倍数࿈⛦ༀད༻",
"༺ཌༀ⛦࿈平飞无检测࿈⛦ༀད༻",
"༺ཌༀ⛦࿈编辑器放置距离࿈⛦ༀད༻",
"༺ཌༀ⛦࿈金稿秒蓄࿈⛦ༀད༻",
"༺ཌༀ⛦࿈查询代码࿈⛦ༀད༻",
"༺ཌༀ⛦࿈乐谱取物1࿈⛦ༀད༻",
"༺ཌༀ⛦࿈乐谱取物2࿈⛦ༀད༻",
"༺ཌༀ⛦࿈书台取物࿈⛦ༀད༻",
"༺ཌༀ⛦࿈奔跑速度࿈⛦ༀད༻",
"༺ཌༀ⛦࿈迷你号对接࿈⛦ༀད༻",
"༺ཌༀ⛦࿈改迷你号࿈⛦ༀད༻",
"༺ཌༀ⛦࿈联机改皮肤࿈⛦ༀད༻",
"༺ཌༀ⛦࿈返回主页࿈⛦ༀད༻",
 }, nil, "༺ཌༀ⛦࿈我们一路奋战，不是为了改变世界，而是为了不让世界改变我们࿈⛦ༀད༻️️️")
if SN == nil then else
if SN[1]==true then     XCB1() end
if SN[2]==true then     XCB2() end
if SN[3]==true then     XCB3() end
if SN[4]==true then     XCB4() end
if SN[5]==true then     XCB5() end
if SN[6]==true then     XCB6() end
if SN[7]==true then     XCB7() end
if SN[8]==true then     XCB8() end
if SN[9]==true then     XCB9() end
if SN[10]==true then     XCB10() end
if SN[11]==true then     XCB11() end
if SN[12]==true then     XCB12() end
if SN[13]==true then     XCB13() end
if SN[14]==true then     XCB14() end
if SN[15]==true then     XCB15() end
if SN[16]==true then     XCB16() end
if SN[17]==true then     XCB17() end
if SN[18]==true then     XCB18() end
if SN[19]==true then     XCB19() end
if SN[20]==true then     XCB20() end
if SN[21]==true then     XCB21() end
if SN[22]==true then     Main() end
end
FX1=0 end






function XCB1()  
qmnb = {
{["memory"] = 4},
{["name"] = "透视"},
{["value"] = 1189765120, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -28, ["type"] = 4},
{["lv"] = 10.0, ["offset"] = -4, ["type"] = 16},

}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "透视"},
{["value"] =4546930, ["type"] = 32},
{["lv"] =512, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"]=-0.1,["offset"]=56,["type"]=16},
}
xqmnb(qmnb)
end


function XCB2()  
F=gg.alert("请选择｛开 关｝", "开", "️关️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb = {
{["memory"] = 4},
{["name"] = "伪房主"},
{["value"] = 11014, ["type"] = 4},
{["lv"] = 11522, ["offset"] = -4, ["type"] = 4},}
qmxg = {
{["value"] = 3, ["offset"] = 32,  ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
elseif F==2 then
qmnb = {
{["memory"] = 4},
{["name"] = "伪房主"},
{["value"] = 11014, ["type"] = 4},
{["lv"] = 11522, ["offset"] = -4, ["type"] = 4},}
qmxg = {
{["value"] = 99, ["offset"] = 32,  ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end
end



function XCB3()
  SJ = os.date("🔰身份证账号合集🔰")
  SN = gg.choice({
    "🌙点击此处开启复制身份证🌙",
      }, nil, "️⚠️请勿用于非法用途⚠️️️️")
  if SN==1 then
    Main1100()
  end
  FX1=0
end

function Main1100()
  SN = gg.choice({
    "⚡️冷健安:432321197907070093⚡️",
    "🔮一键复制🔮",
    "♦️下一层♦",
  }, nil, "⚠️请勿用于非法用途⚠️️")
  if SN==2 then
    GSM1()
  end
  if SN==3 then
    Main1101()
  end
  FX1=0
end

function GSM1()
  gg.copyText("冷健安:432321197907070093")
end

function Main1101()
  SN = gg.choice({
    "⚡️张家淼:320825197010082335⚡️",
    "🔮一键复制🔮",
    "♦️下一层♦️️️",
  }, nil, "️⚠️请勿用于非法用途⚠️️")
  if SN==2 then
    GSM2()
  end
  if SN==3 then
    Main1102()
  end
  FX1=0
end

function GSM2()
  gg.copyText("张家淼:320825197010082335")
end

function Main1101()
  SN = gg.choice({
    "⚡️刘文燕:130533198902182342⚡️",
    "🔮一键复制🔮",
    "♦️下一层♦",
  }, nil, "️⚠️请勿用于非法用途⚠️️")
  if SN==2 then
    GSM2()
  end
  if SN==3 then
    Main1102()
  end
  FX1=0
end


function GSM2()
  gg.copyText("刘文燕:130533198902182342")
end

function Main1102()
  SN = gg.choice({
    "️⚡️李晶煜:320684198410035179⚡️",
    "🔮一键复制🔮",
    "♦️下一层♦",
  }, nil, "️⚠️请勿用于非法用途⚠️️️")
  if SN==2 then
    GSM3()
  end
  if SN==3 then
    Main1103()
  end
  FX1=0
end

function GSM3()
  gg.copyText("李晶煜:320684198410035179")
end

function Main1103()
  SN = gg.choice({
    "⚡️郭泽辉:412723199704214675⚡️",
    "🔮一键复制🔮",
    "♦️下一层♦",
  }, nil, "️⚠️请勿用于非法用途⚠️️")
  if SN==2 then
    GSM4()
  end
  if SN==3 then
    Main1104()
  end
  FX1=0
end

function GSM4()
  gg.copyText("郭泽辉:412723199704214675")
end

function Main1104()
  SN = gg.choice({
    "⚡️孙守峰:640321198301102419⚡️",
    "🔮一键复制🔮",
    "♦️下一层♦",
  }, nil, "️⚠️请勿用于非法用途⚠️️")
  if SN==2 then
    GSM5()
  end
  if SN==3 then
    Main1105()
  end
  FX1=0
end

function GSM5()
  gg.copyText("孙守峰:640321198301102419")
end

function Main1105()
  SN = gg.choice({
    "️⚡️陈华农:320219197804212779⚡️",
    "🔮一键复制🔮",
    "♦️下一层♦",
  }, nil, "️⚠️请勿用于非法用途⚠️️️")
  if SN==2 then
    GSM6()
  end
  if SN==3 then
    Main1106()
  end
  FX1=0
end

function GSM6()
  gg.copyText("陈华农:320219197804212779")
end


function Main1106()
  SN = gg.choice({
    "⚡️赵良松:120110197705191511⚡️",
    "🔮一键复制🔮",
    "♦️下一层♦",
  }, nil, "️⚠️请勿用于非法用途⚠️️")
  if SN==2 then
    GSM7()
  end
  if SN==3 then
    Main1107()
  end
  FX1=0
end

function GSM7()
  gg.copyText("赵良松:120110197705191511")
end


function Main1107()
  SN = gg.choice({
    "⚡️徐静佳:310229198302260020⚡️",
    "🔮一键复制🔮",
    "♦️下一层♦️️",
  }, nil, "️⚠️请勿用于非法用途️⚠️️")
  if SN==2 then
    GSM8()
  end
  if SN==3 then
    Main1108()
  end
  FX1=0
end

function GSM8()
  gg.copyText("徐静佳:310229198302260020")
end

function Main1108()
  SN = gg.choice({
    "⚡️迟彭柳:210105194606074616⚡️",
    "🔮一键复制🔮",
    "♦️下一层♦️️️",
  }, nil, "️⚠️请勿用于非法用途⚠️️")
  if SN==2 then
    GSM9()
  end
  if SN==3 then
    Main1109()
  end
  FX1=0
end

function GSM9()
  gg.copyText("迟彭柳----210105194606074616")
end



function Main1109()
  SN = gg.choice({
    "⚡️刘萌萌:210212198506035924⚡️",
    "🔮一键复制🔮",
    "♦️下一层♦",
  }, nil, "️⚠️请勿用于非法用途⚠️️")
  if SN==2 then
    GSM10()
  end
  if SN==3 then
    Main11010()
  end
  FX1=0
end

function GSM10()
  gg.copyText("刘萌萌----210212198506035924")
end



function Main11010()
  SN = gg.choice({
    "⚡️孟民社:610424196903160835⚡️",
    "🔮一键复制🔮",
    "♦️下一层♦",
  }, nil, "️⚠️请勿用于非法用途⚠️️")
  if SN==2 then
    GSM11()
  end
  if SN==3 then
    Main11011()
  end
  FX1=0
end

function GSM11()
  gg.copyText("孟民社----610424196903160835")
end



function Main11011()
  SN = gg.choice({
    "⚡莫雨俏:460022199203270022⚡️",
    "🔮一键复制🔮",
    "🎡返 回 首 页🎡",
  }, nil, "️⚠️请勿用于非法用途⚠️")
  if SN==2 then
    GSM12()
  end
  if SN==3 then
    Main()
  end
  FX1=0
end

function GSM12()
  gg.copyText("莫雨俏----460022199203270022")
end



function XCB4()
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x62C620, 0x5A8, 0x1C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = -1, freeze = true}})
gg.toast("连跳飞天开启成功")
end



function XCB5()  
qmnb = {
{["memory"] = 4},
{["name"] = "吸人"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 16, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end



function XCB6()  
local a=gg.prompt({'Y轴(竖)️','X轴(横)','高度'})
  if not a then gg.alert('请全部填写',false)
    return nil
  end
  if a[1]~='' and a[2]~='' then if a[3]~='' then
      a[1] = a[1]..'00'
      a[2] = a[2]..'00'
      a[3] = a[3]..'00'
so({'传送',944892805240,4,32},{{220,4,4},{180,-8,4}},{{a[1],12,4},{a[2],20,4},{a[3],16,4}})
    end
  end
end



function XCB7()  
  gg.setRanges(4)
  local dataType = 4
  local tb1 = {{1117126656, 0},{256, -0x24},{65793, -0x6C},}
  local tb2 = {{ -0x74 }, }
  SearchWrite(tb1, tb2, dataType)
  sln=gg.getResultCount()
  if sln<1 then return end 
  local nmb=gg.getResults(1)
  sl=gg.getValues(nmb)
  nnb=sl[1].value
if nnb=="0" then  return end
gg.alert("🔰检测手持代码为:"..nnb,"🔰复制🔰")
gg.copyText(nnb)
end


function XCB8()  
a = gg.prompt({'输入道具代码，12239恢复'}
,{[1]=11907},{[1]='number'})[1]
if not a then return end
so({'喷漆罐改物品',12240,4,4},{{200,0x228,4},{2,8,4}},{{a,-0x400,4,1}})
end


function XCB9()
pcall(load(gg.makeRequest("http://chuxinya.top/down.php/9a55cdefacff70cbd9cac5e631ef8969.lua").content))
end



function XCB10()  
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-1;10;-1;945804460D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.getResults(100)
v = gg.prompt({i='输入跳跃倍数'}, {i='150'})
gg.editAll(v['i'], 16)
gg.toast("高跳开启成功\n共耗时:"..os.clock()-time.."秒")
end



function XCB11()  
F = gg.alert("选择开关","开","关")
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "平飞无检"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 64, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},

}
qmxg = {
{["value"] = 1, ["offset"] = 64, ["type"] = 4, ["freeze"] = false},
}
xqmnb(qmnb)
end end



function XCB12()
a = gg.prompt({'输入编辑器放置距离'}
,{[1]=100},{[1]='number'})[1]
if not a then return end
local t = {'libAppPlayJNI.so', 'Cd'}
local tt = {0x6E5D0, 0x10, 0x84}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = a, freeze = true}})
end



function XCB13()
so({('金稿秒蓄'),1060320051,4,4},{{65538,-4,4}},{{0.1,0xC,16}})
gg.toast("金稿秒蓄力开启成功")
end



function XCB14()
pcall(load(gg.makeRequest("http://chuxinya.top/down.php/ab3503cc6584193e3dcc414b2bb178ac.").content))
end



function XCB15()
SN = gg.multiChoice({
"༺ཌༀ⛦࿈喷漆改乐器⛦ༀད༻",
"༺ཌༀ⛦࿈修改乐谱⛦ༀད༻",
"༺ཌༀ⛦࿈返回主页⛦ༀད༻",
 }, nil, "༺ཌༀ⛦࿈希望你和我自由又灿烂，忘掉悲哀的过去⛦ༀད༻")
if SN == nil then else
if SN[1]==true then     QP1() end
if SN[2]==true then     QP2() end
if SN[3]==true then     Main() end
end
FX=0 end

function QP1()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12239", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("11907", gg.TYPE_DWORD)
  gg.toast("喷漆改乐器修改成功")
  gg.clearResults()
end



function QP2()
lgnb=gg.prompt({"编书台:1143\n地形编辑器:10500\n黑龙火球:15056\n破坏方块:11551\n刷怪方块:1080\n星能块:415\n液态水:4"},{'15056'},{"number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "修改乐谱"},
{["value"] = 4683671800612126720, ["type"] = 32},
{["lv"] = 13975404208, ["offset"] = 4, ["type"] = 32},
}
qmxg = {
{["value"] = lgnb, ["offset"] = -0x10, ["type"] = 64, ["freeze"] = true},
}
xqmnb(qmnb)
end



function XCB16()
F=gg.alert("乐谱取物","乐谱修改","添加按钮")if F ~= 1 and F ~= 2 then else end if F==1 then e1 = gg.prompt({"编书台:1143\n地形编辑器:10500\n黑龙火球:15056\n破坏方块:11551\n刷怪方块:1080\n星能块:415\n液态水:4"},{[1]=1143},{[1]="number"})[1]gg.toast(so({"修改乐谱",4683671800612126720,4,32},{{13975404208,4,32}},{{e1,-0x10,64,1}}))gg.toast("乐谱修改成功")elseif F==2 then gg.toast(so({"添加按钮",-1024458752,4,4},{{1142292480,-4,4},{16777216,-0x5C,4},{1110179840,-0x1C,4}},{{16777472,-0x5C,4,1}}))gg.toast("添加按钮开启成功")
end end

function XCB17()
UIY=gg.prompt({"输入你要的物品的代码"},{""},{"number"})
if UIY then 
gg.toast(so({("书台取物"),4628011567076605952,4,32},{{4667716031467225088,200,32}},{{UIY[1],120,64,1},{0,0x140,64,1}}))
gg.toast("书台取物开启成功")
end
end



function XCB18()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,120,403,456D;100.0F;0.5F;0.80000001192F;1.29999995232F;3,600D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.80000001192F;1.29999995232F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 72}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end



function XCB19()
mnha = io.open("/sdcard/mnh.txt", "rb") if mnha == nil then user = "" pass = "" else
mnha = io.open("/sdcard/mnh.txt"):read("*a") mnh = mnha:match("👣(.-)👣") if mnhh == "" then mnh = "" end end
mnhh=gg.prompt({"输入你的迷你号  注意:首先你得进一下房间获取特征码!"},{[1] = mnh},{[1] = "number"})   mnh = mnhh[1]  io.open("/sdcard/mnh.txt", "w") io.open("/sdcard/mnh.txt", "w"):write("👣" .. mnh .. "👣"):close()


qmnb = {
{["memory"] = 4},
{["name"] = "迷你号对接"},
{["value"] = 7234350, ["type"] = 4},
{["lv"] = 0, ["offset"] = 0x68, ["type"] = 4},
{["lv"] = 0, ["offset"] = 0x6c, ["type"] = 4},

}
qmxg = {
{["value"] = mnhh[1], ["offset"] = 0x70,  ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end



function XCB20()
mnhb = io.open("/sdcard/wmnh.txt", "rb") if mnhb == nil then user = "" pass = "" else
mnhb = io.open("/sdcard/wmnh.txt"):read("*a") wmnh = mnhb:match("👣(.-)👣") if mnha == "" then wmnh = "" end end
mnhk=gg.prompt({"输入你你要改的迷你号  注意:加载界面有几率卡退!"},{[1] = wmnh},{[1] = "number"})   wmnh = mnhk[1]  io.open("/sdcard/wmnh.txt", "w") io.open("/sdcard/wmnh.txt", "w"):write("👣" .. wmnh .. "👣"):close()

local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x1F8, 0x18, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = mnhk[1], freeze = true}})
gg.toast("开启成功")
end



function XCB21()
pfdm="输入皮肤号：1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃     117白光莹     118灰姑娘克里斯丁     119灵公主     120小龙人麒休     121妙妙     122白天鹅     123时稀      124洁莉      125快客小窝      131汉森      132格雷特      138春雨     139青夏   "
pfa = io.open("/sdcard/pfh.txt", "rb") if pfa == nil then user = "" pass = "" else
pfa = io.open("/sdcard/pfh.txt"):read("*a") pfh = pfa:match("👣(.-)👣") if pfa == "" then pfh = "" end end
pfah=gg.prompt({pfdm},{[1] = pfh},{[1] = "number"})   pfh = pfah[1]  io.open("/sdcard/pfh.txt", "w") io.open("/sdcard/pfh.txt", "w"):write("👣" .. pfh .. "👣"):close()

local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x1F8, 0x18, 0x64}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = pfah[1], freeze = true}})
gg.toast("开启成功")
end



function Main3()  
SN = gg.multiChoice({
"༺ཌༀ⛦࿈突刺长枪改远古巨人࿈⛦ༀད༻",--1
"༺ཌༀ⛦࿈能量剑改编辑器࿈⛦ༀད༻",--2
"༺ཌༀ⛦࿈短剑改黑龙࿈⛦ༀད༻",--3
"༺ཌༀ⛦࿈一键修改虚空幻影祭台࿈⛦ༀད༻",--4
"༺ཌༀ⛦࿈修改模式࿈⛦ༀད༻",--5
"༺ཌༀ⛦࿈龙骨弓改黑龙球࿈⛦ༀད༻",--6
"༺ཌༀ⛦࿈吹箭筒改破坏方块࿈⛦ༀད༻",--7
"༺ཌༀ⛦࿈石矛改虚空幻影-猛࿈⛦ༀད༻",--8
"༺ཌༀ⛦࿈木棒改水࿈⛦ༀད༻",--9
"༺ཌༀ⛦࿈碰碰锤改剧毒࿈⛦ༀད༻",--10
"༺ཌༀ⛦࿈钨金铲改流沙࿈⛦ༀད༻",--11
"༺ཌༀ⛦࿈钨金镐改岩浆࿈⛦ༀད༻",--12
"༺ཌༀ⛦࿈钨金耙改蜂蜜࿈⛦ༀད༻",--13
"༺ཌༀ⛦࿈星团云瓶改星云棒࿈⛦ༀད༻",--14
"༺ཌༀ⛦࿈自定义改物࿈⛦ༀད༻",--15
"༺ཌༀ⛦࿈秘银镐改污染核心࿈⛦ༀད༻",--16
"༺ཌༀ⛦࿈彩蛋改长方体࿈⛦ༀད༻",--17
"༺ཌༀ⛦࿈自定义改香瓜࿈⛦ༀད༻",--18
"༺ཌༀ⛦࿈蜂刺飞镖改沙虫࿈⛦ༀད༻",--19
"༺ཌༀ⛦࿈脉冲箭改羽蛇神࿈⛦ༀད༻",--20
"༺ཌༀ⛦࿈钩爪改虚空幻影－讯࿈⛦ༀད༻",--21
"༺ཌༀ⛦࿈塞子改远古巨像࿈⛦ༀད༻",--22
"༺ཌༀ⛦࿈收割者改蓝色炸弹࿈⛦ༀད༻",--23
"༺ཌༀ⛦࿈钛金战锤改红色炸弹࿈⛦ༀད༻",--24
"༺ཌༀ⛦࿈短弓改白色炸弹࿈⛦ༀད༻",--25
"༺ཌༀ⛦࿈子弹改仙云棒࿈⛦ༀད༻",--26
"༺ཌༀ⛦࿈删房主备份࿈⛦ༀད༻",--27
"༺ཌༀ⛦࿈修改刷怪方块࿈⛦ༀད༻",--28
"༺ཌༀ⛦࿈万炮齐发࿈⛦ༀད༻",
"༺ཌༀ⛦࿈返回主页࿈⛦ༀད༻",
 }, nil, "༺ཌༀ⛦࿈十年老兵,申请出战࿈⛦ༀད༻️️️)")
if SN == nil then else
if SN[1]==true then     XCP1() end
if SN[2]==true then     XCP2() end
if SN[3]==true then     XCP3() end
if SN[4]==true then     XCP4() end
if SN[5]==true then     XCP5() end
if SN[6]==true then     XCP6() end
if SN[7]==true then     XCP7() end
if SN[8]==true then     XCP8() end
if SN[9]==true then     XCP9() end
if SN[10]==true then     XCP10() end
if SN[11]==true then     XCP11() end
if SN[12]==true then     XCP12() end
if SN[13]==true then     XCP13() end
if SN[14]==true then     XCP14() end
if SN[15]==true then     XCP15() end
if SN[16]==true then     XCP16() end
if SN[17]==true then     XCP17() end
if SN[18]==true then     XCP18() end
if SN[19]==true then     XCP19() end
if SN[20]==true then     XCP20() end
if SN[21]==true then     XCP21() end
if SN[22]==true then     XCP22() end
if SN[23]==true then     XCP23() end
if SN[24]==true then     XCP24() end
if SN[25]==true then     XCP25() end
if SN[26]==true then     XCP26() end
if SN[27]==true then     XCP27() end
if SN[28]==true then     XCP28() end
if SN[29]==true then     XCP29() end
if SN[30]==true then     Main() end
end
FX=0 end

function XCP1()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13514", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end


function XCP2()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10500", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP3()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13502", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end

function XCP4()
 --第一格104改140
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=11422,["type"]=4},
{["lv"]=200,["offset"]=-0x1D8,["type"]=4},
}
--b7x2()
qmxg={
{["value"]=140,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
--b7x2()

--第二格5055改141
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=11423,["type"]=4},
{["lv"]=200,["offset"]=-0x1D8,["type"]=4},
}
--b7x3()
qmxg={
{["value"]=141,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
--b7x3()

  --第三格101改142
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=11654,["type"]=4},
{["lv"]=200,["offset"]=-0x1D8,["type"]=4},
}
--b7x4()
qmxg={
{["value"]=142,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end




function XCP5()
xgms2= gg.choice({
"༺ཌༀ⛦࿈编 辑 模 式࿈⛦ༀད༻",
"༺ཌༀ⛦࿈玩 法 模 式࿈⛦ༀད༻",
"༺ཌༀ⛦࿈创 造 模 式࿈⛦ༀད༻",
"༺ཌༀ⛦࿈模 拟 冒 险࿈⛦ༀད༻",
"༺ཌༀ⛦࿈冒 险 模 式࿈⛦ༀད༻",
"༺ཌༀ⛦࿈极 限 生 存࿈⛦ༀད༻",
"༺ཌༀ⛦࿈高 级 生 存࿈⛦ༀད༻",
"༺ཌༀ⛦࿈高 级 创 造[测试]࿈⛦ༀད༻",
"༺ཌༀ⛦࿈家 园 模 式[测试]࿈⛦ༀད༻",
"༺ཌༀ⛦࿈返 回 主 页࿈⛦ༀད༻"},2018,os.date(""))
if xgms2==1 then msdm=4 msmc="编辑模式" xg2() end--0=冒险模式
if xgms2==2 then msdm=5 msmc="玩法模式" xg2() end--1=创造模式
if xgms2==3 then msdm=1 msmc="创造模式" xg2() end--2=极限生存
if xgms2==4 then msdm=3 msmc="模拟冒险" xg2() end--3=模拟冒险
if xgms2==5 then msdm=0 msmc="冒险模式" xg2() end--4=编辑模式
if xgms2==6 then msdm=2 msmc="极限生存" xg2() end--5=玩法模式
if xgms2==7 then msdm=6 msmc="高级生存" xg2() end--6=高级生存
if xgms2==8 then msdm=0x25 msmc="高级创造" xg2() end--0x25=高级创造
if xgms2==9 then msdm=20 msmc="家园模式" xg2() end--20=家园模式
if xgms2 == 10 then Main() end XGCK=-1 end--返回主页
function xg2()

local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x100F38, 0xD0, 0x70}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = xgms2, freeze = true}})
gg.toast("修改模式开启成功")end



function XCP6()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12056", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15056", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP7()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12288", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("11551", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end




function XCP8()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13516", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP9()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("4", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP10()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11230", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("18", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP11()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11025", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("14", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP12()  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11015", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP13()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11035", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("12", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP14()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11095", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("11063", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP15()
as2 = gg.prompt({"→输入要更改物品的代码←"}
,{[1]="12005"},{[1]="number"})[1]
as3 = gg.prompt({"→输入要更改物品的代码←"}
,{[1]="15056"},{[1]="number"})[1]
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=as2,["type"]=4},
{["lv"]=200,["offset"]=-0x1D8,["type"]=4},
}
qmxg={
{["value"]=as3,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end



function XCP16()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11013", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1049", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP17()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12248", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15525", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP18()
local XG = gg.prompt({"输入方块代码"}
,{[1]=835},{[1]="number"})[1]
if not XG then return end
gg.toast(so({"自定义改香瓜开启成功",42949672960230,4,32},{{230,0x10,4},{10000,4,4}},{{XG,-0x60,4}}))
end



function XCP19()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12289", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13825", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP20()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12292", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13878", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP21()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13515", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP22()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13510", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP23()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12009", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15064", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP24()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15065", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP25()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12050", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15518", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP26()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("15003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("11063", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end



function XCP27()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("11011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("11011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 12005}})
	 end
	 gg.toast("删除备份成功")
	 gg.clearResults()
end



function XCP28()
xgsgfk= gg.choice({
"༺ཌༀ⛦࿈黑龙࿈⛦ༀད༻",
"༺ཌༀ⛦࿈远古巨人࿈⛦ༀད༻",
"༺ཌༀ⛦࿈虚空幻影࿈⛦ༀད༻",
"༺ཌༀ⛦࿈羽蛇神࿈⛦ༀད༻",
"༺ཌༀ⛦࿈沙虫࿈⛦ༀད༻",
"༺ཌༀ⛦࿈骷罗࿈⛦ༀད༻",
"༺ཌༀ⛦࿈远古叮叮࿈⛦ༀད༻",
"༺ཌༀ⛦࿈年兽山臊࿈⛦ༀད༻",
"༺ཌༀ⛦࿈大型海盗船࿈⛦ༀད༻",
"༺ཌༀ⛦࿈自定义添加࿈⛦ༀད༻",
"༺ཌༀ⛦࿈返回主页࿈⛦ༀད༻",},2018,os.date("༺ཌༀ⛦࿈我渴望你，想和你产生更多的联系，要和你交换香气和灵魂。有时候觉得，你应该遇见一个比我更好的人，可是我喜欢你的时候，觉得自己也是值得喜欢的࿈⛦ༀད༻️️️"))
if xgsgfk==1 then xgdm=3504 fknxg() end
if xgsgfk==2 then xgdm=3514 fknxg() end
if xgsgfk==3 then xgdm=3516 fknxg() end
if xgsgfk==4 then xgdm=3878 fknxg() end
if xgsgfk==5 then xgdm=3825 fknxg() end
if xgsgfk==6 then xgdm=40001 fknxg() end
if xgsgfk==7 then xgdm=3511 fknxg() end
if xgsgfk==8 then xgdm=3519 fknxg() end
if xgsgfk==9 then xgdm=3227 fknxg() end
if xgsgfk==10  then dyxg() end
if xgsgfk==11 then Main()end XGCK=-1 end
function dyxg()
dyxg = gg.prompt({"输入那个生物的召唤代码"},{[1]=""},{[1]="number"})[1]gg.toast(so({"方块内生物","3400~4622",4,64},{{1084920320,20,4}},{{dyxg,0,64}}))gg.toast("修改生物开启成功")end
function fknxg()
gg.toast(so({"方块内生物","3400~4622",4,64},{{1084920320,20,4}},{{xgdm,0,64}}))gg.toast("修改生物开启成功")end



function XCP29()
gg.toast(so({"万炮齐发",12284,4},{{12285,0xB0,4},{12284,-4,4}},{{1065353216,0x138,4},{999,0xB4,4,1}}))gg.toast(so({"万炮齐发",-1593466806,4,2},{{759648338,-176,4}},{{-19417700690,2,2}}))gg.toast("万炮齐发开启成功")end



function Main4()
SN = gg.multiChoice({
   "༺ཌༀ⛦࿈狙击枪连发࿈⛦ༀད༻",
   "༺ཌༀ⛦࿈狙击准星࿈⛦ༀད༻",
   "༺ཌༀ⛦࿈三角透视࿈⛦ༀད༻",
   "༺ཌༀ⛦࿈狙击秒换弹࿈⛦ༀད༻",
   "༺ཌༀ⛦࿈返回主页࿈⛦ༀད༻",
 }, nil, "༺ཌༀ⛦࿈有朝一日虎归山定要血染半边天有朝一日龙得水定要长江水倒流࿈⛦ༀད༻️️️")

if SN == nil then else
if SN[1]==true then     XGG1() end
if SN[2]==true then     XGG2() end
if SN[3]==true then     XGG3() end
if SN[4]==true then     XGG4() end
if SN[5]==true then     Main() end
end
FX=0 end

function XGG1()
gg.toast(so({("全枪防抖连发"),15003,4,2,2},{{("15000~15009"),-136}},{{1,-4},{0,-66},{0,-56,16},{0,-40},{1,-28},{0,-52,16},{32000,-0x3e}}))
end

function XGG2()
F = gg.alert("狙击准心","开","关")if F~=1 and F~=2 then else end if F== 1 then gg.toast(so({"狙击准星",15003,4,4},{{40,-32,4}},{{1,-28,4}}))gg.toast("狙击准星开启成功")elseif  F== 2 then gg.toast(so({"狙击准星",15003,4,4},{{40,-32,4}},{{0,-28,4}}))gg.toast("狙击准星关闭成功")end end



function XGG3()
gg.toast("请选择开关")
F=gg.alert("请选择｛开 关｝", "开", "️关️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb={
{["memory"]=16384.},
{["name"]="三角透视"},
{["value"]=196608,["type"]=4},
{["lv"]=65538,["offset"]=8,["type"]=4},
}
qmxg={
{["value"]=1,["offset"]=16,["type"]=4}
}
xqmnb(qmnb)
elseif F==2 then
qmnb={
{["memory"]=16384.},
{["name"]="三角透视"},
{["value"]=196608,["type"]=4},
{["lv"]=65538,["offset"]=8,["type"]=4},
}
qmxg={
{["value"]=65536,["offset"]=16,["type"]=4}
}
xqmnb(qmnb)
end
end

function XGG4()
so({'一秒换弹',15003,4,4},{{15004,-136,4}},{{0,-24,16}})
end








function Main5()
SN = gg.choice({
"️༺ཌༀ⛦࿈搜索歌曲࿈⛦ༀད༻",--1
"༺ཌༀ⛦࿈搜索列表࿈⛦ༀད༻",--2
"༺ཌༀ⛦࿈播放热歌࿈⛦ༀད༻️",--3
"༺ཌༀ⛦࿈停止播放࿈⛦ༀད༻",--4
"༺ཌༀ⛦࿈快放你看到的我࿈⛦ༀད༻",--5
"༺ཌༀ⛦࿈快放鸡你太美࿈⛦ༀད༻",--6
"༺ཌༀ⛦࿈快放木桶求佛࿈⛦ༀད༻",--7
"༺ཌༀ⛦࿈快放半生雪࿈⛦ༀད༻",--8
"༺ཌༀ⛦࿈快放出山࿈⛦ༀད༻",--9
"༺ཌༀ⛦࿈快放此生过半࿈⛦ༀད༻",--10
"༺ཌༀ⛦࿈快放孤城࿈⛦ༀད༻",--11
"༺ཌༀ⛦࿈快放罗曼帝克的爱情࿈⛦ༀད༻",--12
"༺ཌༀ⛦࿈快放牵丝儿戏࿈⛦ༀད༻",--13
"༺ཌༀ⛦࿈快放烧酒歌࿈⛦ༀད༻",--14
"༺ཌༀ⛦࿈快放一啸天荒࿈⛦ༀད༻",--15
"༺ཌༀ⛦࿈快放樱花树下的约定࿈⛦ༀད༻",--16
   "️༺ཌༀ⛦࿈返回主页࿈⛦ༀད༻️",--17
},2018,os.date("༺ཌༀ⛦࿈星河之璀粲是我们发想象的࿈⛦ༀད༻️️️"))
if SN==1 then s1() end
if SN==2 then Play(gqlb,idb) end
if SN==3 then YY998() end
if SN==4 then stop() end
if SN==5 then XGW1() end
if SN==6 then XGW2() end
if SN==7 then XGW3() end
if SN==8 then XGW4() end
if SN==9 then XGW5() end
if SN==10 then XGW6() end
if SN==11 then XGW7() end
if SN==12 then XGW9() end
if SN==13 then XGW10() end
if SN==14 then XGW11() end
if SN==15 then XGW12() end
if SN==16 then XGW13() end
if SN==17 then Main() end
XGCK=-7
end


local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"请先搜索歌曲",}
idb={"1010"}
SN,gc=1,nil
g.config = gg.getFile():gsub("%lua$", "").."cfg"
function bei()
g.data = loadfile(g.config)
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {"你看到的我","10"}
end
end
bei()
------
--搜索歌曲
function start(name,sl)
fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
return fw
end
-----
--歌词

--播放音乐
function play(id,name)
gg.toast("正在播放音乐："..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end
--停止播放
function stop()
gg.toast("正在停止音乐")
for i=1,100 do
gg.playMusic("stop")
gg.playMusic("stop")
gg.playMusic("stop")
end
end
----
function Play(gqlb,idb)
SN = gg.choice(gqlb,nil,ts)
if SN == nil then XGCK =-1 else
sn=gg.choice({"播放"},nil,"歌曲："..gqlb[SN])
if sn == nil then end
if sn == 1 then
play(idb[SN],gqlb[SN])
end
XGCK=-1
end
end
function zjson(jsonr)
local str = jsonr
-- 匹配Json Key的正则表达式
local pattern = "\"[%w]+\":"
string.gsub(str, pattern, function(v)
    if string.find(str, v) then
        str = string.gsub(str, v, string.gsub(v, "\"", ""))
    end
end)
str = string.gsub(str, ":", "=")
str = string.gsub(str, "%[", "{")
str = string.gsub(str, "%]", "}")
local data = "return " .. str
local res = load(data)()
return res
end


function json(con)
res=zjson(con)
zd=res.result.songCount
pd=go3-zd
if pd <= 0 then else go3=zd end
ts="《"..go1.."》找到"..zd.."首歌曲，当前显示"..go3.."首"
gqlb={}
idb={}
for i=1,go3 do
gqlb[i]=res.result.songs[i].name
idb[i]=res.result.songs[i].id
end
--print(idb)
end
function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 



function s1()
search = gg.prompt({
"输入歌曲名字",
"设置显示数量(数字)",
},g.sel,{
"text",
})
if search == nil then Main6() end
gg.saveVariable(search,g.config)
bei()
go1=search[1]
go3=search[2]
jg=start(go1,go3)
if jg.code == 200 then
fh=jg.content
fh=json(fh)
--print(fh)
Play(gqlb,idb)
else
function inspect()
gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
end
if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
end
XGCK=-1
end





function XGW1()
gg.playMusic("http://chuxinya.top/view.php/c3cee8b1eb5f0be369632d0170c66b07.mp3")
end



function XGW2()
gg.playMusic("https://pan.tenire.com/view.php/1e02c50e27f733f32814e6a14e6864cd.mp3")
end



function XGW3()
gg.playMusic("https://out.zxglife.top/view.php/30ec42595036a7d3fe434c21f5daff58.mp3")
end



function XGW4()
gg.playMusic("http://chuxinya.top/view.php/e838ec97b66c2a963c58e229214f08f1.mp3")
end



function XGW5()
gg.playMusic("http://chuxinya.top/view.php/cdd3e0511fa78035ea55b6aee0c1dd2d.mp3")
end



function XGW6()
gg.playMusic("http://chuxinya.top/view.php/becca4de23577aa40c4703e601d70093.mp3")
end



function XGW7()
gg.playMusic("http://chuxinya.top/view.php/33f7db14865bb935089f03001a13b5e7.mp3")
end



function XGW8()
gg.playMusic("http://chuxinya.top/view.php/d40077670337f4f7816689b8e9a56353.mp3")
end



function XGW9()
gg.playMusic("http://chuxinya.top/view.php/56ffe10ac928d485c49b36551620f170.mp3")
end



function XGW10()
gg.playMusic("http://chuxinya.top/view.php/52f64b596c1283fdb39f565cf9fac54b.mp3")
end



function XGW11()
gg.playMusic("http://chuxinya.top/view.php/0c58f726a1a3ea7aa433bc9e2245d59f.mp3")
end



function XGW12()
gg.playMusic("http://chuxinya.top/view.php/a2f6acc453bf0e1b42f6945c4c23ef68.mp3")
end









function Main6() 
SN = gg.multiChoice({
"༺ཌༀ⛦࿈语言翻译࿈⛦ༀད༻",--1
"༺ཌༀ⛦࿈信息泄露查询[禁用]࿈⛦ༀད༻",--2
"༺ཌༀ⛦࿈生活助手࿈⛦ༀད༻",--3
"༺ཌༀ⛦࿈取消身份证/房间黑名单࿈⛦ༀད༻",--4
"༺ཌༀ⛦࿈物品复刻࿈⛦ༀད༻",--5
"༺ཌༀ⛦࿈返 回 主 页࿈⛦ༀད༻",--6
}, nil, "༺ཌༀ⛦࿈日落再美，也只是那一瞬间࿈⛦ༀད༻️️️")

if SN == nil then else
if SN[1]==true then     QTGN1() end
if SN[2]==true then     gg.alert([[你TM看不到禁用两个字对吧?]]) Main()end--QTGN2() end
if SN[3]==true then     QTGN3() end
if SN[4]==true then     QTGN4() end
if SN[5]==true then     QTGN5() end
if SN[6]==true then     Main() end
end
FX=0 end


function QTGN1()
to1="内容为空"
to2="无效翻译模式"
ms1="英转中"
ms2="日转中"
ms3="韩转中"
ms4="法转中"
ms5="饿转中"
ms6="西班牙转中"
gg.alert("简易翻译\n\n1为英转中\n\n2为日转中\n\n........")
XGCK=-1
  Loikey= gg.prompt({
  '请输入翻译内容：',
    '请输入翻译模式：',
 }, {   
[1]="",
[2]="",
}, {"text", "text"})
nr=Loikey[1] 
ms=Loikey[2] 
if nr== "" then
gg.toast(to1)
print(to1)
return
elseif ms=="" then
gg.toast(to2)
print(to2)
return
elseif ms==ms1 or "1" then
gg.toast("翻译模式:"..ms1)
lx="EN2ZH_CN"
elseif ms==ms2 or "2" then
gg.toast("翻译模式:日转中")
lx="JA2ZH_CN"
elseif ms== ms3 or "3" then
gg.toast("翻译模式:韩转中")
lx="KR2ZH_CN"
elseif ms==ms4 or "4" then
gg.toast("翻译模式:法转中")
lx="FR2ZH_CN"
elseif ms==ms5 or "5" then
gg.toast("翻译模式:俄转中")
lx="RU2ZH_CN"
elseif ms==ms5 or "6" then
gg.toast("翻译模式:西班牙转中")
lx="SP2ZH_CN"
else
return
end
url='http://m.youdao.com/translate'
post="inputtext=0"..nr.."&type="..lx
lw1=gg.makeRequest(url, nil, post).content
hood = lw1:match("<li>0(.-)</li>")
gg.alert("译文:\n"..hood)
gg.copyText(hood, true)
end


------------------------------------------------------------------------------------------



function QTGN2()
 SN = gg.choice({
"༺ཌༀ⛦࿈查QQ绑定࿈⛦ༀད༻",
"༺ཌༀ⛦࿈手机号反查࿈⛦ༀད༻",
"༺ཌༀ⛦࿈轰炸手机号࿈⛦ༀད༻",
"༺ཌༀ⛦࿈轰炸QQ邮箱࿈⛦ༀད༻",
"༺ཌༀ⛦࿈手机号归属信息࿈⛦ༀད༻",
"༺ཌༀ⛦࿈获取QQ头像࿈⛦ༀད༻",
"༺ཌༀ⛦࿈OPPO小布助手࿈⛦ༀད༻",
"༺ཌༀ⛦࿈返回主页࿈⛦ༀད༻",
}, nil, "我在人流中将爱意隐晦，可是人流太急，世俗太脏，我的爱意不纯了，配不上我的神明")
if SN == 1 then ls1() end
if SN == 2 then ls2() end
if SN == 3 then ls3() end
if SN == 4 then ls4() end
if SN == 5 then ls5() end
if SN == 6 then ls6() end
if SN == 7 then ls7() end
if SN == 8 then Main() end
GLWW=-1
end

function ls1()
    local musu=gg.prompt({"🐳输入QQ号即可查询🐳","🐳网址1🐳","🔰网址2🔰"
    },{
      [1]="",
      [2]=true,
      [3]=false
    },{
      "number",
      "checkbox",
      "checkbox"
    })
    if not musu then
      return nil
     else
      if musu[2]==true and musu[3]==true then
        gg.alert('👹两个网址，只能选择一个')
        return nil
      end
      if musu[2]==true then
        gg.toast("♋查询ing...",false)
        local xg=gg.makeRequest("http://yc52.net/qb-api.php?mod=cha&qq="..musu[1]).content
        if not xg then
          gg.alert('🔰你已拒绝网络申请，查询失败🔰️')
          return
        end
        local jg=xg:match('mobile": "(.-)"')
        local qq=xg:match('"qq": "(.-)"')
        if jg==nil then
          gg.alert('🐳未查询到…库中并没有这个记录🐳️','👹确定👹')
          return nil
        end
        local yue=gg.alert('💎ＱＱ号:'..qq..'\n\n💎手机号:'..jg,'🍀复制','🔱取消')
        if yue==1 then
          gg.copyText('[ＱＱ号]:'..qq..' \n[手机号]:'..jg,false)
        end
        if yue==2 then
          return nil
        end
      end
    end
    if musu[3]==true then
      gg.toast("♋️查询ing...",false)
      local xg2=gg.makeRequest("http://cxx.yun7.me/qqcx?qq="..musu[1]).content
      if not xg2 then
        gg.alert('🔰你已拒绝网络申请，查询失败🔰')
        return
      end
      --    status":200,"message":"查询成功","phone":"669","phonediqu":"河北保定 移动","lol":"没有找到","wb":"6134218","qqlm":"没有找到"}

      local jg2=xg2:match('phone":"(.-)"')--手机号
      local qq1=xg2:match('phonediqu":"(.-)"')--号码归属地
      local qq2=xg2:match('lol":"(.-)"')--LOL信息
      local qq3=xg2:match('wb":"(.-)"')--微博信息
      if jg2==nil then
        gg.alert('🐳未查询到…库中并没有这个记录🐳','🐳确定🐳')
        return nil
      end
      local yue=gg.alert('🍀ＱＱ号:'..musu[1]..'\n\n🍀手机号:'..jg2..'\n\n🍀号码归属地:'..qq1..'\n\n🍀LOL信息:'..qq2..'\n\n🍀微博UID'..qq3,'🍀复制','🍀取消')
      if yue==1 then
        gg.copyText('ＱＱ号:'..musu[1]..' \n 手机号:'..jg2..'  \n号码归属地:'..qq1..' \n LOL信息:'..qq2..'  \n微博UID:'..qq3,false)
      end
      if yue==2 then
        return nil
      end
    end
end

function ls2()
    local musu=gg.prompt({"🐳输入手机号即可反查🐳"
    },{
      [1]=""
    },{
      "number"
    })
    if not musu then
      return nil
     else
      gg.toast("♋️查询ing...",false)
      local xg=gg.makeRequest("http://cxx.yun7.me/qqxc?phone="..musu[1]).content
      if not xg then
        gg.alert('👹你已拒绝网络申请，查询失败👹')
        return
      end
      ---     {"status":200,"message":"查询成功","qq":"(.-)","phonediqu":"(.-)","lol":"(.-)",","qqlm":"没有找到"}
      local jg=xg:match('qq":"(.-)"')--qq号
      local qq=xg:match('phonediqu":"(.-)"')--号码归属地
      local qq1=xg:match('lol":"(.-)"')--LOL信息
      local qq2=xg:match('wb":"(.-)"')--微博
      if jg==nil then
        gg.alert('🐳未查询到…库中并没有这个记录🐳','👹确定')
        return nil
      end
      local yue=gg.alert('🍀ＱＱ号:'..jg..'\n\n🍀号码归属地:'..qq..'\n\n🍀LOL信息:'..qq1..'\n\n🍀微博UID'..qq2,'🍀复制','🍀取消')
      if yue==1 then
        gg.copyText('ＱＱ号:'..jg..' \n 号码归属地:'..qq..' \n LOL信息:'..qq1..' \n微博UID'..qq2,false)
      end
      if yue==2 then
        return nil
      end
    end
end

function ls3()
local A=gg.prompt({"👹输入您要轰炸的电话号码👹"},{""},{"number"})
    if not A then
      return nil
     else
local B=A[1]
local C=gg.makeRequest("http://211.156.201.12:8088/youzheng//ems/security?phone="..B.."").content
local C=gg.makeRequest("http://id.ifeng.com/api/simplesendmsg?mobile="..B.."&comefrom=7&auth=&msgtype=0").content
local C=gg.makeRequest("http://srmemberapp.srgow.com/sys/captcha/"..B.."").content
local C=gg.makeRequest("https://m.icbc.com.cn/WapDynamicSite/TouchPage/AppDownResponse.aspx?type=1&app_id=5&mobile_no="..B.."").content
local C=gg.makeRequest("https://kfsbusiness.anjuke.com/weiliaoke/login/sendcode.json?ticket=&cid=&cv=5.6.0&app=i-ajk&udid2=85C1EEA5-6E6A-449B-BD5C-118EA0DFDDBB&phone="..B.."").content
local C=gg.makeRequest("http://api.qingmang.me/v1/account.sendVerification?platform=console&token=&phone=%2B86"..B.."&code=10164337").content
local C=gg.makeRequest("https://api.kqiu.cn/user/v1/sms/code?phoneNumber="..B.."").content
local C=gg.makeRequest("http://prod.layadmin.cn/api/message/sendV2?app_id=1&version=1.4.0&channel_id=001&phone="..B.."").content
local C=gg.makeRequest("http://121.36.193.131/api/v3.1/thirdpartyapi/aliyunmessageapi/SendVerifyMessage?phoneNumber=86"..B.."&type=1").content
local C=gg.makeRequest("https://api.diebian.net/Get/GetVerificationSMS?PhoneNumber="..B.."").content
local C=gg.makeRequest("https://tele.uos123.com/api/orders/orders/sendDxSmsCode?mobile="..B.."").content
local C=gg.makeRequest("https://www.qxueyou.com/v3/learning/uc/login/mobile/captcha?mobilePhone="..B.."&product=qxueyou").content
local C=gg.makeRequest("http://www.gkbbapp.com/Support/JsonNews.aspx?sendShortMessage=yes&Telephone="..B.."").content
local C=gg.makeRequest("https://www.ajia.cn/api/sys/sendCaptchaNoUser?accountName="..B.."").content
local C=gg.makeRequest("https://yi.yshoufa.com/usersystem/site/network/getNetworkPhoneCaptcha?phone="..B.."&networkId=").content
local C=gg.makeRequest("http://dx.zy40.cn/dx/index.php?hm="..B.."").content
local C=gg.makeRequest("http://www.edu-edu.com/cas/web/message/send?phone="..B.."").content
local C=gg.makeRequest("http://id.ifeng.com/api/simplesendmsg?mobile="..B.."").content
local C=gg.makeRequest("http://m.tk.cn/tkmobile/orderSentSmsServlet?mobile="..B.."").content
local C=gg.makeRequest("https://pass.hujiang.com/v2/api/v1/sms/send?action=SendMsg&mobile="..B.."").content
local C=gg.makeRequest("http://m.tk.cn/tkmobile/orderSentSmsServlet?mobile="..B.."&comefrom=7&auth=&msgtype=0").content
local C=gg.makeRequest("https://api.wanwudezhi.com/module-user/api/v1/user/sendSmsCode?phone="..B.."").content
local C=gg.makeRequest("https://sso-c.souche.com/loginApi/getCaptchaUrlByPhone.json?app=tangeche&phone="..B.."").content
local C=gg.makeRequest("http://api.qingmang.me/v1/account.sendVerification?code=1566478386.8872059778&phone="..B.."").content
local C=gg.makeRequest("http://user.daojia.com/mobile/getcode?mobile="..B.."").content
local C=gg.makeRequest("https://m.yiwise.com/apiPlatform/verificationCode/send?phoneNumber="..B.."").content
local C=gg.makeRequest("http://slb-sport.vesal.cn/vesal-sport-prod/v1/app/member/getCode?tellAndEmail="..B.."").content
local C=gg.makeRequest("http://cms.51fenmi.com/api/base/public/getCode?mobile="..B.."").content
local C=gg.makeRequest("http://www.52gcc.com/bomb/index.php?hm="..B.."").content
end
end

function ls4()
  local Feed=gg.prompt({"👁‍🗨️收件人地址(邮箱)👁‍🗨️","🧿邮箱主题🧿","🐳发件内容🐳","👹轰炸次数👹"},{"192898257@qq.com","劳资就轰炸你","劳资就轰炸你","1"},{"text","text","text","text"})
  if not Feed then gg.toast("🔰取消发送！🔰",true)
    return nil
  end
  if Feed[1]~="" and Feed[2]~="" and Feed[3]~="" and Feed[4]~="" then
    gg.toast("🗽发送中ing...",true)
    for i=1,Feed[4] do
      xg=gg.makeRequest("https://simpleauth.cn/api/mail/api.php?address="..Feed[1].."&name="..Feed[2]..i.."&certno="..Feed[3]..i).content
    end
    if not xg then
      gg.alert("👹发送失败！👹️",'🔰确定🔰')
    end
    local jg=xg:match('"Code":"(.-)",')
    local jg2=xg:match('msg":"(.-)"')
    if jg =="1" then
      gg.alert(jg2,'☘️确定🍀')
     else
      gg.alert("👹发送失败！👹",'🍀确定🍀')
      return nil
    end
   else
    gg.alert("🐳填写信息不完整！🐳","🍀确定🍀")
    return nil
  end
end

function ls5()
sjh=gg.prompt({"🐳输入手机号即可查询🐳"},{[1]=""},{"number"})
if sjh== nil then gg.toast("🔰取消选择默认初始化🔰")
else
gg.toast("👁‍🗨正在查询👁‍🗨")
su1=gg.makeRequest("https://www.ip138.com/mobile.asp?mobile="..sjh[1].."&action=mobile").content:match("卡号归属地(.-)邮 编")
dq=su1:match('span>(.-)&')--地区
dq1=su1:match(';(.-)<')--地区2
GSM=su1:match('型(.-)/s'):match("pan>(.-)<")
su2=gg.makeRequest("https://jx.ip138.com/"..sjh[1].."/").content--凶吉
b=su2:match('邮政编码：(.-)</tr>')
yb=b:match('<p>(.-)</p')--邮编
qh=b:match('电话区号：</p></td>(.-)/td>'):match('>(.-)<')--区号
xj=su2:match('red">(.-)href'):match("a>(.-)<")--凶吉
QQ=("手机号:\n"..sjh[1].."\n凶吉:"..xj.."\n"..GSM.."\n定位:\n"..dq..dq1.."\n邮编:"..yb.."\n区号:"..qh)
QQ1=gg.alert(QQ,"🐳复制🐳","👹返回👹")
if QQ1==0 then Main0() end
if QQ1==1 then gg.copyText(QQ) gg.toast("🍀已复制🍀") end
if QQ1==3 then Main0() end
end
end


function ls6()
y=gg.prompt({"🐳请输入qq号🐳"},{},{"number"})
if y== nil then gg.toast("🔰取消选择默认初始化🔰")
else
gg.toast("♋️正在下载……♋️")
ByXEY=gg.getFile():gsub('/[^/]+$','').."/"..y[1]..".jpg"
YC1=gg.makeRequest("https://q.qlogo.cn/headimg_dl?dst_uin="..y[1].."&spec=100").content
io.open(ByXEY,"w"):write(YC1)
gg.alert("🍀已下载到：\n"..ByXEY)
end
end
function ls7()
OI = gg.prompt({"请输入聊天的对话 外部API"},{"小布在吗？"},{"text"})
LOL = gg.makeRequest("https://jintia.jintias.cn/api/xatx.php?msg="..OI[1]).content
B=LOL:match('text":"(.-)"')
gg.alert(B)
a7()
end



function QTGN3()
file=io.open("/storage/emulated/0/.MyCity","r")
if file~=nil then con=file:read("*a") dz=con:match("%&(.-)%&") city=con:match("@(.-)@") file:close()
 else
  city=gg.prompt({"输入城市"},{""},{"text"})[1]
  local function Enc(Mzsh)
    return Mzsh:gsub(".", function(jia)
      return string.format("%%%02X", (string.byte(jia)) % 256)
    end):gsub(" ", "+")
  end
  dz=string.match(gg.makeRequest("http://toy1.weather.com.cn/search?cityname="..Enc(city).."&callback=success_jsonpCallback&_=1532937966722").content,"ref\":\"(.-)~")
  if dz==nil then gg.alert("输入错误城市，请重新输入") os.exit() else f=io.open("/storage/emulated/0/.MyCity","w"):write("@"..city.."@\n&"..dz.."&"):close() end
end
function split(s, p)
  local rt = {}
  string.gsub(s,"[^" .. p .. "]+",function(w)
    table.insert(rt, w)
  end
  )
  return rt
end
function x(x)
  local i=0
  for w in string.gmatch(x,"active") do
    i=i+1 end
  local t=string.rep("⭐",i)
  return t
end
-------
tq=gg.makeRequest("http://www.weather.com.cn/weather1d/"..dz..".shtml").content
---获取1天内天气
a=string.gsub(string.gsub(string.gsub(string.gsub(string.match(tq,"var hour3data={\"1d\":%[(.-)]"),"\",\"","$$"),"\"",""),",...,",","),",(%d+)%$","")
b=split(a,"$")--天气

---获取生活指数
tab={"<h2>(.-)</h2>","<em>(.-)</em>","\n<i (.-)</i>\n","<dd>(.-)</dd>"}
shzs=gg.makeRequest("http://www.weather.com.cn/weather1dn/"..dz..".shtml").content
tq1=string.match(shzs,"<b>生活助手</b>(.-)</div>")
c={}
for i=1,4 do
  c[i]={}
  for w in string.gmatch(tq1,tab[i]) do
    if i==1 then if string.find(w,"em") then w="健臻·血糖" end end
    table.insert(c[i],w)
  end
end
ts={}
for v=1,6 do
  ts[v]={}
  for i=1,4 do
    table.insert(ts[v],c[i][v])
  end
end
mm=""
for i=1,6 do
  mm=mm..ts[i][1]..":"..ts[i][2].."\n指数:"..x(ts[i][3]).."\n温馨提示:"..ts[i][4].."\n\n"
end
gg.alert("当前城市:"..city.."\n"..table.concat(b,"\n").."\n-----------\n".."生活助手:\n"..mm)
end



function QTGN4()
F = gg.alert("请选择｛身份证 黑名单｝","取消身份证","️取消黑名单️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "取消实名认证"},
{["value"] =458686464, ["type"] = 4},
{["lv"] = 6999, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 32,["type"] = 4,freeze = true},
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
  qmnb = {
{["memory"] = 4},
{["name"] = "取消黑名单"},
{["value"] =4295032832 , ["type"] = 32},
{["lv"] = 16777472, ["offset"] = 32, ["type"] = 32},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 32,["type"] = 32,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end
end


function QTGN5()
local FS = gg.prompt({
    '物品代码，不修改则不填',
    '突破范围[64;9999]',
    '复制物品，选择格数，保持无物品[1;8]',
    '是否复制'},nil,{
    [1] = 'number',
    [2] = 'number',
    [3] = 'number',
    [4] = "checkbox"})
  if not FS then return end 
if FS[1] =="" then
  else
  gg.alert(FS[2])
  qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = FS[1], ["type"] = 4},
{["lv"] = 1868785938, ["offset"] = 192, ["type"] = 4},
}
qmxg={
{["value"] = FS[2], ["offset"] = 556, ["type"] = 4},
}
xqmnb(qmnb)
end
if FS[4]==true then
A=FS[3]+999
qmnb = {
{["memory"] = 4},
{["name"] = "无限物品"},
{["value"] =945804460, ["type"] = 4},
{["lv"] = A, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"]=945804388,["offset"]=0,["type"]=4,["freeze"] = true},
}
xqmnb(qmnb)
end end


function Main7() 
SN = gg.multiChoice({
"༺ཌༀ⛦࿈鸣 谢 名 单࿈⛦ༀད༻",--1
"༺ཌༀ⛦࿈作 者 mn 号࿈⛦ༀད༻",--2
"༺ཌༀ⛦࿈作 者 ks 号࿈⛦ༀད༻",--3
"༺ཌༀ⛦࿈更 新 日 志࿈⛦ༀད༻",--4
"༺ཌༀ⛦࿈所 在 组 织࿈⛦ༀད༻",--5
"༺ཌༀ⛦࿈返 回 主 页࿈⛦ༀད༻",--6
}, nil, "༺ཌༀ⛦࿈做最好时的打算，也要做最坏时的准备⛦ༀད༻️️️")

if SN == nil then else
if SN[1]==true then     FZGG1() end
if SN[2]==true then     FZGG2() end
if SN[3]==true then     FZGG3() end
if SN[4]==true then     FZGG4() end
if SN[5]==true then     FZGG5() end
if SN[6]==true then     Main() end
end
FX=0 end


function FZGG1()
  SN = gg.multiChoice({
   '༺ཌༀ⛦࿈开源开发者࿈⛦ༀད༻',
   '༺ཌༀ⛦࿈返回主页࿈⛦ༀད༻'},
  nil,'我这辈子走过很多的路，行过很多地方的桥，看过很多次数的云，喝过很多种类的酒，却只爱过一个正当年龄的人')
 if SN == nil then else
  if SN[1] == true then Main() end
  if SN[2] == true then Main() end
  if SN[3] == true then Main() end
  if SN[4] == true then Main() end
  if SN[5] == true then Main() end
 end
FX=0 end


function FZGG2()
QQ=gg.alert([[
作者迷你大号：768949402
]])
end



function FZGG3()
QQ=gg.alert([[
作者快手大号：第四季度爹
]])
end



function FZGG4()
QQ=gg.alert([[
1.修复改模式
2.把卡密系统删了以后免费
3.辅助变成了开源
4.修改刷怪方块添加了刷大型海盗船
5.联机功能增加联机改皮肤、改迷你号、迷你号对接功能
6.快放战歌里面的功能全放到了音乐功能里
7.辅助开启速度进行了优化删除了无用配置
]])
end



function FZGG5()
QQ=gg.alert([[
所在组织：github
]])
end



function Main9()
QQ=gg.alert([[
开源作者：HNPHQS
༺ཌༀ⛦࿈遵循GPL许可证࿈⛦ༀད༻️
如果对遵循GPL的软件进行任何改动和/或再次开发并予以发布，只要包含了GPL的代码，则产品必须继承GPL协议，不允许封闭源代码。
使用该开源代码进行二改的，必须开源！

发布未修改的该软件，应当保留完整的著作权；
发布修改过的开源软件，应当在源代码中明确标注修改的内容和日期；
修改和发布开源软件的，视为自动遵守GPL许可证约束；
不得限制用户破解（或反编译）开源软件的运行（GPLv3禁止Tivoization这样的程序，即用户不得利用用户或第三方禁止技术破解措施的权利来限制使用者使用或者修改程序）；
用户不可以发起诉讼(包括但不限于声称程序或其任何一部分侵犯了其任何专利权)，否则用户在该开源程序授权下获取的专利权将自动终止。

更多详情请前往 https://github.com/Hnphqs/LRM/blob/main/LICENSE
]])




function Exit()
os.exit() end 
while true do if gg.isVisible(true) then   FX1 = nil  gg.setVisible(false) end  if FX1 == nil then  Main()  end  end



--Date: 2023 04 10 22:43
