uses GraphABC;
uses fractals;

begin
    var center := window.center;
    moveto(center.x - 200, center.y - 100); // установка указателя на 100 пикселей выше и на 200 левее центра
    
    a := 0; // начальное значение угла
    // отрисовка трёх кривых Коха под углом в 120 градусов (снежинка Коха)
    koch(5, 300);
    a += 2 * Pi / 3;
    koch(5, 300);
    a += 2 * Pi / 3;
    koch(5, 300);
    
    Sleep(1000); // пауза
    ClearWindow(); // очистка окна
    
    a := 0; // начальное значение угла
    // отрисовка кривой Минковского
    mink(3, 3000);
    a += Pi / 2;
    mink(3, 3000);
    a += Pi / 2;
    mink(3, 3000);
    a += Pi / 2;
    mink(3, 3000);
    
    Sleep(1000); // пауза
    ClearWindow(); // очистка окна
    moveto(center.x + 100, center.y); // установка указателя
    
    a := Pi; // начальное значение угла
    // отрисовка кривой Леви
    levi(9, 10);
    
    Sleep(1000); // пауза
    ClearWindow(); // очистка окна
    
    a := 0; // начальное значение угла
    // отрисовка кривой дракона
    dragon(15, 300);
    
    Sleep(1000); // пауза
    ClearWindow(); // очистка окна
    moveto(center.x - 250, center.y + 200); // установка указателя
    
    a := 0; // начальное значение угла
    // приближённая отрисовка треугольника Серпинского
    serp(8, 11100);
    
    Sleep(1000); // пауза
    ClearWindow(); // очистка окна
    
    // квадрат Серпинского
    serp_square(5, 5, 729, 5);
    
    Sleep(1000); // пауза
    ClearWindow(); // очистка окна
    
    // треугольник Серпинского
    serp_triangle(center.x, 5, 600, 7);
    
    Sleep(1000); // пауза
    ClearWindow(); // очистка окна
    
    //отрисовка треугольника Серпинского методом хаоса
    var arr: array of integer := (center.x, 10, center.x - 200, 400, center.x + 200, 400);
    chaos_serp(arr);
    
    Sleep(1000); // пауза
    ClearWindow(); // очистка окна
    
    //процедура отрисовки папортника Барнсли
    chaos_barns(80, 300, 20);
    
    Sleep(1000); // пауза
    ClearWindow(); // очистка окна
    
    // дерево Пифагора
    pifagor_tree(center.x, window.height - 5, 150, -Pi / 2, 15);
    
    Sleep(1000); // пауза
    ClearWindow(); // очистка окна
    
    classic_pifagor_tree(center.x, window.height - 30, 100, -Pi / 2, 12);
    
    Sleep(1000); // пауза
    CloseWindow(); // закрытие окна
end.