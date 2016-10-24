FROM dogtail9/vsts-agent:windows-grunt-v0.1

# ENV JAVA_DOWNLOAD_URL http://javadl.oracle.com/webapps/download/AutoDL?BundleId=210185
# 
# RUN powershell -NoProfile -Command \
#     $ErrorActionPreference = 'Stop'; \
#     Invoke-WebRequest %JAVA_DOWNLOAD_URL% -Outfile jreinstaller.exe ; \
#     Start-Process -filepath jreinstaller.exe -passthru -wait -argumentlist "/s,INSTALLDIR=c:\Java\jre1.8.0_91" ; \
#     Remove-Item -Force jreinstaller.exe
# 
# ENV JAVA_HOME c:\\Java\\jre1.8.0_91
# ENV Java c:\\Java\\jre1.8.0_91
# 
# RUN setx /M PATH "%PATH%;%JAVA_HOME%\bin"

ENV JAVA_JDK_DOWNLOAD_URL http://download.oracle.com/otn-pub/java/jdk/8u112-b15/jdk-8u112-windows-x64.exe

RUN powershell -NoProfile -Command\
    $client = new-object System.Net.WebClient ; \ 
    $cookie = 'oraclelicense=accept-securebackup-cookie' ; \
    $client.Headers.Add([System.Net.HttpRequestHeader]::Cookie, $cookie) ; \ 
    $client.downloadFile('http://download.oracle.com/otn-pub/java/jdk/8u112-b15/jdk-8u112-windows-x64.exe', 'c:\agent\jdk-8u112-windows-x64.exe') ; \
    Start-Process -filepath jdk-8u112-windows-x64.exe -passthru -wait -argumentlist "/s" ; \
    Remove-Item -Force jdk-8u112-windows-x64.exe

ENV JAVA_HOME c:\\Program Files\\java\\jre1.8.0_112
ENV java c:\\Program Files\\java\\jre1.8.0_112
ENV JDK C:\\Program files\\java\\jdk1.8.0_112

RUN setx /M PATH "%PATH%;%JAVA_HOME%\bin"