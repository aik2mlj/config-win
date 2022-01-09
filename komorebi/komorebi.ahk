#SingleInstance Force

Run, komorebic.exe start, , Hide

; window hiding behavior
Run, komorebic.exe window-hiding-behaviour hide, , Hide

; Enable hot reloading of changes to this file
Run, komorebic.exe watch-configuration enable, , Hide

; Create space for Yasb
Run, komorebic.exe work-area-offset 0 28 0 28, , Hide

; Open Yasb
Run, python C:\Users\ASUS\.local\share\yasb\src\main.py, , Hide

; Configure the invisible border dimensions
Run, komorebic.exe invisible-borders 12 12 24 24, , Hide

; Enable focus follows mouse
Run, komorebic.exe focus-follows-mouse disable, , Hide

Run, komorebic.exe mouse-follows-focus enable, , Hide

; Ensure there are 3 workspaces created on monitor 0
Run, komorebic.exe ensure-workspaces 0 3, , Hide
Run, komorebic.exe ensure-workspaces 1 3, , Hide

; Give the workspaces some optional names
; Run, komorebic.exe workspace-name 0 0 bsp, , Hide
; Run, komorebic.exe workspace-name 0 1 columns, , Hide
; Run, komorebic.exe workspace-name 0 2 thicc, , Hide
; Run, komorebic.exe workspace-name 0 3 matrix, , Hide
; Run, komorebic.exe workspace-name 0 4 floaty, , Hide

; Set the padding of the different workspaces
; Run, komorebic.exe workspace-padding 0 1 30, , Hide
; Run, komorebic.exe container-padding 0 1 30, , Hide
; Run, komorebic.exe workspace-padding 0 2 30, , Hide
; Run, komorebic.exe container-padding 0 2 30, , Hide
; Run, komorebic.exe workspace-padding 0 3 30, , Hide
; Run, komorebic.exe container-padding 0 3 30, , Hide

; Set the layouts of different workspaces
; Run, komorebic.exe workspace-layout 0 1 columns, , Hide

; Set the floaty layout to not tile any windows
; Run, komorebic.exe workspace-tiling 0 4 disable, , Hide

; Always show chat apps on the second workspace
Run, komorebic.exe workspace-rule exe Obsidian.exe 0 1, , Hide
Run, komorebic.exe workspace-rule exe Discord.exe 0 2, , Hide
Run, komorebic.exe workspace-rule exe Spotify.exe 0 2, , Hide

; Always float IntelliJ popups, matching on class
Run, komorebic.exe float-rule class SunAwtDialog, , Hide
; Always float Control Panel, matching on title
Run, komorebic.exe float-rule title "Control Panel", , Hide
; Always float Task Manager, matching on class
; Run, komorebic.exe float-rule class 任务管理器, , Hide
; Always float Wally, matching on executable name
Run, komorebic.exe float-rule exe Wally.exe, , Hide
Run, komorebic.exe float-rule exe wincompose.exe, , Hide
; Always float Calculator app, matching on window title
Run, komorebic.exe float-rule title Calculator, , Hide
Run, komorebic.exe float-rule exe 1Password.exe, , Hide

Run, komorebic.exe float-rule exe OneCommander.exe, , Hide
Run, komorebic.exe float-rule title uTools, , Hide
Run, komorebic.exe float-rule title MobaXterm, , Hide
Run, komorebic.exe float-rule title "Clash for Windows", , Hide
Run, komorebic.exe float-rule exe steamwebhelper.exe, , Hide
Run, komorebic.exe float-rule title "- LBX Stripper -", , Hide
Run, komorebic.exe float-rule exe ColorPickerUI.exe, , Hide

; Always manage forcibly these applications that don't automatically get picked up by komorebi
; Run, komorebic.exe manage-rule exe TIM.exe, , Hide
; Run, komorebic.exe manage-rule title 微信测试版 , Hide

; Identify applications that close to the tray
Run, komorebic.exe identify-tray-application exe Discord.exe, , Hide
Run, komorebic.exe identify-tray-application exe OneCommander.exe, , Hide
Run, komorebic.exe identify-tray-application exe WeChat.exe, , Hide
Run, komorebic.exe identify-tray-application exe TIM.exe, , Hide
Run, komorebic.exe identify-tray-application title "Clash for Windows", , Hide
Run, komorebic.exe identify-tray-application title uTools, , Hide
Run, komorebic.exe identify-tray-application exe Telegram.exe, , Hide
Run, komorebic.exe identify-tray-application exe Spotify.exe, , Hide
Run, komorebic.exe identify-tray-application exe qbittorrent.exe, , Hide

; Identify applications that have overflowing borders
Run, komorebic.exe identify-border-overflow exe Discord.exe, , Hide

