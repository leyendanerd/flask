from app import app
with app.test_client() as c:
    response = c.get('/')
    assert response.data == b'Hello Wor!'
    assert response.status_code == 200


