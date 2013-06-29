# download without installing
# pip install -d pip_download cmd2
# pip install -d pip_download pyparsing==1.5.7

# expand files
# tar -x -v -f pip_download/cmd2-0.6.5.1.tar.gz -C pip_download
# tar -x -v -f pip_download/pyparsing-2.0.0.tar.gz -C pip_download
# tar -x -v -f pip_download/pyparsing-1.5.7.tar.gz -C pip_download

# add to the path
JYTHONPATH=$PIP_DIR/cmd2-0.6.5.1:$PIP_DIR/pyparsing-1.5.7
