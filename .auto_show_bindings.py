text=open("/Users/sophieyou/.bindings", "r")

lines=text.readlines()
text.seek(0)
print(text.read())

while 1:
    insert=input("\033[1;32;40minsert keyword (input empty string to exit) : \033[0m")
    if(insert==""):
        break

    flag=False
    # print(lines)
    for i in range(len(lines)):
        # print(lines[i])
        if lines[i].strip().find(insert)!=-1:
            flag=True
            print("\033[33m"+lines[i]+"\033[0m", end="")

            print("\033[31m----------------------------\033[0m")
    if(flag==False):
        print("\033[1;32;40mkeyword not found!\033[0m")

text.close()
