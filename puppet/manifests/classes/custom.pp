# You can add custom puppet manifests for your app here.
class custom {
    $selenium_jar = "selenium-server-standalone-2.32.0.jar"
    $selenium_url = "http://selenium.googlecode.com/files/$selenium_jar"
    exec { "download_selenium_standalone":
        command => "curl -o $HOME_DIR/$selenium_jar $selenium_url",
        unless  => "test -f $HOME_DIR/$selenium_jar",
    }
}
