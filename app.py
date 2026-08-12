from flask import Flask
from flask import render_template

app = Flask(__name__)

@app.route("/")
def test():
    return render_template('index.html')

@app.route("/<ticket_id>")
def username(ticket_id):
    return render_template('ticket.html', ticketID=ticket_id)