from bottle import run, route, template, request, post

# form
@route('/')
def index():
    return template ('form.tpl')

# pöntunaryfirlit (form process)
@post('/process') # shorthand fyrir @route("/process", method="POST")
def data():
    # request.forms returns a MultiDict
    name = request.forms.get('nafn')
    address = request.forms.get('heimilisfang')
    email = request.forms.get('netfang')
    phone = request.forms.get('simi')
    size = request.forms.get('staerd')

    # getall is how you retrieve the list of values from a MultiDict
    toppings = request.forms.getall('alegg')

    # Útreikningar

    sum = 0

    # stærð á pizzu
    if size == "9":
        sum = 1000
    elif size == "12":
        sum = 1500
    elif size == "18":
        sum = 2000
    else:
        return "Error:  You need to choose pizza size to finish order"

    # álegg
    for i in toppings:
        # ef checkbox í formi er ekki hakað þá skilar valmöguleikinn 'None'
        if i is not None:
            sum += 200
    # vsk
    sum_vsk = int(1.25 * sum)   # notum heiltölur

    # yfirlit pöntunar
    return template('order',t=toppings,n=name,h=address,e=email,s=phone,st=size,sub=sum,total=sum_vsk)

run(host='localhost', port=8080, debug=True)
