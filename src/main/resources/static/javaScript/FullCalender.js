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
                 end: '2023-01-01'
             },
             {
                 title: '春節',
                 start: '2023-01-20',
                 end: '2023-01-27'
             },
             {
                 title: '228 紀念日連假',
                 start: '2023-02-27',
                 end: '2023-02-28'
             },
			 {
                 title: '兒童節連假',
                 start: '2023-04-03',
                 end: '2023-04-04'
             },
             {
                 title: '清明節',
                 start: '2023-04-05',
                 end: '2023-04-05'
             },
             {
                 title: '勞動節',
                 start: '2023-05-01',
                 end: '2023-05-01'
             },
             {
                 title: '端午節連假',
                 start: '2023-06-22',
                 end: '2023-06-23'
             },
             {
                 title: '中秋節',
                 start: '2023-09-29',
                 end: '2023-09-29'
             },
             {
                 title: '國慶日',
                 start: '2023-10-09',
                 end: '2023-1002-10'
             },
         ]
          
        });
        calendar.render();
      });