USE gudang;
SELECT 
    id_categories,
    nama_kategori,
    GROUP_CONCAT(DISTINCT nama_product
        ORDER BY nama_product)
FROM
    categories
        INNER JOIN
    products ON products.category_id = id_categories
GROUP BY id_categories
ORDER BY id_categories, nama_kategori;