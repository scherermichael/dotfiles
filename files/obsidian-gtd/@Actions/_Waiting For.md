#waiting-for

> [!todo] Scheduled Actions (2 Weeks)
>
> ```tasks
> not done
> (happens before next week) OR (happens next week)
> tags include #waiting-for
> limit 100
> sort by happens
> group by function const date = task.due.moment; return date.isBefore(moment(), 'day') ? '%%1%% Overdue' : date.isSame(moment(), 'day') ? '%%2%% Due Today' : date.week() === moment().week() ? '%%2%% Due This Week' : '%%3%% Due Next Week';
> ```

> [!todo] Next Actions
> 
> ```tasks
> not done
> (tags include #next) OR (path includes @Actions)
> tags include #waiting-for
> limit 100
> sort by filename
> ```