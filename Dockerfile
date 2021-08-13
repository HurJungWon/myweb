FROM nginx:stable

LABEL Name=myweb Version=0.0.1
COPY * /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]
