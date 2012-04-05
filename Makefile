##
## Makefile for  in /home/xaqq/Documents/network
## 
## Made by arnaud kapp
## Login   <kapp_a@epitech.net>
## 
## Started on  Tue Feb 14 18:18:42 2012 arnaud kapp
## Last update Tue Apr  3 16:23:53 2012 arnaud kapp
##

NAME=		libmynet.so

SRC=		src/tcpsrv.c \
		src/tcpsrv_create.c \
		src/tcpsrv_delete.c \
		src/tcpsrv_bind_listen.c \
		src/tcpsrv_run.c \
		src/tcpclient.c \
		src/ring_buffer/ring_buffer.c \
		src/ring_buffer/ring_buffer_st.c \
		src/flags.c \
		src/epoll_manager.c \
		src/write.c

OBJ=		$(SRC:.c=.o)

CFLAGS+=	-g -W -Wall -I ./includes -fPIC

$(NAME):	$(OBJ)
		gcc -o $(NAME) $(OBJ) -shared

clean:
		rm -f $(OBJ)

fclean:		clean
		rm -f $(NAME)

re:		fclean $(NAME)