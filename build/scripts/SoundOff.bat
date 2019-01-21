@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  SoundOff startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and SOUND_OFF_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\SoundOff.jar;%APP_HOME%\lib\res;%APP_HOME%\lib\spark-core-2.7.2.jar;%APP_HOME%\lib\slf4j-simple-1.7.21.jar;%APP_HOME%\lib\heroku-maven-plugin-0.4.4.jar;%APP_HOME%\lib\freemarker-2.3.28.jar;%APP_HOME%\lib\slf4j-api-1.7.21.jar;%APP_HOME%\lib\jetty-webapp-9.4.8.v20171121.jar;%APP_HOME%\lib\websocket-server-9.4.8.v20171121.jar;%APP_HOME%\lib\jetty-servlet-9.4.8.v20171121.jar;%APP_HOME%\lib\jetty-security-9.4.8.v20171121.jar;%APP_HOME%\lib\jetty-server-9.4.8.v20171121.jar;%APP_HOME%\lib\websocket-servlet-9.4.8.v20171121.jar;%APP_HOME%\lib\heroku-deploy-0.4.4.jar;%APP_HOME%\lib\maven-dependency-plugin-2.4.jar;%APP_HOME%\lib\mojo-executor-1.5.2.jar;%APP_HOME%\lib\maven-common-artifact-filters-1.2.jar;%APP_HOME%\lib\maven-plugin-testing-harness-1.1.jar;%APP_HOME%\lib\maven-core-3.2.3.jar;%APP_HOME%\lib\maven-reporting-impl-2.0.5.jar;%APP_HOME%\lib\file-management-1.2.1.jar;%APP_HOME%\lib\maven-plugin-api-3.2.3.jar;%APP_HOME%\lib\maven-dependency-analyzer-1.2.jar;%APP_HOME%\lib\maven-dependency-tree-1.2.jar;%APP_HOME%\lib\maven-doxia-tools-1.0.2.jar;%APP_HOME%\lib\maven-project-2.0.9.jar;%APP_HOME%\lib\maven-shared-io-1.1.jar;%APP_HOME%\lib\maven-artifact-manager-2.0.9.jar;%APP_HOME%\lib\maven-artifact-3.2.3.jar;%APP_HOME%\lib\javax.servlet-api-3.1.0.jar;%APP_HOME%\lib\websocket-client-9.4.8.v20171121.jar;%APP_HOME%\lib\jetty-client-9.4.8.v20171121.jar;%APP_HOME%\lib\jetty-http-9.4.8.v20171121.jar;%APP_HOME%\lib\websocket-common-9.4.8.v20171121.jar;%APP_HOME%\lib\jetty-io-9.4.8.v20171121.jar;%APP_HOME%\lib\jetty-xml-9.4.8.v20171121.jar;%APP_HOME%\lib\websocket-api-9.4.8.v20171121.jar;%APP_HOME%\lib\jackson-databind-2.3.0.jar;%APP_HOME%\lib\jackson-core-2.3.0.jar;%APP_HOME%\lib\commons-compress-1.5.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\commons-lang3-3.3.2.jar;%APP_HOME%\lib\org.eclipse.jgit-3.6.2.201501210735-r.jar;%APP_HOME%\lib\httpclient-4.4.jar;%APP_HOME%\lib\maven-aether-provider-3.2.3.jar;%APP_HOME%\lib\maven-model-builder-3.2.3.jar;%APP_HOME%\lib\maven-profile-2.0.9.jar;%APP_HOME%\lib\maven-model-3.2.3.jar;%APP_HOME%\lib\org.eclipse.sisu.plexus-0.0.0.M5.jar;%APP_HOME%\lib\maven-settings-builder-3.2.3.jar;%APP_HOME%\lib\maven-settings-3.2.3.jar;%APP_HOME%\lib\maven-repository-metadata-3.2.3.jar;%APP_HOME%\lib\aether-impl-0.9.0.M2.jar;%APP_HOME%\lib\aether-util-0.9.0.M2.jar;%APP_HOME%\lib\aether-spi-0.9.0.M2.jar;%APP_HOME%\lib\aether-api-0.9.0.M2.jar;%APP_HOME%\lib\plexus-interpolation-1.19.jar;%APP_HOME%\lib\plexus-sec-dispatcher-1.3.jar;%APP_HOME%\lib\doxia-site-renderer-1.0.jar;%APP_HOME%\lib\plexus-archiver-2.0.jar;%APP_HOME%\lib\plexus-io-2.0.1.jar;%APP_HOME%\lib\maven-invoker-2.0.11.jar;%APP_HOME%\lib\maven-plugin-registry-2.0.9.jar;%APP_HOME%\lib\wagon-provider-api-1.0-beta-2.jar;%APP_HOME%\lib\doxia-module-apt-1.0.jar;%APP_HOME%\lib\doxia-module-fml-1.0.jar;%APP_HOME%\lib\doxia-module-xdoc-1.0.jar;%APP_HOME%\lib\doxia-module-xhtml-1.0.jar;%APP_HOME%\lib\doxia-core-1.0.jar;%APP_HOME%\lib\plexus-velocity-1.1.7.jar;%APP_HOME%\lib\plexus-container-default-1.0-alpha-30.jar;%APP_HOME%\lib\plexus-i18n-1.0-beta-7.jar;%APP_HOME%\lib\doxia-decoration-model-1.0.jar;%APP_HOME%\lib\plexus-utils-3.0.17.jar;%APP_HOME%\lib\plexus-classworlds-2.5.1.jar;%APP_HOME%\lib\plexus-component-annotations-1.5.5.jar;%APP_HOME%\lib\maven-reporting-api-3.0.jar;%APP_HOME%\lib\doxia-sink-api-1.0.jar;%APP_HOME%\lib\velocity-1.5.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\commons-validator-1.2.0.jar;%APP_HOME%\lib\commons-digester-1.6.jar;%APP_HOME%\lib\commons-collections-3.2.1.jar;%APP_HOME%\lib\classworlds-1.1.jar;%APP_HOME%\lib\jetty-util-9.4.8.v20171121.jar;%APP_HOME%\lib\jackson-annotations-2.3.0.jar;%APP_HOME%\lib\xz-1.2.jar;%APP_HOME%\lib\jsch-0.1.50.jar;%APP_HOME%\lib\JavaEWAH-0.7.9.jar;%APP_HOME%\lib\httpcore-4.4.jar;%APP_HOME%\lib\commons-beanutils-1.7.0.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\commons-codec-1.9.jar;%APP_HOME%\lib\cdi-api-1.0.jar;%APP_HOME%\lib\guava-10.0.1.jar;%APP_HOME%\lib\sisu-guice-3.1.0-no_aop.jar;%APP_HOME%\lib\org.eclipse.sisu.inject-0.0.0.M5.jar;%APP_HOME%\lib\plexus-cipher-1.4.jar;%APP_HOME%\lib\asm-3.0.jar;%APP_HOME%\lib\jsr250-api-1.0.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\jsr305-1.3.9.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\oro-2.0.8.jar;%APP_HOME%\lib\junit-3.8.1.jar

@rem Execute SoundOff
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %SOUND_OFF_OPTS%  -classpath "%CLASSPATH%" Main %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable SOUND_OFF_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%SOUND_OFF_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
