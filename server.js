const logo = require('asciiart-logo')
const colors = require('colors')
const { prompt } = require('inquirer')

const init = () => {
  // Renders starting logo
  const logoText = logo({ name: "Employee Tracker" }).render()
  console.log(logoText.yellow)

  loadMainPrompts()
}

// Main Prompts
const loadMainPrompts = () => {
  console.log('Welcome to the Employee Tracker!\n'.green.bold)

  prompt([
    {
      type: 'list',
      name: 'choice',
      message: 'What would you like to do?',
      choices: [
        {
          name: 'View All Employees',
          value: 'VIEW_ALL_EMPLOYEES'
        },
        {
          name: 'Quit',
          value: 'QUIT'
        }
      ]
    }
  ]).then(res => {
    let userChoice = res.choice

    switch (userChoice) {
      case 'VIEW_ALL_EMPLOYEES':
        console.log('You chose View All Employees')
        break

      default:
        quit()
    }
  })
}

const quit = () => {
  console.log('Goodbye!'.green.bold)
  process.exit()
}


init()