# Use a base image suitable for your application (e.g., Python)
FROM python:3.7

# Set the working directory in the container
WORKDIR /app

# Copy the required files to the working directory
COPY requirements.txt .
COPY flasklstm.py .
COPY server.py .
COPY my_model.h5 .
COPY fx_model_prediction_high.h5 .
COPY fx_model_prediction_low.h5 .
COPY fx_model_prediction_open.h5 .
COPY eurusd.csv .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the necessary port for your server (e.g., Flask)
EXPOSE 5000

# Run the server script when the container starts
CMD [ "python", "server.py" ]
