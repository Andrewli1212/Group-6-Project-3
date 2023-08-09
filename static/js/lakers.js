let playerCSV = 'static/Resources/LakersPlayers.csv'
let teamCSV = 'static/Resources/LakersTeam.csv'

// Function to populate the dropdown with player names
function populateDropdown() {
    d3.csv(playerCSV).then(playerData => {
        let dropdown = d3.select('#playerDropdown');
        console.log('Players data:', playerData);
        playerData.forEach(player => {
            dropdown.append('option').property('value', player.Player).text(player.Player);
        });
    });
}

// Event listener for dropdown selection change
d3.select('#playerDropdown').on('change', function () {
    let selectedPlayerName = this.value;
    d3.csv(playerCSV).then(playerData => {
        let selectedPlayerData = playerData.find(player => player.Player === selectedPlayerName);
        if (selectedPlayerData) {
            createRadarChart(selectedPlayerData);
            createBarGraph(selectedPlayerData);
        }
    });
});

// Function to fetch data and create visualizations
function init() {
    d3.csv(teamCSV).then(teamWinsData => {
        console.log('Team data:', teamWinsData);
        createLineGraph(teamWinsData);
        populateDropdown();
    });
}

// Function to create radar chart
function createRadarChart(selectedPlayerData) {
    let data = [
        {
            type: 'scatterpolar',
            name: 'Player Stats',
            r: [
                selectedPlayerData.PTS,
                selectedPlayerData.BLK,
                selectedPlayerData.STL,
                selectedPlayerData.AST,
                selectedPlayerData.TRB,
            ],
            theta: ['PTS (Points Per Game)', 'BLK (Blocks Per Game)', 'STL (Steals Per Game)', 'AST (Assists Per Game)', 'TRB (Total Rebounds Per Game'],
            fill: 'toself',
        },
    ];

    let layout = {
        title: `Radar Chart for ${selectedPlayerData.Player}`,
        polar: {
            radialaxis: {
                visible: true,
                range: [0, Math.max(data.r)],
            },
        },
    };

    Plotly.newPlot('radar', data, layout);
}

function createBarGraph(selectedPlayerData) {
    // Extract the stat names and values
    let statNames = ['PTS', 'BLK', 'STL', 'AST', 'TRB'];
    let statValues = [
        selectedPlayerData.PTS,
        selectedPlayerData.BLK,
        selectedPlayerData.STL,
        selectedPlayerData.AST,
        selectedPlayerData.TRB
    ];

    // Create a trace for the bar graph
    let trace = [{
        x: statNames,
        y: statValues,
        type: 'bar',
        marker: {
            color: 'blue'
        }
    }];

    // Layout configuration for the bar graph
    let layout = {
        title: `Player Stats Bar Graph for ${selectedPlayerData.Player}`,
        xaxis: {
            title: 'Stat',
            type: 'category',
            tickangle: -45
        },
        yaxis: {
            title: 'Value'
        }
    };

    // Render the bar graph using Plotly
    Plotly.newPlot('bar', trace, layout);
}
function createLineGraph() {
    // Load the CSV data using D3
    d3.csv(teamCSV).then((data) => {
      // Extract the "Season" and "W/L%" columns
      let seasons = data.map(d => d.Season);
      let winLossPercentages = data.map(d => +d['W/L%']);
      
      // Create a trace for the bar graph
      let trace = [{
        x: seasons.reverse(),
        y: winLossPercentages.reverse(),
        type: 'scatter',
        mode: 'lines+markers',
        line: {
            color: 'red'
        }
      }];
  
      // Layout configuration for the bar graph
      const layout = {
        title: 'Season W/L Rate',
        xaxis: {
          title: 'Season',
          type: 'category',
          tickangle: -45
        },
        yaxis: {
          title: 'W/L%'
        }
      };
  
      // Render the bar graph using Plotly
      Plotly.newPlot('line', trace, layout);
    });
  }

// Call the function to fetch data and visualize
init();
