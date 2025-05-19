# Port mapping

| App components | DEV   | DEVTEST | LOCAL-PROD                                         | UAT                                   | PROD                                      |
|----------------|-------|---------|----------------------------------------------------|---------------------------------------|-------------------------------------------|
| **Backend**    | :3000 | 3004    | :3001                                              | :3002                                 | :3003                                     |
|                |       |         | api--smart-scrum-poker.localhost.balazskrizsan.com | api.uat.smartscrumpoker.com           | api.smartscrumpoker.com                   |
|                |
| **Frontend**   | :3010 |         | :3011                                              | :3012                                 | :3013                                     |
|                |       |         | smart-scrum-poker.localhost.balazskrizsan.com      | uat.smartscrumpoker.balazskrizsan.com | api.uat.smartscrumpoker.balazskrizsan.com |
|                |
| **PSQL**       | :3020 |         | :3021                                              | :3022                                 | :3023                                     |
|                |
| **Redis**      | :3030 |         | :3031                                              | :3032                                 | :3033                                     |
|                |
| **AI Backend** | :3040 | :3044   | :3041                                              | :3042                                 | :3043                                     |
|                |
| **AI Psql**    | :3050 | :3054   | :3051                                              | :3052                                 | :3053                                     |

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
