<%
' this file contains any ASP classic general functions we may need 

' Will return present file's name
public function GetFileName()
    dim files, url, segments

    'get then current url from the server variables
    url = Request.ServerVariables("path_info")

    segments = split(url,"/")

    'read the last segment
    url = segments(ubound(segments))
    GetFileName = url
end function 

' Will return present file's name without extension
public function GetFileNameSansExtension()
	dim fileName
	fileName = GetFileName()
	fileName = Left(fileName,InStrRev(fileName,".") - 1)
	GetFileNameSansExtension = fileName
end function

' returns TRUE if filesystem object exists, FALSE otherwise
' uses virtual paths
public function DoesFileExist(fileName)
	dim fs, dir, file
	pathTranslated = Request.ServerVariables("PATH_TRANSLATED")
	path = left(pathTranslated,instrRev(pathTranslated,"\") - 1)
	set fs=Server.CreateObject("Scripting.FileSystemObject")

	if fs.FileExists(path + "\" + fileName) then
		DoesFileExist = TRUE	  
	else
	  DoesFileExist = FALSE	
	end if

end function
%>