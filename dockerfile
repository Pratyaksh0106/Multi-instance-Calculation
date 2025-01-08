# Step 1: Use the official Terraform image
FROM hashicorp/terraform:latest

# Step 2: Set the working directory in the container
WORKDIR /workspace

# Step 3: Copy the current directory (where Dockerfile is) into the container's workspace
COPY . /workspace

# Step 4: Run terraform init to initialize your Terraform configuration
RUN terraform init

# Step 5: Specify the default command to run (it will run terraform plan by default)
CMD ["terraform", "apply", "-auto-approve"]
