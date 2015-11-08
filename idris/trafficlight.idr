module TrafficLight

data Color = red | amber |green

nextColor: Color -> Color
nextColor red = green
nextColor amber = red
nextColor green = amber

