# DataVisualization
This project includes some basic Data Visualization while trying to learn explanatory and exploratory visualization techniques. 
These were created using tools like Processing(https://processing.org/) and Python Plotly(https://plotly.com/python/). 

## Project Details: 

1. Processing(https://processing.org/):
Created using open source tool called Processing (https://processing.org/), developed by MIT graduates and recommended by Professor John.
The tools provide basic functions and parameters to achieve effects shown in above visualization. 
Although, all the features are not used, but using this simple practice its easy to create visualization using few lines of code.

1.1. Recreate Minard’s visualization of Napolean’s Russian Campaign 
    Link to Project: (https://github.com/verakash21/DataVisualization/tree/master/minard)
    
    This visualization shows the numerical data on geographic maps of Napoleons army's huge loss recorded by Charles Joseph Minard. This illustrates thick/thin lines as the size of his army at specific geographic points during their arrival and return. It displays 6 types of data in two dimensions: the size of Napoleon's army; the relative distance between each point; temperature; latitude and longitude; Minard's interest lay with the travails and sacrifices of the soldiers.
    It is drawn by mapping latitude and latitude data over the canvas of processing. Once mapping was achieved, it was an easy job to map points and draw line between them. The thickness is passed using Stroke function which was in proportions with the size of army. At the end, the temperate is shown at various positions. There are also different colors used to show different paths along with arrival and return of army.
    Tool Used
![alt text](https://github.com/verakash21/DataVisualization/blob/master/minard/minard.PNG)

 
1.2.  Recreate Nightingale’s rose chart
    Link to Project (https://github.com/verakash21/DataVisualization/tree/master/Nightingale_Rose_Chart)

    The visualization presented describes the data collected by statistician Florence Nightingale
    during the Crimean war. It represents the communication of avoidable deaths of soldiers each
    month over the period of two years and categorized them into causes like disease, wounds or
    others. This visualization was created using Processing. Using the primitive shape of arc with
    equal angles but different width and height it can achieve the coxcomb effect that depicts the
    total number of deaths by each cause in each month. By looking at the label and different
    colors we can see which arc represents which cause, while the text around arc shows the
    month for which that data belongs.
    The features and functions used for creating this visualization is as follows: arc, ellipse,
    translate, pushMatrix, popMatrix, table, text, stroke, fill, etc. The tool does provide many more
    features and animations which were out of scope for this project.
    Finally, as a task of this assignment, there is another coxcomb chart that shows similar data and
    focuses on the concepts of transformation, zooming, repositioning and rotation.
![alt text](https://github.com/verakash21/DataVisualization/blob/master/coxcomb.pdf)
