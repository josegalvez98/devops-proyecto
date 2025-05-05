from app import app

def test_home():
    client = app.test_client()
    response = client.get('/')
    assert response.status_code == 200
    assert response.get_json() == {"mensaje": "Hola desde tu primera API en Flask"}
