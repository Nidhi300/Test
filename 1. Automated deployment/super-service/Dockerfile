# Use the .NET Core 3.1 SDK image for building the application
FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the project file and restore dependencies
COPY super-service/src/SuperService.csproj ./
RUN dotnet restore

# Copy the entire source code and build the application
COPY super-service/src/ ./
RUN dotnet publish -c Release -o out

# Use the .NET Core 3.1 Runtime image for running the application
FROM mcr.microsoft.com/dotnet/aspnet:3.1 AS runtime

# Set the working directory inside the container
WORKDIR /app

# Copy the build output from the previous stage
COPY --from=build /app/out ./

# Expose the port that the application runs on
EXPOSE 80

# Set the entry point for the application
ENTRYPOINT ["dotnet", "SuperService.dll"]
