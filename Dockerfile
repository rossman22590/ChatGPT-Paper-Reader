# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Install gradio via pip
RUN pip install gradio

EXPOSE 2333


# Run python gui.py when the container launches
CMD ["python", "gui.py"]
