document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth',
          locale: 'zh-tw',
          navLinks: true,          
          headerToolbar: {       	  
        	  left: 'prev,next today',
        	  center: 'title',
        	  right: 'dayGridMonth,timeGridDay'     	  
        	  
          },
          	  events: [{
                 title: '元旦',
                 start: '2023-01-01',
                 end: '2023-01-02'
             },
             {
                 title: '春節',
                 start: '2023-01-20',
                 end: '2023-01-28'
             },
             {
                 title: '228 紀念日連假',
                 start: '2023-02-27',
                 end: '2023-02-28'
             },
			 {
                 title: '兒童節連假',
                 start: '2023-04-03',
                 end: '2023-04-05'
             },
             {
                 title: '清明節',
                 start: '2023-04-05',
                 end: '2023-04-06'
             },
             {
                 title: '勞動節',
                 start: '2023-05-01',
                 end: '2023-05-02'
             },
             {
                 title: '端午節連假',
                 start: '2023-06-22',
                 end: '2023-06-24'
             },
             {
                 title: '中秋節',
                 start: '2023-09-29',
                 end: '2023-09-30'
             },
             {
                 title: '國慶日連假',
                 start: '2023-10-09',
                 end: '2023-10-11'
             },
         ]
          
        });
        calendar.render();
      });