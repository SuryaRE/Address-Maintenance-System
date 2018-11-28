class AddressController < ApplicationController
  def login
  end

  def loginaction
    @s=Signup.find_by_uname(params['uname'])
    if(@s)
      if(@s.password == params['pwd'])
      session[:uname]=params["uname"]
      session[:stat]="from Signup" 
       render "contact"
      else
       render "login"
      end
    else
      render "login"
    end
  end

  def signup
  end

  def deleteaction
    @a=Contactinfo.all
    c=params['cnam']
    g=params['grp']
    s=session[:uname]
    for d in @a
      if(d.uname==s)
        if(d.cname==c)
          if(d.group==g)
           if(d.delete())
            render "contact"
           else
            render "delete"
           end
          end
        end
      end
    end
  end

  def updateaction
     @a=Contactinfo.all
    c=params['cnam']
    s=session[:uname]
    u=params['grp']
    for d in @a
      if(d.uname==s)
        if(d.cname==c)
          if(d.group==u)
           d.uname=s
           d.cname=params["cnam"]
           d.cnum=params["cnumber"]
           d.group=params["grp"]
           d.address=params["add"]
           d.state=params["stat"]
           d.district=params["dis"]
           if(d.save())
            render "contact"
           else
            render "update"
          end
          end
        end
      end
    end
    
  end

  def searchaction
    @a=Contactinfo.all
    @c=params['grp']
    @s=session[:uname]
    render "homeaction"
  end


  

  def signupaction
    @demo=Signup.new
    @demo.uname=params["uname"]
    @demo.password=params["pwd"]
    @demo.dob=params["dob"]
    @demo.email=params["email"]
    @demo.phno=params["phno"]

    if(@demo.save)
      session[:uname]=params["uname"]
      session[:stat]="from Signup"
      render "contact"
    else
      render "signup"
    end
  end

  def home
  end

  def create
    @s=Contactinfo.new
    @s.uname=session[:uname]
    @s.cname=params["cnam"]
    @s.cnum=params["cnumber"]
    @s.group=params["grp"]
    @s.address=params["add"]
    @s.state=params["stat"]
    @s.district=params["dis"]
    if(@s.save)
      render "contact"
    else
      render "contact" 
    end
  end

  def homeaction
  end

  def contact

  end
end
