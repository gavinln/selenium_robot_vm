To run selenium tests you need to start the selenium hub and node.

To start the selenium hub which runs in an Ubuntu Virtualbox VM
1. Start the VM
vagrant up

2. In the root directory connect to the VM
vagrant ssh

3. Start the Selenium hub and tmux
/vagrant/vm/tmux_selenium.sh

4. Verfiy the grid is started by opening the browser
Go to http://localhost:4444/

5. From outside the VM start the Selenium node ("INFO - Done: /status" is displayed)
vm\start_node.bat

6. In the VM in /vagrant/selenium diretory run the selenium tests
pybot tests/cnn_home.txt

7. The /vagrant/selenium/report.html has the test results

8. To exit type "exit" or Ctrl+C


# supporting xvfb
# Install
sudo apt-get install firefox
sudo apt-get install xvfb

List of jars
guava-14.0.jar
httpclient-4.2.1.jar
httpcore-4.2.1.jar
json-20080701.jar
selenium-server-2.33.0.jar


