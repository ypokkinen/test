    # To encrypt a directory:
    
    sourcedir="/home/bozo/testfiles"
    encrfile="encr-dir.tar.gz"
    password=my_secret_password
    
    tar czvf - "$sourcedir" |
    openssl des3 -salt -out "$encrfile" -pass pass:"$password"
    #       ^^^^   Uses des3 encryption.
    # Writes encrypted file "encr-dir.tar.gz" in current working directory.
   
    # To decrypt the resulting tarball:
    openssl des3 -d -salt -in "$encrfile" -pass pass:"$password" |
    tar -xzv
    # Decrypts and unpacks into current working directory.
