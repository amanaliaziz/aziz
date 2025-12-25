flowchart LR
    User[User / Browser]

    subgraph Frontend
        FE[Next.js Frontend]
    end

    subgraph Backend
        API[Go REST API]
    end

    subgraph Infrastructure
        DB[(PostgreSQL Database)]
        Cache[(Redis Cache)]
    end

    User --> FE
    FE --> API
    API --> DB
    API --> Cache
