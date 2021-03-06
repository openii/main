require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ProblemasController do

  # This should return the minimal set of attributes required to create a valid
  # Problema. As you add validations to Problema, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "proyect_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProblemasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all problemas as @problemas" do
      problema = Problema.create! valid_attributes
      get :index, {}, valid_session
      assigns(:problemas).should eq([problema])
    end
  end

  describe "GET show" do
    it "assigns the requested problema as @problema" do
      problema = Problema.create! valid_attributes
      get :show, {:id => problema.to_param}, valid_session
      assigns(:problema).should eq(problema)
    end
  end

  describe "GET new" do
    it "assigns a new problema as @problema" do
      get :new, {}, valid_session
      assigns(:problema).should be_a_new(Problema)
    end
  end

  describe "GET edit" do
    it "assigns the requested problema as @problema" do
      problema = Problema.create! valid_attributes
      get :edit, {:id => problema.to_param}, valid_session
      assigns(:problema).should eq(problema)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Problema" do
        expect {
          post :create, {:problema => valid_attributes}, valid_session
        }.to change(Problema, :count).by(1)
      end

      it "assigns a newly created problema as @problema" do
        post :create, {:problema => valid_attributes}, valid_session
        assigns(:problema).should be_a(Problema)
        assigns(:problema).should be_persisted
      end

      it "redirects to the created problema" do
        post :create, {:problema => valid_attributes}, valid_session
        response.should redirect_to(Problema.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved problema as @problema" do
        # Trigger the behavior that occurs when invalid params are submitted
        Problema.any_instance.stub(:save).and_return(false)
        post :create, {:problema => { "proyect_id" => "invalid value" }}, valid_session
        assigns(:problema).should be_a_new(Problema)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Problema.any_instance.stub(:save).and_return(false)
        post :create, {:problema => { "proyect_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested problema" do
        problema = Problema.create! valid_attributes
        # Assuming there are no other problemas in the database, this
        # specifies that the Problema created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Problema.any_instance.should_receive(:update).with({ "proyect_id" => "1" })
        put :update, {:id => problema.to_param, :problema => { "proyect_id" => "1" }}, valid_session
      end

      it "assigns the requested problema as @problema" do
        problema = Problema.create! valid_attributes
        put :update, {:id => problema.to_param, :problema => valid_attributes}, valid_session
        assigns(:problema).should eq(problema)
      end

      it "redirects to the problema" do
        problema = Problema.create! valid_attributes
        put :update, {:id => problema.to_param, :problema => valid_attributes}, valid_session
        response.should redirect_to(problema)
      end
    end

    describe "with invalid params" do
      it "assigns the problema as @problema" do
        problema = Problema.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Problema.any_instance.stub(:save).and_return(false)
        put :update, {:id => problema.to_param, :problema => { "proyect_id" => "invalid value" }}, valid_session
        assigns(:problema).should eq(problema)
      end

      it "re-renders the 'edit' template" do
        problema = Problema.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Problema.any_instance.stub(:save).and_return(false)
        put :update, {:id => problema.to_param, :problema => { "proyect_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested problema" do
      problema = Problema.create! valid_attributes
      expect {
        delete :destroy, {:id => problema.to_param}, valid_session
      }.to change(Problema, :count).by(-1)
    end

    it "redirects to the problemas list" do
      problema = Problema.create! valid_attributes
      delete :destroy, {:id => problema.to_param}, valid_session
      response.should redirect_to(problemas_url)
    end
  end

end
