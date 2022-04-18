reverse "cleve"

def reverse str

  str_list = str.split('')
  new_str = ""
  while str_list.length > 0
    new_str += str_list.pop
  end
  new_str
end



def fibonacci cnt
  rst = []
  while rst.count <= cnt
    if rst.count == 0
      rst.push(0)
    elsif rst.count == 1
        rst.push(1)
    else
      rst.push(rst.last + rst.last(2).first)
    end

  end
  rst.last
end


fibonacci 7



1. API design - How would you approach implementing breaking changes on API.
  Answer
  1. firstly i would work on a new branch. one i am sure that the changes implemented are working
fine and all the existing feature are working fine only then would i merge it to the master branch
  2.  I would break done the task into smaller section and implement them one by one

  3. At every stage of the broken down task i would test if any existing features are working


2. API design - nested resources vs flat structure. For example /api/orders/:order_id/order_items vs /api/order_items?order_id=:order_id. Why?
Answer
the advantage of nested resource is that i am using the power of rails and allowing rails to
create the orders object for me (instead of me manually creating it in the controller).


  3. Each marketplace seller needs to approve or reject each order that they receive from
desertcart. Rejecting the order means they should also provide a reason from the list of
valid reasons. Describe an API endpoint that you would design to support this logic.
  Please include a sample API request and response body.
  Answer
I will have 2 endpoint first one would be a get request to list all the valid reasons that the seller
can select from
The second would be a pust request by which the seller can update his status on the order
the pust request would have allowed only required params that are required to update the status of the order

Put
http://localhost:3001/api/orders/23/update_status

order {
  reason_id: 12,
    desc: 'This is my desc'
}



4. Build in house vs use 3rd party service - ie using self hosted Elasticsearch vs SaaS solution like Algolia, bare kubernetes on own cluster vs managed kubernetes (EKS, GKE).

  Answer
  I would use third party products because it saves time and would be more stable. But it also
depends on the company budget.
  I have userd Algolia in my current project. Because we were a small time and we had no time to
implement elastic search



5. You're building passwordless sign in, what top two issues would you anticipate and how would you overcome them?"

Answer
 I have user a Devise gem for all my project. For which i have an authcode for all my users.
I dont necessary need to have a password. I could just generate an authcode and use that for all my
api calls
