# Completely Fair Scheduler (CFS)

El Completely Fair Scheduler (CFS) es el planificador de procesos por defecto en el núcleo de Linux. Su diseño se centra en la equidad y en proporcionar a cada proceso una porción justa de tiempo de CPU. A continuación se describen sus características principales y su funcionamiento.

## Características Principales

1. **Equidad**:
   - CFS asigna tiempo de CPU a los procesos de manera equitativa, asegurando que todos reciban una parte justa independientemente de su prioridad.

2. **Prioridad de los procesos**:
   - CFS utiliza un sistema de prioridades, donde los procesos con mayor prioridad obtienen más tiempo de CPU, pero siempre manteniendo la equidad.

3. **Uso de un árbol rojo-negro**:
   - Implementa una estructura de árbol rojo-negro para gestionar los procesos. Esta estructura permite realizar inserciones, eliminaciones y búsquedas de forma eficiente.

4. **Tiempos de ejecución y periodos**:
   - CFS mide el tiempo de ejecución de cada proceso y lo compara con el tiempo de espera para decidir cuál debe ejecutarse a continuación.

5. **Desempeño en sistemas multiprocesador**:
   - Está optimizado para distribuir los procesos de manera equitativa en múltiples núcleos, garantizando una carga equilibrada en sistemas multiprocesador.

## Funcionamiento

1. **Scheduler Tick**:
   - CFS utiliza "ticks" del temporizador del sistema para rastrear el tiempo de ejecución de cada proceso. Con cada tick, decide si el proceso actual debe continuar o ceder la CPU.

2. **Calculando la porción de tiempo**:
   - Cada proceso tiene un **tiempo de ejecución virtual (vruntime)** que se incrementa con el tiempo que ha estado ejecutándose. Los procesos con menor vruntime son seleccionados primero, garantizando que los procesos menos ejecutados tengan prioridad.

3. **Desplazamiento y equilibrio**:
   - CFS distribuye los procesos entre núcleos en sistemas multiprocesador para evitar la sobrecarga en un solo núcleo.

4. **Interrupciones y bloqueos**:
   - Si un proceso es interrumpido por operaciones de E/S o se bloquea, su vruntime se ajusta para reflejar su tiempo real de ejecución, evitando penalizaciones.

5. **Ajustes dinámicos**:
   - CFS ajusta dinámicamente la prioridad de los procesos según su comportamiento y necesidades de recursos, respondiendo eficientemente a cargas de trabajo variables.
