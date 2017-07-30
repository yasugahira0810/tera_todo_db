#!/bin/sh

CP_FROM="todo/"
CP_TO="todo_db/"

array1=("src/main/java/todo/app/welcome/HelloController.java" \
        "src/main/webapp/WEB-INF/views/welcome/home.jsp" \
        "src/main/java/todo/domain/model/Todo.java" \
        "src/main/java/todo/domain/repository/todo/TodoRepository.java" \
        "src/main/java/todo/domain/service/todo/TodoService.java" \
        "src/main/java/todo/domain/service/todo/TodoServiceImpl.java" \
        "src/main/java/todo/app/todo/TodoController.java" \
        "src/main/java/todo/app/todo/TodoForm.java" \
        "src/main/webapp/WEB-INF/views/todo/list.jsp" \
        "src/main/webapp/resources/app/css/styles.css"
)

array2=("src/main/java/todo/app/welcome/" \
        "src/main/webapp/WEB-INF/views/welcome/" \
        "src/main/java/todo/domain/model/" \
        "src/main/java/todo/domain/repository/todo/" \
        "src/main/java/todo/domain/service/todo/" \
        "src/main/java/todo/domain/service/todo/" \
        "src/main/java/todo/app/todo/" \
        "src/main/java/todo/app/todo/" \
        "src/main/webapp/WEB-INF/views/todo/" \
        "src/main/webapp/resources/app/css/"
)

mkdir -p todo_db/src/main/java/todo/domain/repository/todo
mkdir -p todo_db/src/main/java/todo/domain/service/todo
mkdir -p todo_db/src/main/java/todo/app/todo
mkdir -p todo_db/src/main/webapp/WEB-INF/views/todo

for (( i=0; i < ${#array1[@]}; i++)) {
  #echo "cp -a ${CP_FROM}${array1[i]} ${CP_TO}${array2[i]}"
  cp ${CP_FROM}${array1[i]} ${CP_TO}${array2[i]}
}
