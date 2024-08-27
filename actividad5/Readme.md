# Investigación de Sistemas Operativos

## Tipos de Kernel y sus diferencias

### 1. Kernel Monolítico
- **Descripción**: Este tipo de kernel es el más tradicional y grande, donde todos los servicios del sistema operativo se ejecutan en el espacio de kernel. 
- **Características**: Alta velocidad y eficiencia debido a la integración en un solo espacio. Sin embargo, cualquier fallo en un componente puede derribar todo el sistema.
- **Ejemplo**: Linux es un ejemplo típico de un kernel monolítico.

### 2. Microkernel
- **Descripción**: Se enfoca en minimizar las funciones del kernel, delegando servicios del sistema operativo a procesos en el espacio de usuario.
- **Características**: Mejor estabilidad y seguridad debido a la separación de funciones, aunque puede haber una sobrecarga en el rendimiento debido a la comunicación entre los procesos.
- **Ejemplo**: El kernel de Minix y algunos aspectos de macOS.

### 3. Kernel Híbrido
- **Descripción**: Combina aspectos de los kernels monolíticos y microkernel, buscando un balance entre rendimiento y modularidad.
- **Características**: Proporciona flexibilidad y mejor manejo de errores. 
- **Ejemplo**: Windows NT es un ejemplo de kernel híbrido.

### 4. ExoKernel
- **Descripción**: Se trata de un kernel extremadamente minimalista que expone los recursos de hardware directamente a las aplicaciones.
- **Características**: Muy eficiente y rápido, pero complicado de implementar debido a la falta de abstracción.
- **Ejemplo**: Xok, un kernel de investigación del MIT.

## User vs Kernel Mode

- **User Mode**: Es el modo en el que se ejecutan las aplicaciones de usuario con acceso limitado al hardware y a los recursos del sistema. Los procesos en este modo no pueden ejecutar operaciones críticas del sistema operativo directamente.
- **Kernel Mode**: Es el modo en el que se ejecutan los componentes del sistema operativo con acceso total a todos los recursos y al hardware. El kernel puede realizar cualquier operación, incluidas aquellas que controlan el hardware o gestionan los procesos.

### Diferencias Clave
- **Acceso**: En User Mode, las aplicaciones tienen acceso restringido; en Kernel Mode, hay acceso completo.
- **Seguridad**: Kernel Mode tiene mayor privilegio, por lo tanto, un error en este modo puede ser crítico, mientras que en User Mode, los errores son más aislados.
- **Interacciones**: El sistema cambia entre estos modos mediante llamadas al sistema (system calls).

## Interruptions vs Traps

- **Interruptions**: Son señales enviadas por hardware o software para interrumpir el flujo de ejecución normal de la CPU y solicitar atención inmediata del kernel. Ejemplos incluyen interrupciones de teclado o temporizadores.
- **Traps**: Son interrupciones generadas por el software, típicamente debido a una condición excepcional (como una división por cero) o una llamada al sistema.

### Diferencias Clave
- **Origen**: Las interrupciones son generalmente de hardware, mientras que las traps son causadas por el software.
- **Propósito**: Las interrupciones suelen ser asíncronas y manejan eventos externos, mientras que las traps son síncronas y se usan para manejar excepciones o realizar llamadas al sistema.
