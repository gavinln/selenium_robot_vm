selenium_robot_vm
=================

* Source code - [Github][1]
* Author - Gavin Noronha - <gavinln@hotmail.com>

[1]: https://github.com/gavinln/selenium_robot_vm.git

About
-----

This project provides a [Ubuntu (12.0)][2] [Vagrant][3] Virtual Machine (VM) with [Selenium][4] and the [Robot Framework][5] for web browser based tests.

There are [Puppet][6] scripts that automatically install the software when the VM is started.

There are scripts that start the [Selenium hub][7] and nodes

[2]: http://releases.ubuntu.com/precise/
[3]: http://www.vagrantup.com/
[4]: http://seleniumhq.org/ 
[5]: http://robotframework.org/
[6]: http://puppetlabs.com/
[7]: http://code.google.com/p/selenium/wiki/Grid2#Quick_Start

Running
-------

1. To start the virtual machine(VM) type

    ```
    vagrant up
    ```

2. In the root directory connect to the VM

    ```bash
    vagrant ssh
    ```

3. Start the Selenium hub and [tmux][8]

    ```bash
    /vagrant/vm/tmux_selenium.sh
    ```

4. Verfiy the grid is started by opening the browser. Go to http://localhost:4444/

5. From outside the VM start the Selenium node ("INFO - Done: /status" is displayed)

    ```bat
    REM on windows
    vm\start_node.bat
    ```

    ```bash
    # on Linux
    vm/start_node.sh
    ```

6. Within the VM run the Selenium tests in the /vagrant/selenium directory

    ```bash
    pybot tests/cnn_home.txt
    ```

7. The [Firefox][9] browser outside the VM will start and run the tests

7. The /vagrant/selenium/report.html has the test results

8. To exit type "exit" or Ctrl+C

[8]: http://tmux.sourceforge.net/
[9]: http://www.mozilla.org/en-US/firefox/fx/#desktop

Requirements
------------

The following software needs to be installed to get the software from github and run Vagrant. The Git environment also provides an [SSH client][10] for Windows.

* [Oracle VM VirtualBox][11]
* [Vagrant][12]
* [Git][13]

[10]: http://en.wikipedia.org/wiki/Secure_Shell
[11]: https://www.virtualbox.org/
[12]: http://vagrantup.com/
[13]: http://git-scm.com/
