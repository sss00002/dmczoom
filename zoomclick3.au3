#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------
#include <MsgBoxConstants.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>

Opt("WinTitleMatchMode", 3)
Opt("PixelCoordMode", 2)
Opt("MouseCoordMode", 2)


;81672379802 68/2
;82032093423 od/1
;86762306389 da/1
;83538321407 d media /1
;84741376027 sathucon mai
;83274995767 ongpratan
;https://dmczoom.herokuapp.com/index.html
; Script Start - Add your code below here


$k = 0
$w1 = "[TITLE:DMC Zoom Online - Google Chrome; CLASS:Chrome_WidgetWin_1]"
$w2 = "[TITLE:DMC Zoom Online - Profile 1 - Microsoft​ Edge; CLASS:Chrome_WidgetWin_1]"
$w3 = "[TITLE:งานบุญ 2564 - Google Chrome; CLASS:Chrome_WidgetWin_1]"
$w4 = "[TITLE:งานบุญ 2564 and 1 more page - Profile 1 - Microsoft​ Edge; CLASS:Chrome_WidgetWin_1]"
$w5 = "[TITLE:DMC Zoom Online - [InPrivate] - Microsoft​ Edge; CLASS:Chrome_WidgetWin_1]"

$brw = "edge"
;$brw = "chr"

Global $numroom = 4
Global $roomid[4]
$roomid[0] = "82032093423"
$roomid[1] = "82032093423"
$roomid[2] = "82032093423"
$roomid[3] = "82032093423"


HotKeySet("#/", "Terminate")

   Local $personArray = FileReadToArray("listname_sso.txt")
   Local $iLineCount = @extended

   If @error Then
	  $person = "lookin"
   Else
	  $person = ""
   EndIf


; If @error Then
   ;     MsgBox($MB_SYSTEMMODAL, "", "There was an error reading the file. @error: " & @error) ; An error occurred reading the current script file.
   ; Else
   ;    For $i = 0 To $iLineCount - 1 ; Loop through the array. UBound($aArray) can also be used.
   ;        MsgBox($MB_SYSTEMMODAL, "", $aArray[$i]) ; Display the contents of the array.
   ;    Next
   ; EndIf

   Global $prefix[6]
   $prefix[0] = "สสอ "
   $prefix[1] = "ฝ่ายดิจิฯ "
   $prefix[2] = "สสอ "
   $prefix[3] = "ฝ่ายดิจิฯ "
   $prefix[4] = "สสอ "
   $prefix[5] = "สสอ "
   $nprefix = 6

   Global $suffix[8]
   $suffix[0] = " iphone"
   $suffix[1] = " ipad"
   $suffix[2] = " samsung"
   $suffix[3] = " oppo"
   $suffix[4] = " mi"
   $suffix[5] = " 072"
   $suffix[6] = " no2"
   $suffix[7] = " vivo"
   $nsuffix = 8

While $k < 4000
   activewin($w1)

   if $person <> "" Then
	  ;to start 1
	  $k = $k + 1
	  $input = $person & $k
	  putname_enter($input)

	  ;click tab1 to start 2
	  $k = $k + 1
	  $input = $person & $k
	  putname_enter($input)

	  ;click tab1 to start 3
	  $k = $k + 1
	  $input = $person & $k
	  putname_enter($input)

   Else

	  ;to start 1
	  ;$j = Mod ( $k  ,$iLineCount )
	  ;$input = $personArray[$j]
	  $input = $personArray[Random(0,$iLineCount-1,1)]
	  $input = $prefix[Random(0,$nprefix-1,1)] & $input &  $suffix[Random(0,$nsuffix-1,1)]
	  putname_enter($input)
	  $k = $k + 1

	  ;click tab1 to start 2

	  $j = Mod ( $k  ,$iLineCount )
	  ;$input = $personArray[$j]
	  $input = $personArray[Random(0,$iLineCount-1,1)]
	  $input = $prefix[Random(0,$nprefix-1,1)] & $input &  $suffix[Random(0,$nsuffix-1,1)]
	  putname_enter($input)
	  $k = $k + 1

	  ;click tab1 to start 3

	  $j = Mod ( $k  ,$iLineCount )
	  ;$input = $personArray[$j]
	  $input = $personArray[Random(0,$iLineCount-1,1)]
	  $input = $prefix[Random(0,$nprefix-1,1)] & $input &  $suffix[Random(0,$nsuffix-1,1)]
	  putname_enter($input)
	  $k = $k + 1

   EndIf



   sleep(5*60*1000)

   ;click tab3 for close
    MouseClick("left",467, 26)
   sleep(1000)
   ;leave
   clickleave()

   ;click tab2
    MouseClick("left",423, 29)
   ;leave
   clickleave()


   ;click tab1
    MouseClick("left",323, 26)
   ;leave
   clickleave()


   ;1297, 701
   sleep(5*1000)


   ;don't do any at time
;   while  @HOUR >= 17 and @HOUR < 21
;	  sleep(10*1000)
;	  ;MsgBox($MB_SYSTEMMODAL, "", "The hex color is: " )

;   WEnd

WEnd

func activewin($t)
   WinActivate ($t)
   WinActive($t)
   WinMove ( $t, "", 0, 0 , 800, 600 )

EndFunc

Func putname_enter($name)
   MouseClick("left",43, 27)
   sleep(1000)
   ;clickname
   Select
   Case $brw = "edge"
	  MouseClick("left",59, 233)
   Case $brw = "chr"
	  MouseClick("left",59, 233)
   EndSelect
   Send("^a")
   sleep(1000)
   send( $name)


   ;click room
   Select
   Case $brw = "edge"
	  MouseClick("left",75, 323)
   Case $brw = "chr"
	  MouseClick("left",75, 323)
   EndSelect
   Send("^a")
   sleep(1000)
   $room = $roomid[Random(0,$numroom-1,1)]
   send( $room)

   $iColor = PixelGetColor(45, 382)
   ;MsgBox($MB_SYSTEMMODAL, "", "The hex color is: " & Hex($iColor, 6))
   ;click enter
   Select
   Case $brw = "edge"
	  MouseClick("left",45, 382)
   Case $brw = "chr"
	  MouseClick("left",45, 382)
   EndSelect


   sleep(4000)
EndFunc


func clickleave()
   sleep(1000)
   MouseMove(734, 570)
  ; $iColor = PixelGetColor(1266, 705)

   ;MsgBox($MB_SYSTEMMODAL, "", "The hex color is: " & Hex($iColor, 6))
   ;if PixelGetColor(1266, 705) = 0x2f2b29 Then

  ; EndIf
	  MouseClick("left",734, 570)
	  sleep(2*1000)
	  MouseClick("left" ,583, 510 )
	  sleep(4*1000)

   Send("^w")

EndFunc

Func Terminate()
    Exit
EndFunc   ;==>Terminate
