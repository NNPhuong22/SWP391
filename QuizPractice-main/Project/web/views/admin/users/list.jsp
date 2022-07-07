<%--
    Document   : home_body
    Created on : Oct 6, 2021, 3:46:23 PM
    Author     : TrungHuy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            $(".table").DataTable();
            $("form").change(function () {
                $('.saveBtn').removeAttr("disabled");
            });
        </script>
    </head>

    <body>

        <div class="h3 text-center mt-5">List of User
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop_user_new">
                Add new
            </button>
            <!-- Modal -->
            <div class="modal fade" id="staticBackdrop_user_new" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">New User</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="form_user">
                                <div class="container-fluid">

                                    <div class="row">
                                        <div class="col-7">


                                            <div class="input-group mb-3">
                                                <span class="input-group-text">Account</span>
                                                <input type="text" value="" name="account of new" class="form-control" placeholder="Account" aria-label="Username" aria-describedby="basic-addon1">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text">Role</span>
                                                <input type="text" value="" name="role of new" class="form-control" placeholder="Role" aria-label="Username" aria-describedby="basic-addon1">
                                            </div>


                                            <div class="input-group mb-3">
                                                <span class="input-group-text">Password</span>
                                                <input type="text" value="" name="password of new" class="form-control" placeholder="Password" aria-label="Username" aria-describedby="basic-addon1">
                                            </div>
                                        </div>
                                        <div class="col-5 align-self-center">
                                            <div class="text-center">
                                                <img src="" class="img-thumbnail mb-1 rounded-circle  " style="    width: 11vw;
                                                     height: 13vh;" alt="">
                                                <div class="input-group mb-3">
                                                    <input type="file" class="form-control">
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-group mb-3">
                                            <span class="input-group-text">Email</span>
                                            <input type="text" value="" name="email of new" class="form-control" placeholder="Email" aria-label="Username" aria-describedby="basic-addon1">
                                        </div>
                                        <div class="input-group mb-3">
                                            <span class="input-group-text">Description</span>
                                            <textarea class="form-control" name="des of new" aria-label="With textarea" style="height : 15vh"> </textarea>
                                        </div>
                                        <div class="input-group mb-3">
                                            <span class="input-group-text">First and last name</span>
                                            <input type="text" value="" aria-label="First name " name="fname of new" placeholder="First Name" class="form-control">
                                            <input type="text" value="" aria-label="Last name" name="lname of new" placeholder="Last Name" class="form-control">
                                        </div>
                                        <div class="input-group mb-3">
                                            <span class="input-group-text">DOB</span>
                                            <input type="date" value="" name="dob of new" class="form-control p-2" aria-label="Username" aria-describedby="basic-addon1">

                                            <div class="input-group-text ms-auto">
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="gender of new" id="Gender_male" value="m" >
                                                    <label class="form-check-label" for="Gender_male">Male</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="gender of new" id="Gender_female" value="f"  >
                                                    <label class="form-check-label" for="Gender_female">Female</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="input-group mb-3">
                                            <span class="input-group-text">Phone Number</span>
                                            <input type="text" value=" " name="phone of new" class="form-control" placeholder="Phone Number" aria-label="Username" aria-describedby="basic-addon1">
                                        </div>

                                        <div class="input-group mb-3">
                                            <span class="input-group-text">Address</span>
                                            <input type="text" value=" " name="address of new" class="form-control" placeholder="Address" aria-label="Username" aria-describedby="basic-addon1">
                                        </div>

                                        <div class="input-group mb-3">
                                            <span class="input-group-text">Visa</span>
                                            <input type="text" value=" " name="visa of new" class="form-control" placeholder="Visa" aria-label="Username" aria-describedby="basic-addon1">
                                        </div>

                                        <div class="input-group mb-3">
                                            <span class="input-group-text">Paymethod</span>
                                            <input type="text" value=" " name="payment of new" class="form-control" placeholder="Paymethod" aria-label="Username" aria-describedby="basic-addon1">
                                        </div>

                                        <div class="input-group mb-3">
                                            <span class="input-group-text">Position</span>
                                            <input type="text" value=" " name="position of new" class="form-control" placeholder="Position" aria-label="Username" aria-describedby="basic-addon1">
                                        </div>

                                        <div class="input-group mb-3">
                                            <span class="input-group-text">Sign</span>
                                            <input type="text" value=" " name="sign of new" class="form-control" placeholder="Sign" aria-label="Username" aria-describedby="basic-addon1">
                                        </div>

                                        <div class="input-group mb-3">
                                            <span class="input-group-text">Company</span>
                                            <input type="text" value=" " name="company of new" class="form-control" placeholder="Company" aria-label="Username" aria-describedby="basic-addon1">
                                        </div>

                                        <div class="input-group mb-3">
                                            <span class="input-group-text">School</span>
                                            <input type="text" value=" " name="school of new" class="form-control" placeholder="School" aria-label="Username" aria-describedby="basic-addon1">
                                        </div>

                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button"  onclick="Addnew()" class="btn btn-primary saveBtn" disabled="disabled">Create</button>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <table class="table table-hover mb-5">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Avatar</th>
                    <th scope="col">Account</th>
                    <th scope="col">First Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">Options</th>
                </tr>
            </thead>
            <tbody>

                <c:forEach items="${userData}" var="user">
                    <tr>
                        <th scope="col">${user.id}</th>
                        <th scope="col"><img src="${user.avatar}" class="rounded-circle rounded-1" alt="${user.firstname} ${user.lastname}" style="width: 7vw;
                                             height: 11vh;"> </th>
                        <th scope="col">${user.username}</th>
                        <th scope="col">${user.firstname}</th>
                        <th scope="col">${user.lastname}</th>
                        <th scope="col">
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop_user_${user.id}">
                                View Detail
                            </button>
                            <!-- Modal -->
                            <div class="modal fade" id="staticBackdrop_user_${user.id}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="staticBackdropLabel">Full Information of ${user.username}</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <form id="form_user_${user.id}">
                                                <div class="container-fluid">

                                                    <div class="row">
                                                        <div class="col-7">
                                                            <div class="input-group mb-3">
                                                                <span class="input-group-text">ID</span>
                                                                <input type="text" value="${user.id}" name="id of ${user}" readonly class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                                                            </div>
                                                            <div class="input-group mb-3">
                                                                <label class="input-group-text" for="inputGroupSelect01">Status</label>
                                                                <select class="form-select" id="inputGroupSelect01">
                                                                    <c:if test="${user.status == 0}">
                                                                        <option value="1"  >Active</option>
                                                                        <option value="0" selected>Disable</option>
                                                                    </c:if>
                                                                    <c:if test="${user.status == 1}">
                                                                        <option value="1" selected>Active</option>
                                                                        <option value="0" >Disable</option>
                                                                    </c:if></select>
                                                            </div>
                                                            <div class="input-group mb-3">
                                                                <span class="input-group-text">Account</span>
                                                                <input type="text" value="${user.username}" name="account of ${user}" readonly class="form-control" placeholder="Account" aria-label="Username" aria-describedby="basic-addon1">
                                                            </div>
                                                            <div class="input-group mb-3">
                                                                <span class="input-group-text">Role</span>
                                                                <input type="text" value="${user.role}" name="role of ${user}" class="form-control" placeholder="Role" aria-label="Username" aria-describedby="basic-addon1">
                                                            </div>


                                                            <div class="input-group mb-3">
                                                                <span class="input-group-text">Password</span>
                                                                <input type="text" value="${user.pass}" name="password of ${user}" class="form-control" placeholder="Password" aria-label="Username" aria-describedby="basic-addon1">
                                                            </div>
                                                        </div>
                                                        <div class="col-5 align-self-center">
                                                            <div class="text-center">
                                                                <img src="${user.avatar}" class="img-thumbnail mb-1 rounded-circle  " style="    width: 11vw;
                                                                     height: 13vh;" alt="${user.firstname} ${user.lastname}">
                                                                <div class="input-group mb-3">
                                                                    <input type="file" class="form-control">
                                                                </div>
                                                                Created Time: <br>${user.createTime}
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="input-group mb-3">
                                                            <span class="input-group-text">Email</span>
                                                            <input type="text" value="${user.email}" name="email of ${user}" class="form-control" placeholder="Email" aria-label="Username" aria-describedby="basic-addon1">
                                                        </div>
                                                        <div class="input-group mb-3">
                                                            <span class="input-group-text">Description</span>
                                                            <textarea class="form-control" name="des of ${user}" aria-label="With textarea" style="height : 15vh">${user.description}</textarea>
                                                        </div>
                                                        <div class="input-group mb-3">
                                                            <span class="input-group-text">First and last name</span>
                                                            <input type="text" value="${user.firstname}" aria-label="First name " name="fname of ${user}" placeholder="First Name" class="form-control">
                                                            <input type="text" value="${user.lastname}" aria-label="Last name" name="lname of ${user}" placeholder="Last Name" class="form-control">
                                                        </div>
                                                        <div class="input-group mb-3">
                                                            <span class="input-group-text">DOB</span>
                                                            <input type="date" value="${user.birthdate}" name="dob of ${user}" class="form-control p-2" aria-label="Username" aria-describedby="basic-addon1">

                                                            <div class="input-group-text ms-auto">
                                                                <div class="form-check form-check-inline">
                                                                    <input class="form-check-input" type="radio" name="gender of ${user}" id="Gender_male" value="m" ${user.gender=='m' ? 'checked' : ''}>
                                                                    <label class="form-check-label" for="Gender_male">Male</label>
                                                                </div>
                                                                <div class="form-check form-check-inline">
                                                                    <input class="form-check-input" type="radio" name="gender of ${user}" id="Gender_female" value="f" ${user.gender=='f' ? 'checked' : ''}>
                                                                    <label class="form-check-label" for="Gender_female">Female</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="input-group mb-3">
                                                            <span class="input-group-text">Phone Number</span>
                                                            <input type="text" value="${user.phonenum}" name="phone of ${user}" class="form-control" placeholder="Phone Number" aria-label="Username" aria-describedby="basic-addon1">
                                                        </div>

                                                        <div class="input-group mb-3">
                                                            <span class="input-group-text">Address</span>
                                                            <input type="text" value="${user.address}" name="address of ${user}" class="form-control" placeholder="Address" aria-label="Username" aria-describedby="basic-addon1">
                                                        </div>

                                                        <div class="input-group mb-3">
                                                            <span class="input-group-text">Visa</span>
                                                            <input type="text" value="${user.visa}" name="visa of ${user}" class="form-control" placeholder="Visa" aria-label="Username" aria-describedby="basic-addon1">
                                                        </div>

                                                        <div class="input-group mb-3">
                                                            <span class="input-group-text">Paymethod</span>
                                                            <input type="text" value="${user.paymethod}" name="payment of ${user}" class="form-control" placeholder="Paymethod" aria-label="Username" aria-describedby="basic-addon1">
                                                        </div>

                                                        <div class="input-group mb-3">
                                                            <span class="input-group-text">Position</span>
                                                            <input type="text" value="${user.position}" name="position of ${user}" class="form-control" placeholder="Position" aria-label="Username" aria-describedby="basic-addon1">
                                                        </div>

                                                        <div class="input-group mb-3">
                                                            <span class="input-group-text">Sign</span>
                                                            <input type="text" value="${user.sign}" name="sign of ${user}" class="form-control" placeholder="Sign" aria-label="Username" aria-describedby="basic-addon1">
                                                        </div>

                                                        <div class="input-group mb-3">
                                                            <span class="input-group-text">Company</span>
                                                            <input type="text" value="${user.company}" name="company of ${user}" class="form-control" placeholder="Company" aria-label="Username" aria-describedby="basic-addon1">
                                                        </div>

                                                        <div class="input-group mb-3">
                                                            <span class="input-group-text">School</span>
                                                            <input type="text" value="${user.school}" name="school of ${user}" class="form-control" placeholder="School" aria-label="Username" aria-describedby="basic-addon1">
                                                        </div>
                                                        <c:forEach items="${subjectData}" var="subject">
                                                            <c:forEach items="${user.listCoures}" var="i">
                                                                <c:if test="${i.s_id == subject.s_id}">
                                                                    <c:set var="registered" value="checked" />
                                                                </c:if>
                                                            </c:forEach>
                                                            <div class="input-group mb-3">

                                                                <div class="input-group-text">
                                                                    <input class="form-check-input mt-0" ${registered} type="checkbox" id="Subject_${subject.s_id}" name="subject registered of ${user}" value="${subject.s_id}" aria-label="Checkbox for following text input">
                                                                </div>
                                                                <input type="text" readonly class="form-control" value="${subject.name}" aria-label="Text input with checkbox"> </label>
                                                            </div>
                                                            <c:set var="registered" value="" />

                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" id="saveBtn_${user.id}" value="${user}" onclick="UpdateUser(this.value)" class="btn btn-primary saveBtn" disabled="disabled">Save</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </th>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>

</html>