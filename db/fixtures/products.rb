

Product.seed(:id,
             {id: 1, name: 'Cool Laptop', sku: '123abc', description: 'The coolest laptop ever.', img: 'laptop', price: 1199.99, sale_price: 1049.99, specs: {"power"=>"overwhelming", "battery"=>"10 hours", "screen"=>"13in."}, category: 'computer', tag: %w(laptop computer electronics)},
             {id: 2, name: 'desktop', sku: 'laksjdf0983r', description: 'The coolest desktop ever.', img: 'desktop', price: 1299.99, sale_price: 1149.99, specs: {"power"=>"overwhelming", "battery"=>"10 hours", "screen"=>"13in."}, category: 'computer', tag: %w(desktop computer electronics)},
             {id: 3, name: 'boring laptop', sku: '092385jfgs', description: 'Most Boring laptop ever.', img: 'laptop', price: 399.99, sale_price: 0, specs: {"power"=>"Underwhelming", "battery"=>"10 hours", "screen"=>"13in."}, category: 'computer', tag: %w(laptop computer electronics)},
             {id: 4, name: 'Boring Desktop', sku: 'lksjdf920384', description: 'Most boring desktop ever.', img: 'desktop', price: 499.99, sale_price: 0, specs: {"power"=>"overwhelming", "battery"=>"10 hours", "screen"=>"13in."}, category: 'computer', tag: %w(desktop computer electronics)},
             {id: 5, name: 'tablet', sku: 'sjfkd345', description: 'The tablet laptop ever.', img: 'tablet', price: 699.99, sale_price: 0, specs: {"power"=>"overwhelming", "battery"=>"10 hours", "screen"=>"10in."}, category: 'tablet', tag: %w(tablet mobile electronics)},
             {id: 6, name: 'Hard Drive', sku: '456dfg', description: 'The best HDD ever.', img: 'hdd-o', price: 119.99, sale_price: 99.99, specs: {"size"=>"1TB"}, category: 'hard drive', tag: %w(drive component electronics)},
             {id: 7, name: 'Cool Phone', sku: '234dfggh', description: 'The coolest phone ever.', img: 'mobile', price: 599.99, sale_price: 0, specs: {"power"=>"Ok", "battery"=>"18 hours", "screen"=>"4.7in."}, category: 'phone', tag: %w(phone mobile electronics)},
             {id: 8, name: 'Lame Phone', sku: '456dasdffg', description: 'The lamest phone ever.', img: 'mobile', price: 299.99, sale_price: 149.99, specs: {"power"=>"Lame", "battery"=>"15 hours", "screen"=>"3.2in."}, category: 'phone', tag: %w(phone mobile electronics)},
             {id: 9, name: 'Server', sku: '456dsadffg', description: 'The Best server ever.', img: 'server', price: 3999.99, sale_price: 0, specs: {"power"=>"Atomic", "storage"=>"12 TB", "ram"=>"128 GB"}, category: 'computer', tag: %w(computer electronics)}
)
