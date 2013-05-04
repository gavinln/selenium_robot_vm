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

6. Within the VM run the Selenium tests
pybot tests/cnn_home.txt

7. In the project root outside the VM start the node
python vm\start_node.py

8. In the VM in /vagrant/selenium diretory run the selenium tests
pybot tests/cnn_home.txt

9. The /vagrant/selenium/report.html has the test results

10. To exit type "exit" or Ctrl+C



