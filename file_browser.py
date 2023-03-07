
import os
import PySimpleGUI as sg

# Define the layout of your UI
layout = [
    [sg.Text('Select a directory:'), sg.FolderBrowse()],
    [sg.Button('Submit'), sg.Button('Cancel')]
]

# Create the window from the layout
window = sg.Window('My App', layout)

# Start the event loop
while True:
    event, values = window.read()

    # Handle events
    if event == sg.WIN_CLOSED or event == 'Cancel':
        break
    elif event == 'Submit':
        directory = values["Browse"]
        print(directory)
        python_files = []
        non_files = []

        # Iterate over all files in the directory
        for file in os.listdir(directory):
            # Check if the file is a Python file

            name, extension = os.path.splitext(file.lower())

            if extension == ".py" or ".m":

                python_files.append(file.lower())

            else:
                non_files.append(file)
        print('The following Python and matlab files in the chosen folder do not follow the file naming \n'
              'convention for homework\n\n')
        # Print the list of Python files
        for file in sorted(python_files):
           print(f'{file}')

# Close the window
window.close()

