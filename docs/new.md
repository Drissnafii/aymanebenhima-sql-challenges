```mermaid
graph TD;
    A[Start];
    B{Decision};
    A --> B;
    B -->|Yes| C[End];
    B -->|No| D[Loop];
    D --> B;
