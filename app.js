const express = require('express');
const mysql = require('mysql');
const app = express();

app.use(express.static('public'));
app.use(express.urlencoded({extended: false}));

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'password',
    database: 'midterm'
});

app.get('/', (req, res) => {
    connection.query(
        `SELECT * FROM video_thumbnail`,
        (error, results) => {
            if (error) {
                console.log(error);
            } else {
                console.log(results);
                res.render('landing-page.ejs', { videos: results });
            }
        }
    );
});

app.get('/video-details/:id', (req, res) => {
    const id = req.params.id;
  
    connection.query(
      'SELECT * FROM video_thumbnail WHERE id = ?',
      [id],
      (error, videoResults) => {
        if (error) {
          console.log(error);
        } else {
          connection.query(
            'SELECT * FROM comments WHERE video_id = ?',
            [id],
            (error, commentsResults) => {
              if (error) {
                console.log(error);
              } else {
                connection.query(
                  'SELECT * FROM product_list WHERE product_video_id = ?',
                  [id],
                  (error, productListResults) => {
                    if (error) {
                      console.log(error);
                    } else {
                    console.log(productListResults);
                      res.render('video-details.ejs', {
                        video: videoResults[0],
                        comments: commentsResults,
                        product: productListResults,
                      });
                    }
                  }
                );
              }
            }
          );
        }
      }
    );
  });

app.post('/comments/', (req, res) => {
    const video_id = req.body.video_id;
    const nama = req.body.username;
    const comment = req.body.comment;
    connection.query(
        'INSERT INTO comments (video_id, username, comment) VALUES (?,?,?)',
        [video_id, nama, comment],
        (error, results) => {
            if (error)  {
                console.log(error);
            } else {
                res.redirect('/video-details/' + video_id);
            }
        });
    });

    app.listen(3000, () => {
            console.log('Server running on port 3000');
        });