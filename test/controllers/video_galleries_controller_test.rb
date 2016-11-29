require 'test_helper'

class VideoGalleriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_gallery = video_galleries(:one)
  end

  test "should get index" do
    get video_galleries_url
    assert_response :success
  end

  test "should get new" do
    get new_video_gallery_url
    assert_response :success
  end

  test "should create video_gallery" do
    assert_difference('VideoGallery.count') do
      post video_galleries_url, params: { video_gallery: { link: @video_gallery.link, name: @video_gallery.name } }
    end

    assert_redirected_to video_gallery_url(VideoGallery.last)
  end

  test "should show video_gallery" do
    get video_gallery_url(@video_gallery)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_gallery_url(@video_gallery)
    assert_response :success
  end

  test "should update video_gallery" do
    patch video_gallery_url(@video_gallery), params: { video_gallery: { link: @video_gallery.link, name: @video_gallery.name } }
    assert_redirected_to video_gallery_url(@video_gallery)
  end

  test "should destroy video_gallery" do
    assert_difference('VideoGallery.count', -1) do
      delete video_gallery_url(@video_gallery)
    end

    assert_redirected_to video_galleries_url
  end
end
