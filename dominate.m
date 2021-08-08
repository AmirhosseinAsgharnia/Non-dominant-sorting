function ind = dominate(x,y)

ind = all(x>=y,2) & any(x>y,2);