# Nombre del ejecutable final
PROGRAMA := programa

# Compilador y flags
CC     := gcc
CFLAGS := -Wall

# TODO 1: Definí la variable SRCS listando todos los archivos .c del proyecto
#         Los archivos son: main.c y operaciones.c
SRCS := main.c operaciones.c

# TODO 2: Definí la variable OBJS a partir de SRCS
#         Reemplazá la extensión .c por .o usando sustitución de Make:
#         $(SRCS:.c=.o)
OBJS := $(SRCS:.c=.o)

# Regla principal
all: $(PROGRAMA)

# Regla para linkear los objetos y generar el ejecutable
# TODO 3: Completá el comando de linkeo
#         Usá $(CC), la variable automática $^ (todos los prerequisitos)
#         y el flag -o $(PROGRAMA)
$(PROGRAMA): $(OBJS)
	$(CC) $^ -o $(PROGRAMA)

# TODO 4: Escribí la regla de patrón para compilar cada .c en su .o
#         Formato: %.o : %.c
#         El comando debe usar $(CC) $(CFLAGS), la variable automática
#         $< (el primer prerequisito, es decir el .c) y el flag -c
#         para compilar sin linkear, y -o $@ para nombrar el .o
%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Regla para limpiar archivos generados
clean:
	rm -f $(PROGRAMA) $(OBJS)

# TODO 5: Declarar los targets que NO son archivos usando .PHONY
#         Agregá: all y clean
.PHONY: all clean