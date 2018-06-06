<?php echo $header; ?><?php echo $column_left; ?>

   <div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-free-checkout" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
            <h1><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
		 <?php if ($error_version) { ?>
        <div class="alert alert-danger"><i class="fa fa-check-circle"></i> <?php echo $error_version; ?> <a href="<?php echo $version_update_link; ?>"><i class="fa fa-arrow-down"></i> <?php echo $moka_update_button; ?></a> <?php echo $moka_or_text; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
            </div>
            <div class="panel-body">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-free-checkout" class="form-horizontal">
    
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="moka_payment_dealercode"> <?php echo $entry_dealercode; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="moka_payment_dealercode" value="<?php echo $moka_payment_dealercode; ?>" class="form-control"/>
                            <?php if ($error_dealercode) { ?>
                            <span class="text-danger"><?php echo $error_dealercode; ?></span>
                            <?php } ?>
                        </div>
                    </div>
				<div class="form-group">
                        <label class="col-sm-2 control-label" for="moka_payment_username">  <?php echo $entry_username; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="moka_payment_username" value="<?php echo $moka_payment_username; ?>" class="form-control"/>
                            <?php if ($error_username) { ?>
                            <span class="text-danger"><?php echo $error_username; ?></span>
                            <?php } ?>
                   </div>
                    </div>
					
				<div class="form-group">
                        <label class="col-sm-2 control-label" for="moka_payment_password">  <?php echo $entry_password; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="moka_payment_password" value="<?php echo $moka_payment_password; ?>" class="form-control"/>
                            <?php if ($error_password) { ?>
                            <span class="text-danger"><?php echo $error_password; ?></span>
                            <?php } ?>
                   </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="moka_payment_status"><?php echo $entry_status; ?></label>
                        <div class="col-sm-10">
                            <select name="moka_payment_status" class="form-control">
                                <?php if ($moka_payment_status) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="moka_payment_moka_3d_mode"><?php echo $entry_threed; ?></label>
                        <div class="col-sm-10">
                  				<select name="moka_payment_moka_3d_mode" class="form-control">
                                    <?php if ($moka_payment_moka_3d_mode == "OFF") { ?>
                                        <option value="ON"><?php echo $text_enabled; ?></option>
                                        <option value="OFF" selected="selected"><?php echo $text_disabled; ?></option>
                                    <?php } else { ?>
                                        <option value="ON" selected="selected"><?php echo $text_enabled ?></option>
                                        <option value="OFF"><?php echo $text_disabled; ?></option>
                                    <?php } ?>
                                </select>
                        </div>
                    </div>
					
					 <div class="form-group">
                        <label class="col-sm-2 control-label" for="moka_payment_installement"><?php echo $entry_installement; ?></label>
                        <div class="col-sm-10">
                  	<select name="moka_payment_installement" class="form-control">
                                    <?php if ($moka_payment_installement == "OFF") { ?>
                                        <option value="ON"><?php echo $text_enabled; ?></option>
                                        <option value="OFF" selected="selected"><?php echo $text_disabled; ?></option>
                                    <?php } else { ?>
                                        <option value="ON" selected="selected"><?php echo $text_enabled ?></option>
                                        <option value="OFF"><?php echo $text_disabled; ?></option>
                                    <?php } ?>
                                </select>
                        </div>
                    </div>
					<div class="form-group">
                        <label class="col-sm-2 control-label" for="moka_payment_test_mode"><?php echo $entry_moka_test_mode; ?></label>
                        <div class="col-sm-10">
                  	<select name="moka_payment_test_mode" class="form-control">
                                    <?php if ($moka_payment_test_mode == "OFF") { ?>
                                        <option value="ON"><?php echo $text_enabled; ?></option>
                                        <option value="OFF" selected="selected"><?php echo $text_disabled; ?></option>
                                    <?php } else { ?>
                                        <option value="ON" selected="selected"><?php echo $text_enabled ?></option>
                                        <option value="OFF"><?php echo $text_disabled; ?></option>
                                    <?php } ?>
                                </select>
                        </div>
                    </div>
					
					
					
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="moka_payment_order_status_id">
                            <span data-toggle="tooltip" title="<?php echo $entry_order_status; ?>">
                                <?php echo $entry_order_status; ?>
                            </span>
                        </label>
                        <div class="col-sm-10">
                            <select name="moka_payment_order_status_id" id="input-order-status" class="form-control">
                                <?php foreach ($order_statuses as $order_status) { ?>
                                <?php if ($order_status['order_status_id'] == $moka_payment_order_status_id) { ?>
                                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                <?php } ?>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="moka_payment_cancel_order_status_id"><span data-toggle="tooltip" title="<?php echo $entry_cancel_order_status; ?>"><?php echo $entry_cancel_order_status; ?></span></label>
                        <div class="col-sm-10">
                            <select name="moka_payment_cancel_order_status_id" id="input-cancel-order-status" class="form-control">
                                <?php foreach ($order_statuses as $order_status) { ?>
                                    <?php if ($order_status['order_status_id'] == $moka_payment_cancel_order_status_id) { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                                    <?php } else { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                    <?php } ?>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-order-status"><?php echo $entry_sort_order; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="moka_payment_sort_order" value="<?php echo $moka_payment_sort_order; ?>" size="1" class="form-control"/>
                        </div>
                    </div>
					
					<div class="form-group">
                       
                        <div class="col-sm-12">
                             <?php echo $moka_rates_table ?>
						
                    

                        </div>
                    </div>
            </div>
			   </form>
			 <div class="tab-pane" id="tab-moka_about">
                            <div class="panel">
                                <div class="row kahvedigital_moka-header">
                                    <img src="../catalog/view/theme/default/image/moka_payment/logo.png" class="col-xs-4 col-md-2 text-center" id="payment-logo" />
                                    <div class="col-xs-6 col-md-5 text-center">
                                        <h4>Moka Ödeme Kuruluşu A.Ş.</h4>
                                        <h4>Hızlı Güvenli ve Kolay</h4>
                                    </div>
                                    <div class="col-xs-12 col-md-5 text-center">
                                        <a href="https://moka.com" class="btn btn-primary" id="create-account-btn">Moka SanalPOS'a başvurun</a><br />
                                        Moka SanalPOS'unuz varsa ?<a href="https://pos.moka.com"> Hesabınıza giriş yapın</a>
                                    </div>
                                </div>

                                <hr />


                                <div class="kahvedigital_moka-content">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-4">
                                            <div class="thumbnail">
                                                <figure class="figure text-center">
                                                    <img src="../catalog/view/theme/default/image/moka_payment/icons/icon_clock.png" width="140" height="100"/>
                                                </figure>
                                                <p class="text text-center">
                                                    7x24 kesintisiz
                                                    <br>tahsilat imkanı
                                                </p>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-4">
                                            <div class="thumbnail">
                                                <figure class="figure text-center">
                                                    <img src="../catalog/view/theme/default/image/moka_payment/icons/icon_money.png" width="140" height="100"/>
                                                </figure>
                                                <p class="text text-center">
                                                    Hesaplı
                                                    <br>satış avantajı
                                                </p>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-4">
                                            <div class="thumbnail">
                                                <figure class="figure text-center">
                                                    <img src="../catalog/view/theme/default/image/moka_payment/icons/icon_credit_card.png" width="140" height="100"/>
                                                </figure>
                                                <p class="text text-center">
                                                    Bütün kredi kartları için
                                                    <br>taksitli satış imkanı
                                                </p>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-4">
                                            <div class="thumbnail">
                                                <figure class="figure text-center">
                                                    <img src="../catalog/view/theme/default/image/moka_payment/icons/icon_visa_mastercard.png" width="140" height="100"/>
                                                </figure>
                                                <p class="text text-center">
                                                    Visa ve MasterCard
                                                    <br>tahsilat imkanı
                                                </p>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-4">
                                            <div class="thumbnail">
                                                <figure class="figure text-center">
                                                    <img src="../catalog/view/theme/default/image/moka_payment/icons/icon_exchange.png" width="140" height="100"/>
                                                </figure>
                                                <p class="text text-center">
                                                    Yabancı kartlar ile
                                                    <br>işlem yapabilme
                                                </p>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-4">
                                            <div class="thumbnail">
                                                <figure class="figure text-center">
                                                    <img src="../catalog/view/theme/default/image/moka_payment/icons/icon_cogs.png" width="140" height="100"/>
                                                </figure>
                                                <p class="text text-center">
                                                    Hızlı ve kolay
                                                    <br>entegrasyon
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <hr />
                                </div>
                            </div>					





                        </div>
						
						
						                   <div class="tab-pane" id="tab-moka_help">

                            <div class="panel">
                                <div class="row">   
                                    <div class="alert alert-success"> Bu plugin için teknik destek işlemleri Moka Ödeme A.Ş. adına <a href="https://kahvedigital.com">KahveDigital</a> tarafından <b>ÜCRETSİZ</b> sağlanmaktadır.</div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 text-center">            

                                        <div class="row">
                                            <div class="col-sm-2"></div>
                                            <img src="../catalog/view/theme/default/image/moka_payment/kahvedigital-help.jpg" class="col-sm-8 text-center" id="payment-logo" />
                                            <div class="col-sm-2"></div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 panel text-center">
                                        <h1>Destek</h1><hr>
                                        <a class="zbtn btn-2 btn-2a" href="http://docs.kahvedigital.com/moka/opencart"> Kullanım Klavuzu</a><br>
                                        <a class="zbtn btn-2 btn-2a" href="http://client.kahvedigital.com/admin/login/signin">Destek Sistemi</a><br>
                                        <a class="zbtn btn-2 btn-2a">+90(0212)570 81 29</a><br>
                                        <a class="zbtn btn-2 btn-2a" href="mailto:destek@kahvedigital.com">destek@kahvedigital.com</a>

                                    </div>

                                    <hr/>
                                </div>

                                <div class="panel">

                                    <div class="col-sm-12 text-center">
                                        <a href="https://www.facebook.com/kahvedigital/"><img src="../catalog/view/theme/default/image/moka_payment/icons/facebook.png" width="32px" /></a>
                                        <a href="https://twitter.com/kahvedigital"><img src="../catalog/view/theme/default/image/moka_payment/icons/twitter.png" width="32px" /></a>
                                        <a href="https://www.youtube.com/user/kahvedigital"><img src="../catalog/view/theme/default/image/moka_payment/icons/youtube.png" width="32px" /></a>
                                        <a href="https://www.linkedin.com/company/kahve-digital/"><img src="../catalog/view/theme/default/image/moka_payment/icons/linkedin.png" width="32px" /></a>
                                        <a href="https://www.instagram.com/kahvedigital/"><img src="../catalog/view/theme/default/image/moka_payment/icons/instagram.png" width="32px" /></a>
                                        <a href="https://wordpress.org/support/users/kahvedigital"><img src="../catalog/view/theme/default/image/moka_payment/icons/wordpress.png" width="32px" /></a>
                                        <a href="https://github.com/kahvedigital/"><img src="../catalog/view/theme/default/image/moka_payment/icons/github.png" width="32px" /></a>
                                    </div>
                                    <hr/>
                                </div>
                            </div>
                        </div>
        </div>
     
    </div>
</div>
</div>
</div>
</div>

        <style>
     
            .zbtn {
                border: none;
                font-family: inherit;
                font-size: 13px;
                color: white !important;
                background: none;
                cursor: pointer;
                padding: 25px 80px;
                display: inline-block;

                margin: 15px 30px;
                text-transform: uppercase;
                letter-spacing: 1px;
                font-weight: 700;
                max-width: 350px;
                min-width: 350px;
                outline: none;
                position: relative;
                -webkit-transition: all 0.3s;
                -moz-transition: all 0.3s;
                transition: all 0.3s;
            }
            .btn-2a {
                border-radius: 0 0 5px 5px;
            }

            .btn-2a:hover {
                box-shadow: 0 4px #e91027;
                top: 2px;
            }

            .btn-2a:active {
                box-shadow: 0 0 #e91027;
                top: 6px;
            }
            .btn-2 {
                background: #ff2b42;
                color: #fff;
                box-shadow: 0 6px #e91027;
                -webkit-transition: none;
                -moz-transition: none;
                transition: none;
            }

        </style>
<?php echo $footer; ?>


