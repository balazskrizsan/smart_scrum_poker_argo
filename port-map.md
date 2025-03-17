# Port mapping

| App components | DEV   | LOCAL-PROD                                         | UAT   | PROD  |
|----------------|-------|----------------------------------------------------|-------|-------|
| **Backend**    | :3000 | :3001                                              | :3002 | :3003 |
|                |       | api--smart-scrum-poker.localhost.balazskrizsan.com |       |       |
| **Frontend**   | :3010 | :3011                                              | :3012 | :3013 |
|                |       | smart-scrum-poker.localhost.balazskrizsan.com      |       |       |
| **PostgreSQL** | :3020 | :3021                                              | :3022 | :3023 |
| **Redis**      | :3030 | :3031                                              | :3032 | :3033 |

| 3rd party components   | Local                                                             | Aruba |
|------------------------|-------------------------------------------------------------------|-------|
| **ArgoCD**             | :4000                                                             | :4001 |
|                        | argocd--smart-scrum-poker.localhost.balazskrizsan.com             |       |
| **pgAdmin**            | :4100                                                             | :4101 |
|                        | pgadmin--smart-scrum-poker.localhost.balazskrizsan.com                               |       |
| **Kibana**             | :4200                                                             | :4201 |
|                        | kibana--smart-scrum-poker.localhost.balazskrizsan.com             |       |
| **Elasticsearch**      | :4300                                                             | :4301 |
| **Logstash**           | :4400                                                             | :4401 |
| **Minikube-dashboard** | -                                                                 |       |
|                        | minikube-dashboard--smart-scrum-poker.localhost.balazskrizsan.com |       |
