// Dashboard 1 Morris-chart
$( function () {
	"use strict";


	// Extra chart
	Morris.Area( {
		element: 'extra-area-chart',
		data: [ {
				period: '2001',
				iphone: 0,
				imac: 0,
				ibook: 90,
				samsung: 0,
				android: 0,
				ibook: 90,
				samsung: 90
        }, {
				period: '2002',
				iphone: 10,
				imac: 60,
				ibook: 40,
				samsung: 80,
				android: 120,
				ibook: 10,
				samsung: 90
        }, {
				period: '2003',
				iphone: 120,
				imac: 10,
				ibook: 90,
				samsung: 30,
				android: 50,
				ibook: 90,
				samsung: 10
        }, {
				period: '2004',
				iphone: 0,
				imac: 0,
				ibook: 120,
				samsung: 0,
				android: 0,
				ibook: 50,
				samsung: 90
        }, {
				period: '2005',
				iphone: 0,
				imac: 0,
				ibook: 0,
				samsung: 150,
				android: 0,
				ibook: 50,
				samsung: 34
        }, {
				period: '2006',
				iphone: 160,
				imac: 75,
				ibook: 30,
				samsung: 60,
				android: 90,
				ibook: 60,
				samsung: 70
        }, {
				period: '2007',
				iphone: 10,
				imac: 120,
				ibook: 40,
				samsung: 60,
				android: 30,
				ibook: 60,
				samsung: 50
        }


        ],
		lineColors: [ '#26DAD2', '#fc6180', '#62d1f3', '#ffb64d', '#4680ff','#fc6180','#26DAD2' ],
		xkey: 'period',
		ykeys: [ 'iphone', 'imac', 'ibook', 'samsung', 'android','tt','dd' ],
		labels: [ 'iphone', 'imac', 'ibook', 'samsung', 'android' ,'tt','dd'],
		pointSize: 0,
		lineWidth: 0,
		resize: true,
		fillOpacity: 0.8,
		behaveLikeLine: true,
		gridLineColor: '#e0e0e0',
		hideHover: 'auto'

	} );



} );
