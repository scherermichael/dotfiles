> [!todo] All Scheduled Actions
>
> ```tasks
> not done
> has due date
> limit 100
> sort by happens
> group by function const date = task.due.moment; return date.isBefore(moment(), 'day') ? '%%1%% Overdue' : date.isSame(moment(), 'day') ? '%%2%% Due Today' : date.week() === moment().week() ? '%%2%% Due This Week' : '%%3%% Due Later';
> ```