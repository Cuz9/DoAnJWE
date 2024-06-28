<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/20/2024
  Time: 9:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .my-btn {
        cursor: pointer;
        position: relative;
        padding: 10px 20px;
        background: white;
        font-size: 14px;
        border-top-right-radius: 10px;
        border-bottom-left-radius: 10px;
        transition: all 1s;

        &:after, &:before {
            content: " ";
            width: 10px;
            height: 10px;
            position: absolute;
            border: 0px solid #fff;
            transition: all 1s;
        }

        &:after {
            top: -1px;
            left: -1px;
            border-top: 5px solid crimson;
            border-left: 5px solid crimson;
        }

        &:before {
            bottom: -1px;
            right: -1px;
            border-bottom: 5px solid black;
            border-right: 5px solid black;
        }

        &:hover {
            border-top-right-radius: 0px;
            border-bottom-left-radius: 0px;
        / / background: rgba(0, 0, 0, .5);
        / / color: white;

            &:before, &:after {

                width: 100%;
                height: 100%;
            / / border-color: white;
            }
        }
    }
</style>
<div class="container-fluid" style="margin: 0px; padding: 0px">
    <div class="d-flex flex-row justify-content-between align-items-center bg-dark text-light p-2">
        <div class="d-flex flex-row align-items-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                 class="bi bi-person-circle" viewBox="0 0 16 16">
                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
                <path fill-rule="evenodd"
                      d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
            </svg>
            <b style="margin-left: 8px">Hello <c:out value="${adminUsername}"/>!</b>
        </div>

        <div>
            <a href="${pageContext.request.contextPath}/logout" class="btn btn-danger" title="Đăng xuất"
               data-bs-toggle="tooltip" data-bs-placement="left" data-bs-title="Đăng xuất">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                     class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                    <path fill-rule="evenodd"
                          d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0z"/>
                    <path fill-rule="evenodd"
                          d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708z"/>
                </svg>
            </a>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
  const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
  const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
</script>
