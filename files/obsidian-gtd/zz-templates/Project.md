```dataviewjs
function callout(query, heading) {
    const allText = `> [!todo] ${heading}\n` + '```tasks\n' + query + '\n```';
    const lines = allText.split('\n');
    return lines.join('\n> ') + '\n'
}

const queryScheduled = `
not done
has due date
path includes ${dv.current().file.path}
sort by due date
limit 100
group by function const date = task.due.moment; return date.isBefore(moment(), 'day') ? '%%1%% Overdue' : date.isSame(moment(), 'day') ? '%%2%% Due Today' : date.week() === moment().week() ? '%%2%% Due This Week' : (date.year() === moment().year()) && (date.week() === moment().week() + 1) ? '%%3%% Due Next Week' : (date.year() === moment().year() - 1) && (date.week() === 52) && (moment().week() === 1) ? '%%3%% Due Next Week' : '%%4%% Due Later'`;

dv.paragraph(callout(queryScheduled, 'Scheduled Actions'));

const queryNext = `
not done
no due date
tags include #next
tags do not include #waiting-for
path includes ${dv.current().file.path}
limit 100`;

dv.paragraph(callout(queryNext, 'Next Actions'));

const queryPending = `
not done
no due date
(tags do not include #next) OR (tags include #waiting-for)
path includes ${dv.current().file.path}
limit 100`;

dv.paragraph(callout(queryPending, 'Pending Actions'));
```

- [x] Add actions here...
