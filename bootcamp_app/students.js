const { Pool, Client } = require('pg');

//this is the connection to postgres
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'vagrant',
  port:5432
});

pool.connect( (err)=> {
  if(err) throw new Error(err);
  console.log('connected to DB')
});

//CALLBACK METHOD TO QUERY
// pool.query('SELECT NOW() as now', (err, res) => {
//   if (err) {
//     console.log(err.stack)
//   } else {
//     console.log(res.rows[0])
//   }
// })

// console.log(pool)

let cohort_id_to_find = process.argv[2]
// console.log(cohort_id_to_find)
let limit = process.argv[3]
// console.log(limit)
//PROMISE METHOD TO QUERY
pool.query(`
SELECT students.id as student_id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE '%${process.argv[2]}%'
LIMIT ${process.argv[3] || 5};
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
  })
}).catch(err => console.error('query error', err.stack));



