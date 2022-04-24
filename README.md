# SwiftUI-Restart

# Things we gonna learn in this Project
+ SwiftUI
+ Importing Assets
+ Creating Color sets
+ Fix orientation of an App
+ Simple Launch Screen
+ AppStorage
+ ZStack
+ VStack
+ HStack
+ Creating full screen background programatically



# AppStorage
+ A special SwiftUI Property wrapper
+ It's purpose is to store some value on device's pernament storage by utilizing a getting set method
+ Uses a unique key identifier, we can use that to read and write the corresponding value in the storage
+ It also has a property name, which follow the rules of variable naming
+ We can use the property name in SwiftUI file
+ We need to initialized the property
+ Intialization only works if there is no property found in device storage by that unique identifier
+ If Property found then initialization won't happen

# ZStack
+ ZStack is a type of Stack type container in SwiftUI
+ We can display different views on top of each other using Z Stack


# VStack
+ VStack is a type of Stack type container in SwiftUI 
+ We can arrange the view vertically
+ Vertical means views are arranged in y axis manner
+ if we think of a matrix, vertical means views are arranged in row manner

# HStack
+ HStack is a type of Stack type container in SwiftUI 
+ We can arrange the view horizontally
+ Horizontal means views are arranged in x axis manner
+ if we think of a matrix, horizontal means views are arranged in col manner