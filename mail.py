#import smtp module
import smtplib
import urllib.request as urllib

#sender mail
sender_email = "harshwardhankakra@gmail.com"

#receiver mail
receiver_email = "harshkakra17esocs@gmail.com"

message = ("""Job Failed !!!""")

server = smtplib.SMTP('smtp.gmail.com', 587)

#server connection
server.starttls()

server.login("harshwardhankakra@gmail.com","H@rsh9784")
print("login successful")

#send mail
server.sendmail("harsh","harshkakra17esocs@gmail.com", "hi great job work is successfully completed")