; Start komorebi
<#^s::
Run, komorebic.exe start, , Hide
return

; Exit komorebi
<#^q::
Run, komorebic.exe stop, , Hide
return

; Start yasb
<#^y::
Run, python C:\Users\ASUS\.local\share\yasb\src\main.py, , Hide
return

; Change the focused window, Win + Vim direction keys
<#h::
Run, komorebic.exe focus left, , Hide
return

<#j::
Run, komorebic.exe focus down, , Hide
return

<#k::
Run, komorebic.exe focus up, , Hide
return

<#l::
Run, komorebic.exe focus right, , Hide
return

; Move the focused window in a given direction, Win + Shift + Vim direction keys
<#+h::
Run, komorebic.exe move left, , Hide
return

<#+j::
Run, komorebic.exe move down, , Hide
return

<#+k::
Run, komorebic.exe move up, , Hide
return

<#+l::
Run, komorebic.exe move right, , Hide
return

; Stack the focused window in a given direction, Win + Shift + direction keys
<#+Left::
Run, komorebic.exe stack left, , Hide
return

<#+Down::
Run, komorebic.exe stack down, , Hide
return

<#+Up::
Run, komorebic.exe stack up, , Hide
return

<#+Right::
Run, komorebic.exe stack right, , Hide
return

<#]::
Run, komorebic.exe cycle-stack next, , Hide
return

<#[::
Run, komorebic.exe cycle-stack previous, , Hide
return

; Unstack the focused window, Win + Shift + D
<#+d::
Run, komorebic.exe unstack, , Hide
return

; Promote the focused window to the top of the tree, Win + Shift + Enter
<#+Enter::
Run, komorebic.exe promote, , Hide
return

; Switch to an equal-width, max-height column layout on the main workspace, Win + C
<#c::
Run, komorebic.exe workspace-layout 0 0 columns, , Hide
return

; Switch to the default bsp tiling layout on the main workspace, Win + Shift + T
<#t::
Run, komorebic.exe workspace-layout 0 0 bsp, , Hide
return

; Toggle the Monocle layout for the focused window, Win + Shift + F
<#-::
Run, komorebic.exe toggle-monocle, , Hide
return

; Toggle native maximize for the focused window, Win + Shift + =
<#=::
Run, komorebic.exe toggle-maximize, , Hide
return

; Flip horizontally, Win + X
<#x::
Run, komorebic.exe flip-layout horizontal, , Hide
return

; Flip vertically, Win + Y
<#y::
Run, komorebic.exe flip-layout vertical, , Hide
return

; Force a retile if things get janky, Win + R
<#r::
Run, komorebic.exe retile, , Hide
return

; Float the focused window, Win + F
<#f::
Run, komorebic.exe toggle-float, , Hide
return

; Reload ~/komorebi.ahk, Win + O
<#o::
Run, komorebic.exe reload-configuration, , Hide
return

; Pause responding to any window events or komorebic commands, Win + P
<#p::
Run, komorebic.exe toggle-pause, , Hide
return

; Switch to workspace
<#1::
Send !
Run, komorebic.exe focus-workspace 0, , Hide
return

<#2::
Send !
Run, komorebic.exe focus-workspace 1, , Hide
return

<#3::
Send !
Run, komorebic.exe focus-workspace 2, , Hide
return

<#4::
Send !
Run, komorebic.exe focus-workspace 3, , Hide
return

<#5::
Send !
Run, komorebic.exe focus-workspace 4, , Hide
return

<#u::
Run, komorebic.exe cycle-workspace previous, , Hide
return

<#i::
Run, komorebic.exe cycle-workspace next, , Hide

; Send window to workspace
<#+1::
Run, komorebic.exe send-to-workspace 0, , Hide
return

<#+2::
Run, komorebic.exe send-to-workspace 1, , Hide
return

<#+3::
Run, komorebic.exe send-to-workspace 2, , Hide
return

<#+4::
Run, komorebic.exe send-to-workspace 3, , Hide
return

<#+5::
Run, komorebic.exe send-to-workspace 4, , Hide
return

; Resize windows
<#Left::
Run, komorebic.exe resize-axis horizontal decrease, , Hide
return

<#Right::
Run, komorebic.exe resize-axis horizontal increase, , Hide
return

<#Down::
Run, komorebic.exe resize-axis vertical decrease, , Hide
return

<#Up::
Run, komorebic.exe resize-axis vertical increase, , Hide
return

; Monitor
<#;::
Run, komorebic.exe cycle-monitor next, , Hide
return

<#m::
Run, komorebic.exe move-to-monitor 1, , Hide
return

<#,::
Run, komorebic.exe move-to-monitor 0, , Hide
return

; window utils

<#q::
WinClose, A
return

<#Enter::
Run, wt.exe
return
