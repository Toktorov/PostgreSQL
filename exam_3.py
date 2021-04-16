import Error
#--------------------------------1-------------------
def makebold(fn):
    def wrapped():
        return "Я-декоратор" + fn() + " "
    return wrapped
 
@makebold

def hello():
    return " Я все сделал"
 
print(hello())
#----------------------------2----------------------------------------------------
def go_to_walk():
    return "Давай, пойдем погуляем на улице!"

def temperature():
    user = int(input("Погода: "))

def holoded():
    print('Прохладно.Надо одеться!')

def holodno():
    print("Холодно. Потеплее оденься и пойдем!")

def moroz():
    print("Мороз. Лучше давай дома посидим, фильм посмотрим!")

def proverka():
    try:
        if user >= 10:

            @temperature
        
        elif 0 >= user < 10:
            @holoded

        elif -10 user < -1:
            @holodnot

        elif user < -10:
            @moroz
    
except (Exception, Error) as error:
    print('Error is ', error)


            