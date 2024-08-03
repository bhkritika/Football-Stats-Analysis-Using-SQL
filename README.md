# Football Stats Analysis Using SQL

## Overview

This repository contains SQL queries for analyzing football player performance data for the 2024 season. The dataset includes information about teams, seasons, players, matches, goals, assists, and player ratings. The analyses cover various aspects from basic metrics to advanced insights.

## Database Name

`football_stats_analytics`

## Dataset

The dataset used for analysis is `latest_football_players` with the following columns:

- `Teams` (VARCHAR): The name of the team.
- `Seasons` (VARCHAR): The season for the data.
- `Players` (VARCHAR): The name of the player.
- `Matches` (INT): The number of matches played.
- `Goals` (INT): The number of goals scored.
- `Assists` (INT): The number of assists made.
- `Seasons_Ratings` (FLOAT): The rating of the player for the season.

## SQL Queries

### Basic Level Analysis

1. **Total Number of Teams**
2. **Total Number of Players**
3. **Average Goals per Player**
4. **Average Assists per Player**
5. **Total Matches per Team**
6. **Total Goals per Team**
7. **Total Assists per Team**
8. **Top 10 Players by Goals**
9. **Top 10 Players by Assists**
10. **Average Rating per Team**

### Intermediate Level Analysis

1. **Goals per Match for Each Player**
2. **Assists per Match for Each Player**
3. **Average Goals per Season**
4. **Average Assists per Season**
5. **Performance Trend Over Seasons**
6. **Top 5 Teams by Average Rating**
7. **Player Performance by Team**
8. **Season with Highest Goals**
9. **Season with Highest Assists**
10. **Player Performance by Season and Team**

### High Level Analysis 

1. **Impact of Goals and Assists on Ratings**
2. **Top 5 Players by Overall Performance**
3. **Team Performance Over Time**
4. **Player Performance Consistency**
5. **Comparative Analysis of Top Teams**
6. **Seasonal Impact Analysis**
7. **Performance Impact of Team Changes**
8. **Player Impact on Team Success**

## Getting Started

1. **Clone the Repository**:
git clone https://github.com/yourusername/football_stats_analytics.git

2. **Setup the Database**:
CREATE DATABASE football_stats_analytics;
USE football_stats_analytics;

3. **Create the Table**:
CREATE TABLE latest_football_players (
    Teams VARCHAR(255),
    Seasons VARCHAR(255),
    Players VARCHAR(255),
    Matches INT,
    Goals INT,
    Assists INT,
    Seasons_Ratings FLOAT
);

4. **Import Data**:
Import your data into the `latest_football_players` table.

5. **Run SQL Queries**:
Execute the SQL queries provided to perform various levels of analysis.