<%* if (moment('{{date:YYYY-MM-DD}}').isoWeekday() === 7) { -%>
- [ ] Weekly GTD Review 📅 {{date:YYYY-MM-DD}}
<%* } -%>

## Scheduled Actions

> [!warning] Overdue
> ```tasks
> not done
> due before {{date:YYYY-MM-DD}}
> tags do not include #waiting-for
> limit 100
> sort by happens
> ```

> [!todo] Due Today
> ```tasks
> not done
> due {{date:YYYY-MM-DD}}
> tags do not include #waiting-for
> limit 100
> sort by happens
> ```

> [!edit] Follow-Up
> ```tasks
> not done
> (scheduled before {{date:YYYY-MM-DD}}) OR (scheduled {{date:YYYY-MM-DD}})
> limit 100
> sort by happens
> ```

## Notes

