-- punto 1
SELECT 

    tv.placa,
    tm.nombre AS 'marca',
    ts.nombre AS 'serie',
    tv.color,
    ttv.nombre AS 'tipo de vehiculo'

FROM 

    tblTipoVehiculo AS ttv 
    INNER JOIN tblVehiculo AS tv ON ttv.cod = tv.tblTipoVehiculo
    INNER JOIN tblMarca AS tm ON tm.cod = tv.marca
    INNER JOIN tblSerie AS ts ON ts.cod = tv.serie

WHERE tv.color = 'Negro';



-- punto 2
SELECT 

    tv.placa,
    tm.nombre AS 'marca',
    ts.nombre AS 'serie',
    tv.color,
    ttv.nombre AS 'tipo de vehiculo',
    tv.valorPago AS 'valor de pago',
    tv.valorKilometraje AS 'valor de kilometraje'

FROM 

    tblTipoVehiculo AS ttv 
    INNER JOIN tblVehiculo AS tv ON ttv.cod = tv.tblTipoVehiculo
    INNER JOIN tblMarca AS tm ON tm.cod = tv.marca
    INNER JOIN tblSerie AS ts ON ts.cod = tv.serie

WHERE (tv.valorPago > 100000) AND (tv.valorKilometraje < 3500);

-- punto 3
SELECT 

    ta.cons AS 'consecutivo',
    CONCAT(tc.docid, ' - ', tc.nombre, ' ', tc.apellido) AS 'cliente',
    tfp.nombre AS 'forma de pago',
    ta.observaciones,
    ta.fecha AS 'fecha de alquiler'

FROM 

    tblFormaPago AS tfp
    INNER JOIN tblAlquiler AS ta ON tfp.cod = ta.tblFormaPago
    INNER JOIN tblCliente AS tc ON tc.docid = ta.cliente

WHERE ta.fecha BETWEEN '2015/08/01' AND '2015/10/31';

-- PUNTO 4
SELECT 

    ta.cons AS 'consecutivo',
    CONCAT(tc.docid, ' - ', tc.nombre, ' ', tc.apellido) AS 'cliente',
    tfp.nombre AS 'forma de pago',
    tav.valorCargoFijo AS 'valor cargo fijo',
    ta.observaciones,
    ta.fecha AS 'fecha de alquiler'

FROM 

    tblFormaPago AS tfp
    INNER JOIN tblAlquiler AS ta ON tfp.cod = ta.tblFormaPago
    INNER JOIN tblCliente AS tc ON tc.docid = ta.cliente
    INNER JOIN tblAlquilerVehiculo AS tav ON tav.consAlquiler = ta.cons

WHERE (tav.valorCargoFijo > 50000) AND (tav.valorCargoFijo < 80000);


-- punto 5
SELECT 

    ta.cons AS 'consecutivo',
    CONCAT(tc.docid, ' - ', tc.nombre, ' ', tc.apellido) AS 'cliente',
    tfp.nombre AS 'forma de pago',
    tav.placaVehiculo AS 'placa',
    ta.observaciones,
    ta.fecha AS 'fecha de alquiler'

FROM 

    tblFormaPago AS tfp
    INNER JOIN tblAlquiler AS ta ON tfp.cod = ta.tblFormaPago
    INNER JOIN tblCliente AS tc ON tc.docid = ta.cliente
    INNER JOIN tblAlquilerVehiculo AS tav ON tav.consAlquiler = ta.cons

WHERE placa = 'DG56';

-- punto 6
SELECT 

    ta.cons AS 'consecutivo',
    CONCAT(tc.docid, ' - ', tc.nombre, ' ', tc.apellido) AS 'cliente',
    tfp.nombre AS 'forma de pago',
    tav.fechaDevolucion AS 'fecha de entrega',
    ta.observaciones,
    ta.fecha AS 'fecha de alquiler'

FROM 

    tblFormaPago AS tfp
    INNER JOIN tblAlquiler AS ta ON tfp.cod = ta.tblFormaPago
    INNER JOIN tblCliente AS tc ON tc.docid = ta.cliente
    INNER JOIN tblAlquilerVehiculo AS tav ON tav.consAlquiler = ta.cons

WHERE (tav.fechaDevolucion >= '2015/07/01') AND (tav.fechaDevolucion <= '2015/07/31');

-- punto 7
SELECT 

    ta.cons AS 'consecutivo',
    CONCAT(tc.docid, ' - ', tc.nombre, ' ', tc.apellido) AS 'cliente',
    tfp.nombre AS 'forma de pago',
    ta.observaciones,
    ta.fecha AS 'fecha de alquiler'

FROM 

    tblFormaPago AS tfp
    INNER JOIN tblAlquiler AS ta ON tfp.cod = ta.tblFormaPago
    INNER JOIN tblCliente AS tc ON tc.docid = ta.cliente

WHERE tfp.nombre LIKE '_fectivo';


-- punto 8
SELECT 

    tv.placa,
    tm.nombre AS 'marca',
    ts.nombre AS 'serie',
    tv.color,
    ttv.nombre AS 'tipo de vehiculo'

FROM 

    tblTipoVehiculo AS ttv 
    INNER JOIN tblVehiculo AS tv ON ttv.cod = tv.tblTipoVehiculo
    INNER JOIN tblMarca AS tm ON tm.cod = tv.marca
    INNER JOIN tblSerie AS ts ON ts.cod = tv.serie

WHERE tm.nombre LIKE '_enault';


-- punto 9
SELECT 

    tv.placa,
    tm.nombre AS 'marca',
    ts.nombre AS 'serie',
    tv.color,
    ttv.nombre AS 'tipo de vehiculo',
    tv.descripcion,

FROM 

    tblTipoVehiculo AS ttv 
    INNER JOIN tblVehiculo AS tv ON ttv.cod = tv.tblTipoVehiculo
    INNER JOIN tblMarca AS tm ON tm.cod = tv.marca
    INNER JOIN tblSerie AS ts ON ts.cod = tv.serie

WHERE tm.descripcion LIKE '%electrico%';

-- punto 10
SELECT 

    ta.cons AS 'consecutivo',
    CONCAT(tc.docid, ' - ', tc.nombre, ' ', tc.apellido) AS 'cliente',
    tfp.nombre AS 'forma de pago',
    ta.observaciones,
    ta.fecha AS 'fecha de alquiler',
    (tav.kmFinal - tav.kmInicial) AS 'kilometros_recorridos'

FROM 

    tblFormaPago AS tfp
    INNER JOIN tblAlquiler AS ta ON tfp.cod = ta.tblFormaPago
    INNER JOIN tblCliente AS tc ON tc.docid = ta.cliente
    INNER JOIN tblAlquilerVehiculo AS tav ON tav.consAlquiler = ta.cons

WHERE kilometros_recorridos > 100;















