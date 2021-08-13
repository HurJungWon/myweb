FROM nginx:stable

LABEL Name=myweb Version=0.0.1

CMD ["nginx", "-g", "daemon off;"]
