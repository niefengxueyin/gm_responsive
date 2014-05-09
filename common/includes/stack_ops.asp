<%

'@file stackOps.asp
'@source http://gallery.technet.microsoft.com/scriptcenter/c05af93f-1213-4238-9c96-6218141bf66d
'@modifications Zoobiscuit


'==================================================================== 
'getUbound(arr) 
'  returns the Ubound of arr, -1 if arr has no elements 
'  USED BY ALL OTHER SUBS AND FUNCTIONS IN THIS SCRIPT 
'==================================================================== 
 function getUbound(arr) 
   dim uba 
   uba = -1 
     on error resume next 
     uba = ubound(arr) 
   getUbound = uba 
 end function 
 
'==================================================================== 
'push arr, var 
'  adds var to arr 
'==================================================================== 
 sub push(arr, var) 
   dim uba 
   uba = getUBound(arr) 
   redim preserve arr(uba+1) 
   arr(uba+1) = var 
 end sub 
 
'==================================================================== 
'pop(arr) 
'  returns the last element in arr and removes it from arr 
'  returns NULL if arr has no elements 
'==================================================================== 
 function pop(arr) 
   dim uba, var 
   uba = getUbound(arr) 
   if uba < 0 then 
     var = NULL 
   else 
     var = arr(uba) 
     redim preserve arr(uba-1) 
   end if 
   pop = var 
 end function 
 
'==================================================================== 
'top(arr) 
'  returns the last element in arr but does not remove it from arr 
'  returns NULL if arr has no elements 
'==================================================================== 
 function top(arr) 
   dim uba, var 
   uba = getUbound(arr) 
   if uba < 0 then 
     var = NULL 
   else 
     var = arr(uba) 
   end if 
   top = var 
 end function 
 
'==================================================================== 
'pushObj arr, obj 
'  adds obj to arr 
'==================================================================== 
 sub pushObj(arr, obj) 
   dim uba 
   uba = getUBound(arr) 
   redim preserve arr(uba+1) 
   Set arr(uba+1) = obj 
 end sub 
 
'==================================================================== 
'popObj(arr) 
'  returns the last element in arr and removes it from arr 
'  returns Nothing if arr has no elements 
'==================================================================== 
 function popObj(arr) 
   dim uba, obj 
   uba = getUbound(arr) 
   if uba < 0 then 
     set obj = Nothing 
   else 
     set obj = arr(uba) 
     redim preserve arr(uba-1) 
   end if 
   set popObj = obj 
 end function 
 
'==================================================================== 
'topObj(arr) 
'  returns the last element in arr but does not remove it from arr 
'  returns Nothing if arr has no elements 
'==================================================================== 
 function topObj(arr) 
   dim uba, obj 
   uba = getUbound(arr) 
   if uba < 0 then 
     set obj = Nothing 
   else 
     set obj = arr(uba) 
   end if 
   set topObj = obj 
 end function 

 %>