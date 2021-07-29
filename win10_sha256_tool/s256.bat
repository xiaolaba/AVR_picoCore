:: show sha256 of input file
:: drag & drop your input file to this s256.bat

::certutil.exe -hashfile file_name SHA256

certutil.exe -hashfile %1 SHA256 > %1_sha256.txt