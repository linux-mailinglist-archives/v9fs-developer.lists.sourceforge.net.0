Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8978B6B700D
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Mar 2023 08:22:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pbcVg-00026A-I2;
	Mon, 13 Mar 2023 07:22:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1pbcVf-000264-R0
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 07:22:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sP+VxpK1mINNA21EhVcmVzRdpZ3UlZ0FRdwhFz9EfQk=; b=ZNkjq8u1+mfENcsQVgD5zN/eda
 kA+OBhqPwkCSQjL1VcGPg0GpAG1T0eiFgkGjD26wq+PYpTv3xzmPtRiH/QJhNyMsIPRHt3EM1yinT
 4vs9y4f5K2QoYDF4Z1xn2BG7pOOdV8/edueWFdTjOrIXief7ozp5Z1qIizSBCvnl91Oc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sP+VxpK1mINNA21EhVcmVzRdpZ3UlZ0FRdwhFz9EfQk=; b=DuHr6ELcvKc+SctTRu/nop4r7w
 2QGOii+Ax1MnIwVOkfLFa0kXd1zEDq0sa/42GXbLS/FgJT2NIGswGK+RsqhAj6hUtp/DaWPJx5a+1
 OzbqunLvxWMoC+PwG9t5d1AVfTOtyGSoIvZHN482sU+7ohcNCPzkBSyBs6eNz3t3H2Dg=;
Received: from mga14.intel.com ([192.55.52.115])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pbcVc-0004gM-Df for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 07:22:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678692136; x=1710228136;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TCkmUKwixNgPcSmVxcnK3SjHRb+zCuB4uLZUFVoY3y0=;
 b=DTCyNCxyRKyPQY3Ft9RjFPRPP7asfFgpow9p3cKzk33mfBH6N3ynEuC1
 L6573kD5F3LUi+20UJaSWRMUNM33yYssWZ97XnO3pqPpwotEqPTvPc2zS
 Xz/TZwxV1IY1qiJACX3kdLvGEQbtzgHhjKpyLAn7NhDWaZIIUEdYLROtC
 auMIseJe0HoksWwa3XrmIIs7pyHMfdY/pTFBoGzjYeXL67Ud2PunBvzVC
 D9M9ciOYyChBtuE74wdL9cYFH8sa//+WqdVqx9m5tion0V5i2ZCmpqNNS
 BatKFZQtLrnE8F4AwcocN8iMbPSnwyuTKCBsIjdgjRzU4QChhWLcJ+Ur/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="337101571"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="337101571"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 00:22:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="711024026"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="711024026"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 13 Mar 2023 00:22:02 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pbcVN-0005Qs-1a;
 Mon, 13 Mar 2023 07:22:01 +0000
Date: Mon, 13 Mar 2023 15:21:26 +0800
From: kernel test robot <lkp@intel.com>
To: Zheng Wang <zyytlz.wz@163.com>, ericvh@gmail.com
Message-ID: <202303131508.drILo2xA-lkp@intel.com>
References: <20230313041303.3158458-1-zyytlz.wz@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230313041303.3158458-1-zyytlz.wz@163.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Zheng, Thank you for the patch! Yet something to improve:
 [auto build test ERROR on net/master] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pbcVc-0004gM-Df
Subject: Re: [V9fs-developer] [PATCH net] 9p/xen : Fix use after free bug in
 xen_9pfs_front_remove due to race condition
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: lucho@ionkov.net, alex000young@gmail.com, Zheng Wang <zyytlz.wz@163.com>,
 1395428693sheep@gmail.com, netdev@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, hackerzheng666@gmail.com,
 v9fs-developer@lists.sourceforge.net, edumazet@google.com,
 oe-kbuild-all@lists.linux.dev, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Zheng,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on net/master]

url:    https://github.com/intel-lab-lkp/linux/commits/Zheng-Wang/9p-xen-Fix-use-after-free-bug-in-xen_9pfs_front_remove-due-to-race-condition/20230313-121534
patch link:    https://lore.kernel.org/r/20230313041303.3158458-1-zyytlz.wz%40163.com
patch subject: [PATCH net] 9p/xen : Fix use after free bug in xen_9pfs_front_remove due to race condition
config: arm-randconfig-r046-20230313 (https://download.01.org/0day-ci/archive/20230313/202303131508.drILo2xA-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/bf2159b54bb14c42221106b8681c471d005e7345
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Zheng-Wang/9p-xen-Fix-use-after-free-bug-in-xen_9pfs_front_remove-due-to-race-condition/20230313-121534
        git checkout bf2159b54bb14c42221106b8681c471d005e7345
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm SHELL=/bin/bash net/9p/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303131508.drILo2xA-lkp@intel.com/

All errors (new ones prefixed by >>):

   net/9p/trans_xen.c: In function 'xen_9pfs_front_free':
>> net/9p/trans_xen.c:284:24: error: incompatible types when assigning to type 'struct xen_9pfs_dataring *' from type 'struct xen_9pfs_dataring'
     284 |                 ring = priv->rings[i];
         |                        ^~~~


vim +284 net/9p/trans_xen.c

   273	
   274	static void xen_9pfs_front_free(struct xen_9pfs_front_priv *priv)
   275	{
   276		int i, j;
   277		struct xen_9pfs_dataring *ring = NULL;
   278	
   279		write_lock(&xen_9pfs_lock);
   280		list_del(&priv->list);
   281		write_unlock(&xen_9pfs_lock);
   282	
   283		for (i = 0; i < priv->num_rings; i++) {
 > 284			ring = priv->rings[i];
   285			if (!priv->rings[i].intf)
   286				break;
   287			if (priv->rings[i].irq > 0)
   288				unbind_from_irqhandler(priv->rings[i].irq, priv->dev);
   289	
   290			cancel_work_sync(&ring->work);
   291	
   292			if (priv->rings[i].data.in) {
   293				for (j = 0;
   294				     j < (1 << priv->rings[i].intf->ring_order);
   295				     j++) {
   296					grant_ref_t ref;
   297	
   298					ref = priv->rings[i].intf->ref[j];
   299					gnttab_end_foreign_access(ref, NULL);
   300				}
   301				free_pages_exact(priv->rings[i].data.in,
   302					   1UL << (priv->rings[i].intf->ring_order +
   303						   XEN_PAGE_SHIFT));
   304			}
   305			gnttab_end_foreign_access(priv->rings[i].ref, NULL);
   306			free_page((unsigned long)priv->rings[i].intf);
   307		}
   308		kfree(priv->rings);
   309		kfree(priv->tag);
   310		kfree(priv);
   311	}
   312	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
