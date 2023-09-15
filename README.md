## Backend:
The backend provides the necessary API endpoints to serve the associated frontend, ensuring seamless data flow and CRUD operations. The backend connects to a psql database on render and manages columns, tasks, users, and the relationships between them. It can be run as a docker container and it is currently running as such on https://kanban-backend-j6tc.onrender.com/ . 


#### The backend has the following models:

-   Task:
    -   id //uuid
    -   name
    -   assigned //array of assigned user ids to complete the task
    -   description //description of the assignment
    -   importance //integer from 0 to 2
-   Column:
    -   id
    -   task_ids //array of task ids that are attached to column
    -   name
-   User:
    -   name
    -   id

Its primary components include:

- requirements.txt: Lists all the dependencies required for the backend application.
- run.py: The main entry point to run the backend server.


Frontend repo location:
https://github.com/Tupsu-jy/kanban-exercise
