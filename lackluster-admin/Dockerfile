# Use an official ruby 3.1.1 runtime as a parent image

# Set the working directory in the container to /app

# Copy the Gemfile and Gemfile.lock into the image and install gems
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

# Copy the rest of the application code into the image
# This should be the same directory as the one set for the working directory

# Expose port 3000 to the Docker host

# Start the Rails application
CMD ["rails", "server", "-b", "0.0.0.0"]
