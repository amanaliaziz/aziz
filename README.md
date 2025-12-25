graph LR
    Client((Client / Browser)) -->|HTTPS| UI[Web UI<br/>React / Next.js]

    UI -->|REST / JSON| API[Application API<br/>Go Backend]

    API -->|Read / Write| DB[(Main DB<br/>PostgreSQL)]
    API -->|Session / Cache| Cache[(In-Memory Cache<br/>Redis)]

    subgraph Cloud_Native_Environment
        UI
        API
        DB
        Cache
    end
