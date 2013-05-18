# Install robot standalone jar containing jython
class robot_jar {
    $JAR_ROBOT = "robotframework-2.7.7.jar"
    $URL_ROBOT = "http://robotframework.googlecode.com/files/$JAR_ROBOT"
    $DIR_ROBOT = "$PROJ_DIR/vm/selenium"
    case $operatingsystem {
        ubuntu: {
            file { "$PROJ_DIR/vm/robot":
                ensure => "directory",
            }
            exec { "download_robot_standalone":
                command => "curl -o $PROJ_DIR/vm/robot/$JAR_ROBOT $URL_ROBOT",
                unless  => "test -f $PROJ_DIR/vm/robot/$JAR_ROBOT",
                require => File["$PROJ_DIR/vm/robot"]
            }
        }
    }
}


#curl -o /vagrant/vm/robot/robotframework-2.7.7.jar http://robotframework.googlecode.com/files/robotframework-2.7.7.jar
