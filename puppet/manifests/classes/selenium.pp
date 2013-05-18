# Installs the selenium standalone jar
class selenium {
    $JAR_SELENIUM = "selenium-server-standalone-2.32.0.jar"
    $URL_SELENIUM = "http://selenium.googlecode.com/files/$JAR_SELENIUM"
    $DIR_JARS = "$PROJ_DIR/vm/jars"
    case $operatingsystem {
        ubuntu: {
            file { "$DIR_JARS":
                ensure => "directory",
            }
            exec { "download_selenium_standalone":
                command => "curl -o $DIR_JARS/$JAR_SELENIUM $URL_SELENIUM",
                unless  => "test -f $DIR_JARS/$JAR_SELENIUM",
                require => File["$DIR_JARS"]
            }
        }
    }
}
