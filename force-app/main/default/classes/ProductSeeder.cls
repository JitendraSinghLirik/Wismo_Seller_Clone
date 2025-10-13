public class ProductSeeder {

    public static void createProductsAndChildren() {
        // Step 1: Create parent products
        
        List<Product2> products = new List<Product2>();

        // MRI Machines
        products.add(new Product2(Name = 'Signa Advance 1.5T MRI', IsActive = true));
        products.add(new Product2(Name = 'Vantage Prime 3.0T MRI', IsActive = true));
        products.add(new Product2(Name = 'Achieva Plus 1.5T MRI', IsActive = true));
        products.add(new Product2(Name = 'Panorama OpenView 1.0T MRI', IsActive = true));
        products.add(new Product2(Name = 'Magnetom Edge 1.5T MRI', IsActive = true));
        products.add(new Product2(Name = 'Ingenia Pro 3.0T MRI', IsActive = true));
        products.add(new Product2(Name = 'MagnoScan 7T Ultra MRI', IsActive = true));
        products.add(new Product2(Name = 'AeroMagna 3T MRI', IsActive = true));
        products.add(new Product2(Name = 'VivoSense 1.5T MRI', IsActive = true));
        
        // CT Scanners
        products.add(new Product2(Name = 'Brilliance Max 64-slice CT Scanner', IsActive = true));
        products.add(new Product2(Name = 'Aquilion Vision 320-slice CT Scanner', IsActive = true));
        products.add(new Product2(Name = 'Optima ProScan 128-slice CT Scanner', IsActive = true));
        products.add(new Product2(Name = 'Somatom Rapid AS 64-slice CT Scanner', IsActive = true));
        products.add(new Product2(Name = 'Discovery CT Smart 16-slice CT Scanner', IsActive = true));
        products.add(new Product2(Name = 'Revolution ScanX 128-slice CT Scanner', IsActive = true));
        products.add(new Product2(Name = 'ClarityBeam 128 CT Scanner', IsActive = true));
        products.add(new Product2(Name = 'VivoScan Precision CT Scanner', IsActive = true));
        
        // X-Ray Systems
        products.add(new Product2(Name = 'Definium Pro 750 HD X-ray', IsActive = true));
        products.add(new Product2(Name = 'RadPRO Elite DRX 500 X-ray', IsActive = true));
        products.add(new Product2(Name = 'XDR Vision Max 550 X-ray', IsActive = true));
        products.add(new Product2(Name = 'Ysio Advance DR System X-ray', IsActive = true));
        products.add(new Product2(Name = 'ProGrade DRX 900 Plus X-ray', IsActive = true));
        products.add(new Product2(Name = 'DigitalDiagnost Pro C95 X-ray', IsActive = true));
        products.add(new Product2(Name = 'XenoScan Pro 300 X-ray', IsActive = true));
        
        // Ultrasound Systems
        products.add(new Product2(Name = 'Aplio Advance i950 Ultrasound System', IsActive = true));
        products.add(new Product2(Name = 'UltraView HD 5100 Ultrasound System', IsActive = true));
        products.add(new Product2(Name = 'Voluson Prime E12 Ultrasound System', IsActive = true));
        products.add(new Product2(Name = 'EPIQ Vision 8 Ultrasound System', IsActive = true));
        products.add(new Product2(Name = 'Sonimage HSX Pro Ultrasound System', IsActive = true));
        products.add(new Product2(Name = 'Acuson Sequoia X Ultrasound System', IsActive = true));
        
        // Insert all Products
        insert products;

        System.debug('✅ Products inserted: ' + products);
        
        // Step 2: Map by name to easily create child backlogs
        Map<String, Id> productMap = new Map<String, Id>();
        for (Product2 p : products) {
            productMap.put(p.Name, p.Id);
        }
        
        List<Product_Backlog__c> backlogs = new List<Product_Backlog__c>();
        
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Signa Advance 1.5T MRI'), Backlog_Quantity_Units__c = 5));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Vantage Prime 3.0T MRI'), Backlog_Quantity_Units__c = 5));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Achieva Plus 1.5T MRI'), Backlog_Quantity_Units__c = 5));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Panorama OpenView 1.0T MRI'), Backlog_Quantity_Units__c = 5));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Magnetom Edge 1.5T MRI'), Backlog_Quantity_Units__c = 5));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Ingenia Pro 3.0T MRI'), Backlog_Quantity_Units__c = 5));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Brilliance Max 64-slice CT Scanner'), Backlog_Quantity_Units__c = 5));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Aquilion Vision 320-slice CT Scanner'), Backlog_Quantity_Units__c = 5));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Optima ProScan 128-slice CT Scanner'), Backlog_Quantity_Units__c = 5));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Somatom Rapid AS 64-slice CT Scanner'), Backlog_Quantity_Units__c = 5));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Discovery CT Smart 16-slice CT Scanner'), Backlog_Quantity_Units__c = 5));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Revolution ScanX 128-slice CT Scanner'), Backlog_Quantity_Units__c = 5));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Definium Pro 750 HD X-ray'), Backlog_Quantity_Units__c = 5));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('RadPRO Elite DRX 500 X-ray'), Backlog_Quantity_Units__c = 5));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('XDR Vision Max 550 X-ray'), Backlog_Quantity_Units__c = 10));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Ysio Advance DR System X-ray'), Backlog_Quantity_Units__c = 10));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('ProGrade DRX 900 Plus X-ray'), Backlog_Quantity_Units__c = 10));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('DigitalDiagnost Pro C95 X-ray'), Backlog_Quantity_Units__c = 10));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Aplio Advance i950 Ultrasound System'), Backlog_Quantity_Units__c = 10));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('UltraView HD 5100 Ultrasound System'), Backlog_Quantity_Units__c = 10));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Voluson Prime E12 Ultrasound System'), Backlog_Quantity_Units__c = 10));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('EPIQ Vision 8 Ultrasound System'), Backlog_Quantity_Units__c = 10));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Sonimage HSX Pro Ultrasound System'), Backlog_Quantity_Units__c = 10));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('Acuson Sequoia X Ultrasound System'), Backlog_Quantity_Units__c = 10));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('MagnoScan 7T Ultra MRI'), Backlog_Quantity_Units__c = 10));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('AeroMagna 3T MRI'), Backlog_Quantity_Units__c = 15));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('VivoSense 1.5T MRI'), Backlog_Quantity_Units__c = 15));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('XenoScan Pro 300 X-ray'), Backlog_Quantity_Units__c = 15));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('ClarityBeam 128 CT Scanner'), Backlog_Quantity_Units__c = 15));
        backlogs.add(new Product_Backlog__c(Product__c = productMap.get('VivoScan Precision CT Scanner'), Backlog_Quantity_Units__c = 15));
        
        // Insert all backlog records
        insert backlogs;
        System.debug('✅ Backlogs inserted: ' + backlogs);
        
        // Step 4: Create Product Inventory records
        List<Product_Inventory__c> inventories = new List<Product_Inventory__c>();
        
        inventories.add(new Product_Inventory__c(
            Name = 'P003',
            Product__c = productMap.get('Signa Advance 1.5T MRI'),
            Assembly_Time_Days__c = 15,
            Monthly_Delivery_Capacity_Units__c = 5,
            On_Hand_Stock_Units__c = 10
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P008',
            Product__c = productMap.get('Vantage Prime 3.0T MRI'),
            Assembly_Time_Days__c = 24,
            Monthly_Delivery_Capacity_Units__c = 10,
            On_Hand_Stock_Units__c = 6
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P009',
            Product__c = productMap.get('Achieva Plus 1.5T MRI'),
            Assembly_Time_Days__c = 30,
            Monthly_Delivery_Capacity_Units__c = 10,
            On_Hand_Stock_Units__c = 6
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P010',
            Product__c = productMap.get('Panorama OpenView 1.0T MRI'),
            Assembly_Time_Days__c = 12,
            Monthly_Delivery_Capacity_Units__c = 10,
            On_Hand_Stock_Units__c = 6
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P011',
            Product__c = productMap.get('Magnetom Edge 1.5T MRI'),
            Assembly_Time_Days__c = 12,
            Monthly_Delivery_Capacity_Units__c = 10,
            On_Hand_Stock_Units__c = 6
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P012',
            Product__c = productMap.get('Ingenia Pro 3.0T MRI'),
            Assembly_Time_Days__c = 12,
            Monthly_Delivery_Capacity_Units__c = 10,
            On_Hand_Stock_Units__c = 10
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P013',
            Product__c = productMap.get('Brilliance Max 64-slice CT Scanner'),
            Assembly_Time_Days__c = 24,
            Monthly_Delivery_Capacity_Units__c = 10,
            On_Hand_Stock_Units__c = 10
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P014',
            Product__c = productMap.get('Aquilion Vision 320-slice CT Scanner'),
            Assembly_Time_Days__c = 12,
            Monthly_Delivery_Capacity_Units__c = 20,
            On_Hand_Stock_Units__c = 10
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P015',
            Product__c = productMap.get('Optima ProScan 128-slice CT Scanner'),
            Assembly_Time_Days__c = 22,
            Monthly_Delivery_Capacity_Units__c = 20,
            On_Hand_Stock_Units__c = 10
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P016',
            Product__c = productMap.get('Somatom Rapid AS 64-slice CT Scanner'),
            Assembly_Time_Days__c = 15,
            Monthly_Delivery_Capacity_Units__c = 20,
            On_Hand_Stock_Units__c = 5
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P017',
            Product__c = productMap.get('Discovery CT Smart 16-slice CT Scanner'),
            Assembly_Time_Days__c = 16,
            Monthly_Delivery_Capacity_Units__c = 20,
            On_Hand_Stock_Units__c = 5
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P018',
            Product__c = productMap.get('Revolution ScanX 128-slice CT Scanner'),
            Assembly_Time_Days__c = 15,
            Monthly_Delivery_Capacity_Units__c = 20,
            On_Hand_Stock_Units__c = 5
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P019',
            Product__c = productMap.get('Definium Pro 750 HD X-ray'),
            Assembly_Time_Days__c = 15,
            Monthly_Delivery_Capacity_Units__c = 25,
            On_Hand_Stock_Units__c = 5
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P020',
            Product__c = productMap.get('RadPRO Elite DRX 500 X-ray'),
            Assembly_Time_Days__c = 18,
            Monthly_Delivery_Capacity_Units__c = 25,
            On_Hand_Stock_Units__c = 5
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P021',
            Product__c = productMap.get('XDR Vision Max 550 X-ray'),
            Assembly_Time_Days__c = 18,
            Monthly_Delivery_Capacity_Units__c = 25,
            On_Hand_Stock_Units__c = 5
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P022',
            Product__c = productMap.get('Ysio Advance DR System X-ray'),
            Assembly_Time_Days__c = 18,
            Monthly_Delivery_Capacity_Units__c = 25,
            On_Hand_Stock_Units__c = 13
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P023',
            Product__c = productMap.get('ProGrade DRX 900 Plus X-ray'),
            Assembly_Time_Days__c = 18,
            Monthly_Delivery_Capacity_Units__c = 25,
            On_Hand_Stock_Units__c = 13
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P024',
            Product__c = productMap.get('DigitalDiagnost Pro C95 X-ray'),
            Assembly_Time_Days__c = 10,
            Monthly_Delivery_Capacity_Units__c = 25,
            On_Hand_Stock_Units__c = 13
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P025',
            Product__c = productMap.get('Aplio Advance i950 Ultrasound System'),
            Assembly_Time_Days__c = 10,
            Monthly_Delivery_Capacity_Units__c = 25,
            On_Hand_Stock_Units__c = 13
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P026',
            Product__c = productMap.get('UltraView HD 5100 Ultrasound System'),
            Assembly_Time_Days__c = 10,
            Monthly_Delivery_Capacity_Units__c = 25,
            On_Hand_Stock_Units__c = 15
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P027',
            Product__c = productMap.get('Voluson Prime E12 Ultrasound System'),
            Assembly_Time_Days__c = 10,
            Monthly_Delivery_Capacity_Units__c = 25,
            On_Hand_Stock_Units__c = 15
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P028',
            Product__c = productMap.get('EPIQ Vision 8 Ultrasound System'),
            Assembly_Time_Days__c = 26,
            Monthly_Delivery_Capacity_Units__c = 5,
            On_Hand_Stock_Units__c = 15
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P029',
            Product__c = productMap.get('Sonimage HSX Pro Ultrasound System'),
            Assembly_Time_Days__c = 10,
            Monthly_Delivery_Capacity_Units__c = 5,
            On_Hand_Stock_Units__c = 15
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P030',
            Product__c = productMap.get('Acuson Sequoia X Ultrasound System'),
            Assembly_Time_Days__c = 10,
            Monthly_Delivery_Capacity_Units__c = 5,
            On_Hand_Stock_Units__c = 15
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P031',
            Product__c = productMap.get('MagnoScan 7T Ultra MRI'),
            Assembly_Time_Days__c = 20,
            Monthly_Delivery_Capacity_Units__c = 5,
            On_Hand_Stock_Units__c = 8
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P032',
            Product__c = productMap.get('AeroMagna 3T MRI'),
            Assembly_Time_Days__c = 17,
            Monthly_Delivery_Capacity_Units__c = 5,
            On_Hand_Stock_Units__c = 8
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P033',
            Product__c = productMap.get('VivoSense 1.5T MRI'),
            Assembly_Time_Days__c = 20,
            Monthly_Delivery_Capacity_Units__c = 5,
            On_Hand_Stock_Units__c = 8
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P034',
            Product__c = productMap.get('XenoScan Pro 300 X-ray'),
            Assembly_Time_Days__c = 20,
            Monthly_Delivery_Capacity_Units__c = 5,
            On_Hand_Stock_Units__c = 8
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P035',
            Product__c = productMap.get('ClarityBeam 128 CT Scanner'),
            Assembly_Time_Days__c = 26,
            Monthly_Delivery_Capacity_Units__c = 5,
            On_Hand_Stock_Units__c = 8
        ));
        
        inventories.add(new Product_Inventory__c(
            Name = 'P036',
            Product__c = productMap.get('VivoScan Precision CT Scanner'),
            Assembly_Time_Days__c = 20,
            Monthly_Delivery_Capacity_Units__c = 5,
            On_Hand_Stock_Units__c = 8
        ));
        
        // Insert all inventories
        insert inventories;
        System.debug('✅ Inventories inserted: ' + inventories);
        
        // Step 5: Create Supplier Product Capacity records
        List<Supplier_Product_Capacity__c> supplierCapacities = new List<Supplier_Product_Capacity__c>();
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP005',
            Product__c = productMap.get('Signa Advance 1.5T MRI'),
            Monthly_Capacity_Units__c = 5
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP009',
            Product__c = productMap.get('Vantage Prime 3.0T MRI'),
            Monthly_Capacity_Units__c = 10
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP010',
            Product__c = productMap.get('Achieva Plus 1.5T MRI'),
            Monthly_Capacity_Units__c = 15
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP011',
            Product__c = productMap.get('Panorama OpenView 1.0T MRI'),
            Monthly_Capacity_Units__c = 20
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP012',
            Product__c = productMap.get('Magnetom Edge 1.5T MRI'),
            Monthly_Capacity_Units__c = 25
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP013',
            Product__c = productMap.get('Ingenia Pro 3.0T MRI'),
            Monthly_Capacity_Units__c = 30
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP014',
            Product__c = productMap.get('Brilliance Max 64-slice CT Scanner'),
            Monthly_Capacity_Units__c = 8
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP015',
            Product__c = productMap.get('Aquilion Vision 320-slice CT Scanner'),
            Monthly_Capacity_Units__c = 8
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP016',
            Product__c = productMap.get('Optima ProScan 128-slice CT Scanner'),
            Monthly_Capacity_Units__c = 12
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP017',
            Product__c = productMap.get('Somatom Rapid AS 64-slice CT Scanner'),
            Monthly_Capacity_Units__c = 12
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP018',
            Product__c = productMap.get('Discovery CT Smart 16-slice CT Scanner'),
            Monthly_Capacity_Units__c = 14
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP019',
            Product__c = productMap.get('Revolution ScanX 128-slice CT Scanner'),
            Monthly_Capacity_Units__c = 14
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP020',
            Product__c = productMap.get('Definium Pro 750 HD X-ray'),
            Monthly_Capacity_Units__c = 15
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP021',
            Product__c = productMap.get('RadPRO Elite DRX 500 X-ray'),
            Monthly_Capacity_Units__c = 5
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP022',
            Product__c = productMap.get('XDR Vision Max 550 X-ray'),
            Monthly_Capacity_Units__c = 10
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP023',
            Product__c = productMap.get('Ysio Advance DR System X-ray'),
            Monthly_Capacity_Units__c = 15
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP024',
            Product__c = productMap.get('ProGrade DRX 900 Plus X-ray'),
            Monthly_Capacity_Units__c = 20
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP025',
            Product__c = productMap.get('DigitalDiagnost Pro C95 X-ray'),
            Monthly_Capacity_Units__c = 25
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP026',
            Product__c = productMap.get('Aplio Advance i950 Ultrasound System'),
            Monthly_Capacity_Units__c = 30
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP027',
            Product__c = productMap.get('UltraView HD 5100 Ultrasound System'),
            Monthly_Capacity_Units__c = 4
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP028',
            Product__c = productMap.get('Voluson Prime E12 Ultrasound System'),
            Monthly_Capacity_Units__c = 4
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP029',
            Product__c = productMap.get('EPIQ Vision 8 Ultrasound System'),
            Monthly_Capacity_Units__c = 21
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP030',
            Product__c = productMap.get('Sonimage HSX Pro Ultrasound System'),
            Monthly_Capacity_Units__c = 21
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP031',
            Product__c = productMap.get('Acuson Sequoia X Ultrasound System'),
            Monthly_Capacity_Units__c = 2
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP032',
            Product__c = productMap.get('MagnoScan 7T Ultra MRI'),
            Monthly_Capacity_Units__c = 2
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP033',
            Product__c = productMap.get('AeroMagna 3T MRI'),
            Monthly_Capacity_Units__c = 5
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP034',
            Product__c = productMap.get('VivoSense 1.5T MRI'),
            Monthly_Capacity_Units__c = 10
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP035',
            Product__c = productMap.get('XenoScan Pro 300 X-ray'),
            Monthly_Capacity_Units__c = 15
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP036',
            Product__c = productMap.get('ClarityBeam 128 CT Scanner'),
            Monthly_Capacity_Units__c = 3
        ));
        
        supplierCapacities.add(new Supplier_Product_Capacity__c(
            Name = 'SP037',
            Product__c = productMap.get('VivoScan Precision CT Scanner'),
            Monthly_Capacity_Units__c = 3
        ));

        
        insert supplierCapacities;
        System.debug('✅ Capacities inserted: ' + supplierCapacities);
        
        // Summary logs
        System.debug('📊 Summary: ' + products.size() + ' Products, ' +
                     backlogs.size() + ' Backlogs, ' +
                     inventories.size() + ' Inventories, ' +
                     supplierCapacities.size() + ' Capacities inserted.');
    }
}