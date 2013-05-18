# You can add custom puppet manifests for your app here.
class custom {
    $SELENIUM_JAR = "selenium-server-standalone-2.32.0.jar"
    $SELENIUM_URL = "http://selenium.googlecode.com/files/$SELENIUM_JAR"
    exec { "download_selenium_standalone":
        command => "curl -o $PROJ_DIR/vm/selenium/$SELENIUM_JAR $SELENIUM_URL",
        unless  => "test -f $PROJ_DIR/vm/selenium/$SELENIUM_JAR",
    }
}
