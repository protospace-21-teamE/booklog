class UserDecorator < Draper::Decorator
  delegate_all

    def birth_date
      user.birth_date.strftime("%Y年%-m月%-d日")
    end

    def birth_date_subtype
      user.birth_date.strftime("%Y年 %m月 %d日")
    end

    def gender
      if user.gender == 1
        "男性"
      elsif user.gender == 2
        "女性"
      else
        "秘密"
      end
    end

end
