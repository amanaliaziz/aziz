graph TD
    U((Пайдаланушы))
    FE[Frontend<br/>Next.js]
    BE[Backend<br/>Go / Python]
    DB[(PostgreSQL)]
    R((Redis))

    U -->|Browse| FE
    FE -->|API Request| BE
    BE -->|SQL| DB
    BE -->|Cache| R

    subgraph Cloud_Infrastructure
        BE
        DB
        R
    end
