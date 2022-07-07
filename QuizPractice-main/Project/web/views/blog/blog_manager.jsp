<%-- 
    Document   : blog_manager
    Created on : Oct 16, 2021, 1:18:06 PM
    Author     : HP
--%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:set var="path" value="${pageContext.request.contextPath}" />
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <!-- CSS only -->
                <link rel="stylesheet" href="${path}/asset/bootstrap/css/bootstrap.min.css">
                <link rel="stylesheet" type="text/css" href="${path}/asset/css/blogStyle.css">
                <script src="${path}/asset/js/connection.js"></script>
            </head>

            <body>

                <section class="py-5">
                    <div id="header">
                        <jsp:include page="/views/nav.jsp"></jsp:include>
                    </div>
                </section>
                <div class="container py-5">
                    <div class="text-center">
                        <h2>Blog Manager</h2>
                    </div>
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addModal">Add new Blog</button>

                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Title</th>
                                <th scope="col">Author</th>
                                <th scope="col">Type</th>
                                <th scope="col">Status</th>
                                <th scope="col">View detail</th>
                                <th scope="col">Edit</th>
                                <th scope="col">Change status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${bl}" var="o">
                                <tr>
                                    <td>${o.getId()}</td>
                                    <td>${o.getTitle()}</td>
                                    <td>${o.getAuthor()}</td>
                                    <td>${o.getType()}</td>
                                    <td>${o.getStatus()}</td>
                                    <td>
                                        <a href="BlogDetail?bid=${o.getId()}"><button type="button" class="btn btn-secondary">View detail</button></a>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#editModal" data-id="${o.getId()}" data-title="${o.getTitle()}" data-author="${o.getAuthor()}" data-type="${o.getType()}" data-image="${o.getImage()}" data-content="${o.getContent()}"
                                            data-description="${o.getDescription()}">Edit content</button>

                                    </td>
                                    <td>
                                        <a href="BlogStatus?bid=${o.getId()}"><button type="button" class="btn btn-secondary">Change status</button></a>

                                    </td>
                                </tr>
                            </c:forEach>

                        </tbody>

                    </table>
                </div>
                <!-- Footer-->
                <div id="footer">
                    <jsp:include page="/views/footer.jsp"></jsp:include>
                </div>
                <!--Add blog Modal -->
                <div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="BlogAdd" method="post">
                                <div class="modal-header">
                                    <h5 class="modal-title text-center" id="exampleModalLabel">Add a new Blog</h5>
                                    <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label>Title(*)</label>
                                        <input type="text" class="form-control" name="title" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Type</label>
                                        <select name="type" class="form-select" aria-label="Default select example">
                            <c:forEach items="${cl}" var="o">
                                <option value="${o}">${o}</option>
                               </c:forEach> 
                            </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Image(URL)</label>
                                        <input type="text" class="form-control" name="image">
                                    </div>
                                    <div class="form-group">
                                        <label>Content(*)</label>
                                        <textarea rows="5" cols="50" name="content" required>
                            </textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>Description(*)</label>
                                        <textarea rows="5" cols="50" name="description" required>
                            </textarea>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                    <input type="submit" class="btn btn-success" value="Add">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!--Edit blog Modal -->
                <div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="BlogEdit" method="post">
                                <div class="modal-header">
                                    <h5 class="modal-title text-center" id="exampleModalLabel">Edit Blog</h5>
                                    <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <input type="text" id="id" name="id" hidden>
                                    <input type="text" id="author" name="author" hidden>
                                    <div class="form-group">
                                        <label>Title(*)</label>
                                        <input type="text" class="form-control" id="title" name="title" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Type</label>
                                        <select name="type" class="form-select" aria-label="Default select example" id="type">
                                <c:forEach items="${cl}" var="o">
                                <option value="${o}">${o}</option>
                               </c:forEach>
                            </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Image</label>
                                        <input type="text" class="form-control" id="image" name="image">
                                    </div>
                                    <div class="form-group">
                                        <label>Content(*)</label>
                                        <textarea rows="5" cols="50" required id="content" name="content">
                            </textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>Description(*)</label>
                                        <textarea rows="5" cols="50" required id="description" name="description">
                            </textarea>
                                    </div>

                                </div>
                                <div class="modal-footer">
                                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                    <input type="submit" class="btn btn-success" value="Edit">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <!-- JavaScript Bundle with Popper -->
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                <script type="text/javascript">
                    $('#editModal').on('show.bs.modal', function(event) {
                        var button = $(event.relatedTarget) // Button that triggered the modal
                        var bid = button.data('id') // Extract info from data-* attributes
                        var author = button.data('author') // Extract info from data-* attributes
                        var title = button.data('title')
                        var type = button.data('type')
                        var image = button.data('image')
                        var content = button.data('content')
                        var description = button.data('description')
                            // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
                            // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
                        var modal = $(this)
                        modal.find('.modal-title').text('Editing blod id: ' + bid)
                        modal.find('.modal-body #id').val(bid)
                        modal.find('.modal-body #author').val(author)
                        modal.find('.modal-body #title').val(title)
                        modal.find('.modal-body #type').val(type)
                        modal.find('.modal-body #image').val(image)
                        modal.find('.modal-body #content').val(content)
                        modal.find('.modal-body #description').val(description)
                    })
                </script>
            </body>

            </html>