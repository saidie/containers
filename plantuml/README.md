`sample.uml`

```plantuml
@startuml
Alice -> Bob
Bob -> Alice
@enduml
```

```sh
docker run -i saidie/plantuml < sample.uml > sample.png
```
