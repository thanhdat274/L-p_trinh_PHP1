<?php
include_once("../layout/start-admin.php");
include_once("../functions.php");
$id = $_POST['search-id'];
$result = findByIdAdmin($id);
?>
<div class="content-wrapper">
    
    <section class="content-header">
        <h1>
            Thông Tin Admin
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Quản Lý Admin</a></li>
            <li class="active">Danh Sách Admin</li>
        </ol>
    </section>
    <section class="content">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <a href="add-admin.php" class="btn btn-success">+Thêm mới Admin</a>

                    <div class="box-tools">
                        <form action="http://localhost:81/ASM_PHP1_CLASS/admin/admins/find-admin.php" class="input-group input-group-sm" style="width: 150px;" method="POST">
                            <input type="text" name="search-id" class="form-control pull-right"placeholder="Search ID">
                            <div class="input-group-btn">
                                <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <td>ID</td>
                                <td>Tài Khoản</td>
                                <td>Tên</td>
                                <td>Ảnh</td>
                                <td>SĐT</td>
                                <td>Địa Chỉ</td>
                                <td colspan="2">Thao Tác</td>
                            </tr>
                        </thead>

                        <tbody>
                            <?php if(empty($result)){
                            } else {
                            ?>
                            <tr>
                                <td>
                                    <br>
                                    <?php echo $result['id']?>
                                </td>
                                <td>
                                    <br>
                                    <?php echo $result['tai_khoan']?>
                                </td>
                                <td>
                                    <br>
                                    <?php echo $result['ten']?>
                                </td>
                                <td>
                                    <img width="60px" height="70px" src="<?php echo empty($result['anh']) ? "unuser.png" : $result['anh'] ?>" alt="">
                                </td>
                                <td>
                                    <br>
                                    <?php echo $result['sdt']?>
                                </td>
                                <td>
                                    <br>
                                    <?php echo $result['dia_chi']?>
                                </td>
                                <td>
                                    <br>
                                    <a href="http://localhost:81/ASM_PHP1_CLASS/admin/admins/update-admin.php?id=<?php echo $result['id']?>" class="btn btn-success">Update</a>
                                    <a href="http://localhost:81/ASM_PHP1_CLASS/admin/admins/delete-admin.php?id=<?php echo $result['id']?>" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                            <?php } ?>
                        <tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</div>
<?php
include_once("../layout/end-admin.php");
?>
