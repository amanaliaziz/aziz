# Media Streaming Platform 2025

## 1. Жобаны басқару (Management)
* **Әдістеме:** Scrumban Framework
* **Бақылау құралы:** GitHub Projects (Sprints & Backlog)
* **Күйі:** Прототиптеу аяқталды

## 2. Технологиялық стек
* **Backend:** Python (FastAPI)
* **Видео өңдеу:** FFmpeg Library
* **CDN:** AWS CloudFront
* **Деректер қоры:** MongoDB (Metadata)
* **Контейнерлеу:** Docker

## 3. Стриминг архитектурасының схемасы
```mermaid
graph LR
    User((Пайдаланушы)) --> CDN[AWS CloudFront]
    CDN --> S3[AWS S3: Video Storage]
    User --> API[FastAPI Gateway]
    API --> Worker[FFmpeg Processing]
    Worker --> S3
    API --> DB[(MongoDB Atlas)]
    
    subgraph "Video Delivery"
        CDN
        S3
    end
