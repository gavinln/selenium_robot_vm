# Installs the selenium standalone jar
class selenium {
    $JAR_SELENIUM = "selenium-server-standalone-2.32.0.jar"
    $URL_SELENIUM = "http://selenium.googlecode.com/files/$JAR_SELENIUM"
    $DIR_SELENIUM = "$PROJ_DIR/vm/selenium"
    case $operatingsystem {
        ubuntu: {
            file { "$DIR_SELENIUM":
                ensure => "directory",
            }
            exec { "download_selenium_standalone":
                command => "curl -o $DIR_SELENIUM/$JAR_SELENIUM $URL_SELENIUM",
                unless  => "test -f $DIR_SELENIUM/$JAR_SELENIUM",
                require => File["$DIR_SELENIUM"]
            }
        }
    }
}
