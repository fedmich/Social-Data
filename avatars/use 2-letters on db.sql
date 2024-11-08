UPDATE users
SET picture = CONCAT(
    'https://raw.githubusercontent.com/fedmich/Social-Data/refs/heads/main/avatars/letter-names-2/',
    LOWER(SUBSTRING(first_name, 1, 1)),
    LOWER(SUBSTRING(last_name, 1, 1)),
    '.png'
)
WHERE picture LIKE '%/username?username%'
   OR picture IS NULL
   OR picture = '';
