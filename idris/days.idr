module days

data days = Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday

nextDay: days -> days
nextDay Sunday = Monday
nextDay Monday = Tuesday
nextDay Tuesday = Wednesday
nextDay Wednesday = Thursday
nextDay Thursday = Friday
nextDay Friday = Saturday
nextDay _ = Sunday

nextWeekday: days -> days
nextWeekday Monday = Tuesday
nextWeekday Tuesday = Wednesday
nextWeekday Wednesday = Thursday
nextWeekday Thursday = Friday
nextWeekday _ = Monday
