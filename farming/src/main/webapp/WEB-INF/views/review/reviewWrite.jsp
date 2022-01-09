<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

            <div class="py-5">
              <button class="btn btn-outline-primary" type="button" data-bs-toggle="collapse" data-bs-target="#leaveReview" aria-expanded="false" aria-controls="leaveReview">Leave a review</button>
              <div class="collapse mt-4" id="leaveReview">
                <h5 class="mb-4">서비스 후기 남기기</h5>
                <form class="form" id="contact-form" method="get" action="#">
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="mb-4">
                        <label class="form-label" for="name">이름 *</label>
                        <input class="form-control" type="text" name="name" id="name" placeholder="Enter your name" required="required">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="mb-4">
                        <label class="form-label" for="rating">후기 점수 *</label>
                        <select class="form-select focus-shadow-0" name="rating" id="rating">
                          <option value="5">&#9733;&#9733;&#9733;&#9733;&#9733; (5/5)</option>
                          <option value="4">&#9733;&#9733;&#9733;&#9733;&#9734; (4/5)</option>
                          <option value="3">&#9733;&#9733;&#9733;&#9734;&#9734; (3/5)</option>
                          <option value="2">&#9733;&#9733;&#9734;&#9734;&#9734; (2/5)</option>
                          <option value="1">&#9733;&#9734;&#9734;&#9734;&#9734; (1/5)</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="mb-4">
                    <label class="form-label" for="email">이메일 *</label>
                    <input class="form-control" type="email" name="email" id="email" placeholder="Enter your  email" required="required">
                  </div>
                  <div class="mb-4">
                    <label class="form-label" for="review">후기 내용 *</label>
                    <textarea class="form-control" rows="4" name="review" id="review" placeholder="Enter your review" required="required"></textarea>
                  </div>
                  <button class="btn btn-primary" type="submit">리뷰 작성</button>
                </form>
              </div>
            </div>
