# Installs the selenium & robot jars
class robot_selenium {
    $JAR_SELENIUM = "selenium-server-standalone-2.32.0.jar"
    $URL_SELENIUM = "http://selenium.googlecode.com/files/$JAR_SELENIUM"

    $JAR_ROBOT = "robotframework-2.7.7.jar"
    $URL_ROBOT = "http://robotframework.googlecode.com/files/$JAR_ROBOT"

    $VERSION_RS = "1.2.0.1"
    $NAME_RS = "robotframework-selenium2library-java"
    $JAR_RS = "$NAME_RS-$VERSION_RS.jar"
    $URL_RS = "http://repo1.maven.org/maven2/com/github/markusbernhardt/$NAME_RS/$VERSION_RS/$JAR_RS"

    $DIR_JARS = "$PROJ_DIR/vm/jars"
    case $operatingsystem {
        ubuntu: {
            file { "$DIR_JARS":
                ensure => "directory",
            }
            exec { "download_selenium":
                command => "curl -o $DIR_JARS/$JAR_SELENIUM $URL_SELENIUM",
                unless  => "test -f $DIR_JARS/$JAR_SELENIUM",
                require => File["$DIR_JARS"]
            }
            exec { "download_robot":
                command => "curl -o $DIR_JARS/$JAR_ROBOT $URL_ROBOT",
                unless  => "test -f $DIR_JARS/$JAR_ROBOT",
                require => File["$DIR_JARS"]
            }
            exec { "download_robot_selenium":
                command => "curl -o $DIR_JARS/$JAR_RS $URL_RS",
                unless  => "test -f $DIR_JARS/$JAR_RS",
                require => File["$DIR_JARS"]
            }
        }
    }
}
