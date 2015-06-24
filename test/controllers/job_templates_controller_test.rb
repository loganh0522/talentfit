require 'test_helper'

class JobTemplatesControllerTest < ActionController::TestCase
  setup do
    @job_template = job_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_template" do
    assert_difference('JobTemplate.count') do
      post :create, job_template: { job_description: @job_template.job_description, job_type: @job_template.job_type, template_name: @job_template.template_name }
    end

    assert_redirected_to job_template_path(assigns(:job_template))
  end

  test "should show job_template" do
    get :show, id: @job_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_template
    assert_response :success
  end

  test "should update job_template" do
    patch :update, id: @job_template, job_template: { job_description: @job_template.job_description, job_type: @job_template.job_type, template_name: @job_template.template_name }
    assert_redirected_to job_template_path(assigns(:job_template))
  end

  test "should destroy job_template" do
    assert_difference('JobTemplate.count', -1) do
      delete :destroy, id: @job_template
    end

    assert_redirected_to job_templates_path
  end
end
