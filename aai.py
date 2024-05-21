#!bin/python3
import google.generativeai as genai


API_KEY = 'YOUR API KEY'
genai.configure(api_key=API_KEY)
model= genai.GenerativeModel('gemini-pro')
chat =model.start_chat(history=[])

print("___________________________________\n")
print("**Start asking I got ur back**\n ")
print("*****@ Based on Gemini-pro @*******\n ")
print("******@ press enter to close @*******\n ")
print("___________________________________\n")

while(True):
    question =input(" >> Your Question: ")
    if(question.strip()==''):
        break
    response =chat.send_message(question)
    print('\n')
    print(f"The answer:\n {response.text}\n")
    
