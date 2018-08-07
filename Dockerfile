FROM jupyter/datascience-notebook

# launchbot-specific labels
LABEL name.launchbot.io="Pragmatic AI"
LABEL workdir.launchbot.io="/home/jovyan"
LABEL description.launchbot.io="Pragmatic AI"
LABEL 8888.port.launchbot.io="Start Tutorial"

# Set the working directory
WORKDIR /home/jovyan

# Install correct versions
COPY requirements.txt /home/jovyan/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Add files
#COPY *.ipynb /home/jovyan/
COPY notebooks /home/jovyan/notebooks

# Allow user to write to directory
USER root
RUN chown -R $NB_USER /home/jovyan \
    && chmod -R 774 /home/jovyan
USER $NB_USER

# Expose the notebook port
EXPOSE 8888

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=* --NotebookApp.token='' --NotebookApp.disable_check_xsrf=True --NotebookApp.iopub_data_rate_limit=1.0e10

