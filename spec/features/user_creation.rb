require 'rails_helper' 


describe "user creation" , type: :feature do 
    before do 
        visit new_user_path 
        fill_in "user_name", with: "Swordfish" 
        fill_in "user_email", with: "buku@good.com"
        fill_in "user_phone_number", with: 5551116969
        click_button "Create User" 
    end  

    let(:user) { User.find_by(name: "Swordfish")} 
    
    it 'creates a user' do 
        expect(user).to_not be_nil 
    end 

    it 'redirects to the new user page' do 
        expect(current_path).to eq(user_path(user))
    end 

    it "displays th user's name" do 
        within "h1" do 
            expect(page).to have_content(user.name) 

        end 
    end  

end