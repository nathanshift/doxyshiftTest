cd ../app
whoami
          
FILE= $REPO_NAME/${{inputs.Doxyfile}}
chmod 777 $REPO_NAME
if [ ! -f $FILE ]; then 
    echo "the provided path $FILE does not exist. Verify that you've provided the right path" 
    echo "Creating Default Doxyfile with provided or default settings."
    doxygen -g Doxyfile
            
 #exit 1 
else
     echo "Found ${FILE}!"
 fi