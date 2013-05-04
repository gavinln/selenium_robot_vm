# You can add custom puppet manifests for your app here.
class custom {
    $SELENIUM_JAR = "selenium-server-standalone-2.32.0.jar"
    $SELENIUM_URL = "http://selenium.googlecode.com/files/$SELENIUM_JAR"
    exec { "download_selenium_standalone":
        command => "curl -o $PROJ_DIR/vm/selenium/$SELENIUM_JAR $SELENIUM_URL",
        unless  => "test -f $PROJ_DIR/vm/selenium/$SELENIUM_JAR",
    }
#	No need to create a script as one will be saved in git
#    file { "$HOME_DIR/start_hub.sh":
#        content => "#!/bin/bash\n\njava -jar $SELENIUM_JAR -role hub\n",
#        ensure => "present",
#        mode => "0755",
#        require => Exec["download_selenium_standalone"],
#    }
}
