# Use an official Python runtime as a parent image
FROM python:3.10




# Install gradio via pip
RUN pip install gradio
RUN pip install PyPDF2
RUN pip install openai

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

EXPOSE 2333


# Run python gui.py when the container launches
CMD ["python", "gui.py"]
