--
INSERT INTO `oc_modification` (`name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
('Moka Payment', 'moka_payment', 'hello@kahvedigital.com', '2.3.0.0', 'http://kahvedigital.com/', '<modification>\n	<id></id>\n	<name>Moka Payment</name>\n	<code>moka_payment</code>\n	<version>2.3.0.0</version>\n	<author>hello@kahvedigital.com</author>\n	<link>http://kahvedigital.com</link>\n	<file path="admin/controller/common/header.php">\n		<operation>\n			<search  index="0"><![CDATA[getStores(]]></search>\n			<add position="before"><![CDATA[	   \n			$this->load->language(\'payment/moka_payment\');\n            $this->load->model(\'payment/moka_payment\');\n			$versionMoka = "2.3.0.0";\n            $versionCheckMoka = $this->model_payment_moka_payment->versionCheck(VERSION, $versionMoka);\n\n            if (!empty($versionCheckMoka[\'version_status\']) AND $versionCheckMoka[\'version_status\'] == \'1\') {\n                $data[\'error_version\'] = $this->language->get(\'entry_error_version\');\n				$data[\'alerts\']= 1;\n				$data[\'version_status_moka\']= $versionCheckMoka[\'version_status\'];\n                $data[\'moka_or_text\'] = $this->language->get(\'entry_moka_or_text\');\n                $data[\'moka_update_button\'] = $this->language->get(\'entry_moka_update_button\');\n                $version_updatable = $versionCheckMoka[\'new_version_id\'];\n                $data[\'version_update_link\'] = $this->url->link(\'payment/moka_payment/update\', \'token=\' . $this->session->data[\'token\'] . "&version=$version_updatable", true);\n            }else{\n			$data[\'version_status_moka\']=\'0\';	\n			}                \n]]></add>\n		</operation>\n	</file>\n	\n<file path="admin/view/template/common/header.tpl">\n		<operation>\n			<search  index="0"><![CDATA[<ul class="nav pull-right">]]></search>\n			<add position="after"><![CDATA[\n               <?php if($version_status_moka > 0) { ?>   <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown"><span class="label label-danger pull-left"><?php echo $version_status_moka; ?></span> <i class="fa fa-upload fa-lg"></i></a>\n	   <ul class="dropdown-menu dropdown-menu-right alerts-dropdown">\n	    <li class="dropdown-header"><?php echo $error_version ?><a href=\'<?php echo $version_update_link ?>\'><?php echo $moka_update_button ?></a><?php echo $moka_or_text ?></li>\n	   </ul>\n	   \n	</li>\n         <?php } ?>          \n]]></add>\n		</operation>\n	</file>\n	\n	\n</modification>', 1, now());