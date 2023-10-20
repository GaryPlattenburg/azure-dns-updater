FROM python:3
ADD azure-dns-updater.py /
RUN pip install --upgrade pip
RUN pip install azure-common
RUN pip install azure-mgmt-dns
RUN pip install msrest
RUN pip install msrestazure
RUN pip install azure-identity
CMD [ "python", "./azure-dns-updater.py" ]