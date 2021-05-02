from flask import (
    Blueprint, render_template, request
)

from flaskr.db import get_db

bp = Blueprint('search', __name__, url_prefix='/search')


@bp.route('/product_name', methods=('GET', 'POST'))
def product_name():
    if request.method == 'POST':
        product_name = request.form['product_name']
        db = get_db()
        error = None

        if not product_name:
            error = 'Product name is required'
        if error is None:
            products = db.execute(
                'SELECT * FROM product WHERE pname = ?', (product_name,)
            ).fetchall()
            print(type(products))
            print(len(products))
            return render_template('search/product_name.html', products=products)
    return render_template('search/product_name.html', products=None)

