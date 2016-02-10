== Prepare image ==

    sudo docker build -t testimg .

== Run tests ==

    ./test_machine.sh machine_name

== Install test in docker ==

    sudo docker run --rm -v $PWD:/install testimg bash -c "cd install; ./install.sh"
