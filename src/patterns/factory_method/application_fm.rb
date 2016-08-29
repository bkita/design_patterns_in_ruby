require_relative 'car_factory'

bmw_x1 = CarFactory.make_car(:sport_car, 'red')
bmw_x1.build_car

bmw_family = CarFactory.make_car(:family_car, 'blue')
bmw_family.build_car