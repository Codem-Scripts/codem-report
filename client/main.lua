local L0_1, L1_1, L2_1, L3_1
L0_1 = false
frameworkObject = nil
L1_1 = Citizen
L1_1 = L1_1.CreateThread
function L2_1()
  local L0_2, L1_2
  L0_2 = GetFrameWork
  L0_2 = L0_2()
  frameworkObject = L0_2
end
L1_1(L2_1)
L1_1 = Citizen
L1_1 = L1_1.CreateThread
function L2_1()
  local L0_2, L1_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = L0_1
    if L0_2 then
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = Config
      L1_2 = L1_2.CoolDown
      L0_2(L1_2)
      L0_2 = false
      L0_1 = L0_2
    end
  end
end
L1_1(L2_1)
L1_1 = RegisterCommand
L2_1 = Config
L2_1 = L2_1.ReportMenuCommand
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1
  if not L0_2 then
    L0_2 = SetNuiFocus
    L1_2 = true
    L2_2 = true
    L0_2(L1_2, L2_2)
    L0_2 = Config
    L0_2 = L0_2.Framework
    if "esx" == L0_2 then
      L0_2 = frameworkObject
      L0_2 = L0_2.TriggerServerCallback
      L1_2 = "codem:server:GetContact"
      function L2_2(A0_3)
        local L1_3, L2_3
        L1_3 = SendNUIMessage
        L2_3 = {}
        L2_3.type = "SET_DATA"
        L2_3.name = A0_3
        L1_3(L2_3)
      end
      L0_2(L1_2, L2_2)
    else
      L0_2 = frameworkObject
      L0_2 = L0_2.Functions
      L0_2 = L0_2.TriggerCallback
      L1_2 = "codem:server:GetContact"
      function L2_2(A0_3)
        local L1_3, L2_3
        L1_3 = SendNUIMessage
        L2_3 = {}
        L2_3.type = "SET_DATA"
        L2_3.name = A0_3
        L1_3(L2_3)
      end
      L0_2(L1_2, L2_2)
    end
  end
  L0_2 = L0_1
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Notification
    L1_2 = Config
    L1_2 = L1_2.Notifications
    L1_2 = L1_2.cooldown
    L1_2 = L1_2.message
    L2_2 = Config
    L2_2 = L2_2.Notifications
    L2_2 = L2_2.cooldown
    L2_2 = L2_2.time
    L3_2 = Config
    L3_2 = L3_2.Notifications
    L3_2 = L3_2.cooldown
    L3_2 = L3_2.type
    L0_2(L1_2, L2_2, L3_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "codem:client:adminMenu"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "codem:client:adminMenu"
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = true
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = Config
  L0_2 = L0_2.Framework
  if "esx" == L0_2 then
    L0_2 = frameworkObject
    L0_2 = L0_2.TriggerServerCallback
    L1_2 = "codem:server:GetData"
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3
      if nil == A0_3 then
        L1_3 = #A0_3
        if not (L1_3 > 0) then
          goto lbl_11
        end
      end
      L1_3 = table
      L1_3 = L1_3.sort
      L2_3 = A0_3
      function L3_3(A0_4, A1_4)
        local L2_4, L3_4
        L2_4 = A0_4.id
        L3_4 = A1_4.id
        L2_4 = L2_4 > L3_4
        return L2_4
      end
      L1_3(L2_3, L3_3)
      ::lbl_11::
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.type = "GET_DATA"
      L2_3.sql = A0_3
      L1_3(L2_3)
    end
    L0_2(L1_2, L2_2)
  else
    L0_2 = frameworkObject
    L0_2 = L0_2.Functions
    L0_2 = L0_2.TriggerCallback
    L1_2 = "codem:server:GetData"
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3
      if nil == A0_3 then
        L1_3 = #A0_3
        if not (L1_3 > 0) then
          goto lbl_11
        end
      end
      L1_3 = table
      L1_3 = L1_3.sort
      L2_3 = A0_3
      function L3_3(A0_4, A1_4)
        local L2_4, L3_4
        L2_4 = A0_4.id
        L3_4 = A1_4.id
        L2_4 = L2_4 > L3_4
        return L2_4
      end
      L1_3(L2_3, L3_3)
      ::lbl_11::
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.type = "GET_DATA"
      L2_3.sql = A0_3
      L1_3(L2_3)
    end
    L0_2(L1_2, L2_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "coords"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = table
  L3_2 = L3_2.unpack
  L4_2 = GetEntityCoords
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L6_2 = Citizen
  L6_2 = L6_2.Wait
  L7_2 = 500
  L6_2(L7_2)
  L6_2 = A1_2
  L7_2 = {}
  L7_2.x = L3_2
  L7_2.y = L4_2
  L7_2.z = L5_2
  L6_2(L7_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "datasave"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 500
  L1_2(L2_2)
  L1_2 = TriggerServerEvent
  L2_2 = "codem:server:setData"
  L3_2 = A0_2.title
  L4_2 = A0_2.desc
  L5_2 = A0_2.coords
  L6_2 = A0_2.type
  L7_2 = A0_2.img
  L8_2 = A0_2.id
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "closepage"
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = true
  L0_1 = L0_2
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "refreshpage"
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.Framework
  if "esx" == L0_2 then
    L0_2 = frameworkObject
    L0_2 = L0_2.TriggerServerCallback
    L1_2 = "codem:server:GetData"
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3
      if nil == A0_3 then
        L1_3 = #A0_3
        if not (L1_3 > 0) then
          goto lbl_11
        end
      end
      L1_3 = table
      L1_3 = L1_3.sort
      L2_3 = A0_3
      function L3_3(A0_4, A1_4)
        local L2_4, L3_4
        L2_4 = A0_4.id
        L3_4 = A1_4.id
        L2_4 = L2_4 > L3_4
        return L2_4
      end
      L1_3(L2_3, L3_3)
      ::lbl_11::
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.type = "GET_DATA"
      L2_3.sql = A0_3
      L1_3(L2_3)
    end
    L0_2(L1_2, L2_2)
  else
    L0_2 = frameworkObject
    L0_2 = L0_2.Functions
    L0_2 = L0_2.TriggerCallback
    L1_2 = "codem:server:GetData"
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3
      if nil == A0_3 then
        L1_3 = #A0_3
        if not (L1_3 > 0) then
          goto lbl_11
        end
      end
      L1_3 = table
      L1_3 = L1_3.sort
      L2_3 = A0_3
      function L3_3(A0_4, A1_4)
        local L2_4, L3_4
        L2_4 = A0_4.id
        L3_4 = A1_4.id
        L2_4 = L2_4 > L3_4
        return L2_4
      end
      L1_3(L2_3, L3_3)
      ::lbl_11::
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.type = "GET_DATA"
      L2_3.sql = A0_3
      L1_3(L2_3)
    end
    L0_2(L1_2, L2_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "admincontrol"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "codem:server:datachange"
  L3_2 = A0_2.dataattr
  L4_2 = A0_2.sqlid
  L1_2(L2_2, L3_2, L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "PlayDropSound"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = PlaySound
  L3_2 = -1
  L4_2 = "CLICK_BACK"
  L5_2 = "WEB_NAVIGATION_SOUNDS_PHONE"
  L6_2 = 0
  L7_2 = 0
  L8_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L1_1(L2_1, L3_1)
