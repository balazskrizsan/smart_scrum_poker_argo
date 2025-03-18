# Port mapping

| App components | DEV   | LOCAL-PROD                                         | UAT                                         | PROD                                    |
|----------------|-------|----------------------------------------------------|---------------------------------------------|-----------------------------------------|
| **Backend**    | :3000 | :3001                                              | :3002                                       | :3003                                   |
|                |       | api--smart-scrum-poker.localhost.balazskrizsan.com | smart-scrum-poker.uat.balazskrizsan.com     | smart-scrum-poker.balazskrizsan.com     |
|                |
| **Frontend**   | :3010 | :3011                                              | :3012                                       | :3013                                   |
|                |       | smart-scrum-poker.localhost.balazskrizsan.com      | api.smart-scrum-poker.uat.balazskrizsan.com | api.smart-scrum-poker.balazskrizsan.com |                                     |
|                |
| **PostgreSQL** | :3020 | :3021                                              | :3022                                       | :3023                                   |
|                |
| **Redis**      | :3030 | :3031                                              | :3032                                       | :3033                                   |

| 3rd party components   | Local                                                             | Aruba                                                  |
|------------------------|-------------------------------------------------------------------|--------------------------------------------------------|
| **ArgoCD**             | argocd--smart-scrum-poker.localhost.balazskrizsan.com             | argocd.smart-scrum-poker.balazskrizsan.com             |
|                        |
| **pgAdmin**            | :4000                                                             | :4001                                                  |
|                        | pgadmin--smart-scrum-poker.localhost.balazskrizsan.com            | pgadmin.smart-scrum-poker.balazskrizsan.com            |
|                        |
| **Kibana**             | :4010                                                             | :4011                                                  |
|                        | kibana--smart-scrum-poker.localhost.balazskrizsan.com             | kibana.smart-scrum-poker.balazskrizsan.com             |
|                        |
| **Elasticsearch**      | :4020                                                             | :4021                                                  |
|                        |
| **Logstash**           | :4030                                                             | :4031                                                  |
|                        |
| **Minikube-dashboard** | minikube-dashboard--smart-scrum-poker.localhost.balazskrizsan.com | minikube-dashboard.smart-scrum-poker.balazskrizsan.com |
