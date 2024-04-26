# LAB 3
## k8s-lab-ops-secu
### OPS
##### Description
La partie OPS nous permet de surveiller et de superviser nos applications avec les données de télémétriques: Metrics, Logs, et Trace
- Metrics: Données numériques pour connaitre les consommation cpu, mémoire, et les flux entrant et sortant sur nos applications
- Logs: Ces données permettent de comprendre le comportement des applications
- Traces: Avec les données de trace, nous pouvons tracer toutes les activities des utilisateur qui visitent notre applications, les actions qu'ils y sont effectuer, la date à la quelle l'actions a été effectuer, les services de notre application qu'ils sont sollicité, les information concernant l'utilisateurs etc.

##### Outils pour la surveillance OPS
- Opentelemetry: Le client utiliser sur notre applications pour collecter les métriques, les logs et les traces
- Prometheus: Le serveur utilisé pour stocker de façon persistante les métriques
- Loki: Le serveur utilisé pour stocké de façon persistante les logs
- Tempo: Le serveur utilisé pour stocké de façon persistante les traces
- Grafana: Une interface graphique pour visualiser et traiter les métriques, les traces et les logs.


### Sécurité
##### Description
La partie sécurité, nous permet de sécurisé notre application à plusieurs niveaux: gouvernance, sécurité des machines qui heberge notre applications, sécurité de l'application pendant l'excution, scan et detection des menance sur l'application durant l'execution

##### Outils pour la sécurité des applications
- Kyverno: Pour la compliance de l'application, avec une gouvernance bien définie
- Kube-bench: Pour garentir que la configuration du cluster respecte bien les standard définie sur CIS Benchmark
    1. Tests CIS-Benchmark kubernetes
- Sysdig: Pour Scan, detecter les menances sur les applications en cour d'éxecution 
    1. Detection des menance à l'execution
    2. Scan Host
    3. Scan image container à l'execution
- Neuvector: Solution pour la protection des container tout au long du cycle de vie
    1. Detection des menaces: Detecte les attaques comme DDOS, DNS sur le container
    2. DLP, Protection contre les Vols de données: Inspect le traffic réseau pour la prevention contre la perte de données sensible et détectez les attaques OWASP Top10 WAF courantes
    3. Analyse de vulnérabilité au moment de l'execution 
    4. Audits et confimité: Execution automatique des tests Docker et kubernetes benchmark
    5. Sécurité des hotes et endpoints: Surveille les activitées sur les fichiers des hotes, les processus  