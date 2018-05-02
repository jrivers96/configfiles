alias poc="cd /development/POCmaterial/GSK"
alias rmalldocker="docker rmi $(docker images -f "dangling=true" -q)"


alias builddocker="docker build -t viz_server ."
alias rundocker="docker run --net="host" -d --name viz_server_instance -v /SciDBFiles/web:/app/static/textures/dynamic -p 8005:8005 viz_server"
alias sshdocker="docker exec -t -i viz_server_instance /bin/bash"
alias stopdocker="docker stop viz_server_instance"
alias rmdocker="docker rm viz_server_instance"

alias runjupyter="docker run -d -p 8888:8888 jupyter/scipy-notebook start-notebook.sh --NotebookApp.token=''"
