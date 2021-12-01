#This creates one hastable, storing each TV as another hashtable.
$tvs = @{
    LivingRoom = @{
        Manufacturer = 'Sharp'
        Panel = @{
            Type = 'OLED'
            Resolution = '4k'
        }
        Size = '80"'
        Color = 'Black'
    }
    DiningRoom = @{
        Manufacturer = 'Samsung'
        Panel = @{
            Type = 'OLED'
            Resolution = '4k'
        }
        Size = '55"'
        Color = 'Silver'
    }
    Toilet = @{
        Manufacturer = 'Sony'
        Panel = @{
            Type = 'LED'
            Resolution = 'FullHD'
        }
        Size = '24"'
        Color = 'Black'
    }
}