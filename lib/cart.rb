class Cart

  PRICE = 100     # 每本書的單價是 100 元

  def add(items)
    @ordered_items = items.map{ |key,value| value }.delete_if{ |i| i == 0 }   # 把資料由 Hash 轉成陣列
  end

  def calculate    # 計算客戶所買的書本總價
    total = 0

      while @ordered_items.size > 0
        
        if @ordered_items.size == 2
          
          total = total + 2 * PRICE * 0.95

        elsif @ordered_items.size == 3

          total = total + 3 * PRICE * 0.9

        elsif @ordered_items.size == 4

          total = total + 4 * PRICE * 0.85
                            
        else
          # 把書拿出來計算
          total = total + PRICE
        end
        @ordered_items = @ordered_items.map{ |i| i -= 1 }
        @ordered_items = @ordered_items.delete_if{ |i| i == 0 }
      end

    return total
  end

end