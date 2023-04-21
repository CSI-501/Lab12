import matplotlib.pyplot as plt
plt.style.use('seaborn-v0_8-whitegrid')
plt.figure(figsize=(15,10))

fileread = open('coordinates.txt', 'r')
lines = fileread.readlines()

x = []
y = []
for line in lines:
    row = line.strip().split()
    x.append(float(row[0]))
    y.append(float(row[1]))

    # Plot the data for that estimation.
    plt.plot(x, y, color='blue')

plt.title('Plot of Cannon Trajectory')
plt.xlabel('X')
plt.ylabel('Y')
plt.savefig('display_cannon')
