Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 059266D3516
	for <lists+v9fs-developer@lfdr.de>; Sun,  2 Apr 2023 02:39:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pilkJ-0007NM-Tm;
	Sun, 02 Apr 2023 00:38:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1pilkI-0007NG-Ol
 for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 00:38:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ymFCwrR9x53Xmdj+fJSGHGpw6NkFWLc7WEssBOcZPis=; b=ZfG7XrVR/lfXmH+JWDNXhDSqfy
 42fISV5Q3yzCTTBX6JYLMOo0dmYXYZhItT6kP8iJ4QgaPRocgI9w2T2nIYHSLR1e5FlMjrnMCqgvT
 e37Ybk6vM/avZG880FjyBV0bnAUxSbQ1tvwp23Mtrs8+v7Up/O4rBM3tivitsfuKeqCc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ymFCwrR9x53Xmdj+fJSGHGpw6NkFWLc7WEssBOcZPis=; b=ilRc/eIdQfsyop/tC89CSLHD0m
 Wk4936ycBnJucPD08av1O7KxgTogY3TI3GF6HiD+ajnavKef3PVXYUhx9Xpa97RtvbCx0wMT4dETl
 KhMcZTHpCUAldzNZR+zC7Utcl3gwg/pcnWtbdt1Xhi1UysWj8ytv5ZonJWBRwXrVXdwg=;
Received: from mga14.intel.com ([192.55.52.115])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pilkD-0003lq-IG for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 00:38:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680395933; x=1711931933;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dTSvSuJZHP7riTVhzk3BSd8g6ONdydlSKSHTjFQslcI=;
 b=Pba1N0IgtOmZwPr42+1N2Ql1x66vUJxo4Vb+GnzXhMRJpvhhJKPVLZrt
 LKC2XH0NLACdPKdohaw0sZ22P328bMd0Y3DXzY74wafRtoxEcAXChcIRI
 Yh/DYe6f9pSR3nsyfqv3v/TSYPUnBPKfyckRZZuKZ+rzfEaeA3x4I/in/
 rXEaK5nzF7xOmCEOv+Kc0CaI7NDZ5CMqTON0dwAt6n8m+E45+wR3Mbozt
 3TZnV/MyLiYO2y3oGMQkNXUWOJA1Xw0PcZWANicKFQIR0VgWmvyr/b+0q
 tPCOa96rXhK9ATyfp1YAJDOsrgs+Rvz5MG3hkRHK8ZyxWPrgq96/jFK+N w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10667"; a="341709329"
X-IronPort-AV: E=Sophos;i="5.98,311,1673942400"; d="scan'208";a="341709329"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2023 17:38:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10667"; a="715852649"
X-IronPort-AV: E=Sophos;i="5.98,311,1673942400"; d="scan'208";a="715852649"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 01 Apr 2023 17:38:45 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pilk4-000N8l-1W;
 Sun, 02 Apr 2023 00:38:44 +0000
Date: Sun, 2 Apr 2023 08:37:55 +0800
From: kernel test robot <lkp@intel.com>
To: Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, v9fs@lists.linux.dev
Message-ID: <202304020858.JARvGo8W-lkp@intel.com>
References: <20230401-ericvh-dev-rework-cache-options-v1-1-12d3adbdd33a@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230401-ericvh-dev-rework-cache-options-v1-1-12d3adbdd33a@kernel.org>
X-Spam-Score: -3.2 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Eric, I love your patch! Perhaps something to improve:
 [auto build test WARNING on 1543b4c5071c54d76aad7a7a26a6e43082269b0c] 
 Content analysis details:   (-3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pilkD-0003lq-IG
Subject: Re: [V9fs-developer] [PATCH] fs/9p: Rework cache modes and add new
 options to Documentation
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
Cc: v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Eric,

I love your patch! Perhaps something to improve:

[auto build test WARNING on 1543b4c5071c54d76aad7a7a26a6e43082269b0c]

url:    https://github.com/intel-lab-lkp/linux/commits/Eric-Van-Hensbergen/fs-9p-Rework-cache-modes-and-add-new-options-to-Documentation/20230402-071815
base:   1543b4c5071c54d76aad7a7a26a6e43082269b0c
patch link:    https://lore.kernel.org/r/20230401-ericvh-dev-rework-cache-options-v1-1-12d3adbdd33a%40kernel.org
patch subject: [PATCH] fs/9p: Rework cache modes and add new options to Documentation
config: x86_64-defconfig (https://download.01.org/0day-ci/archive/20230402/202304020858.JARvGo8W-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/8d563b947e70b7fe9a067ef3be10471a05452505
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Eric-Van-Hensbergen/fs-9p-Rework-cache-modes-and-add-new-options-to-Documentation/20230402-071815
        git checkout 8d563b947e70b7fe9a067ef3be10471a05452505
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 olddefconfig
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash fs/9p/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202304020858.JARvGo8W-lkp@intel.com/

All warnings (new ones prefixed by >>):

   fs/9p/vfs_inode.c: In function 'v9fs_evict_inode':
>> fs/9p/vfs_inode.c:375:16: warning: variable 'version' set but not used [-Wunused-but-set-variable]
     375 |         __le32 version;
         |                ^~~~~~~
   fs/9p/vfs_inode.c: In function 'v9fs_vfs_atomic_open':
>> fs/9p/vfs_inode.c:799:28: warning: variable 'v9inode' set but not used [-Wunused-but-set-variable]
     799 |         struct v9fs_inode *v9inode;
         |                            ^~~~~~~
--
   fs/9p/vfs_inode_dotl.c: In function 'v9fs_vfs_setattr_dotl':
>> fs/9p/vfs_inode_dotl.c:541:35: warning: variable 'v9ses' set but not used [-Wunused-but-set-variable]
     541 |         struct v9fs_session_info *v9ses;
         |                                   ^~~~~


vim +/version +375 fs/9p/vfs_inode.c

2bad8471511ce5 Eric Van Hensbergen 2005-09-09  366  
60e78d2c993e58 Abhishek Kulkarni   2009-09-23  367  /**
bc868036569e1d David Howells       2021-10-04  368   * v9fs_evict_inode - Remove an inode from the inode cache
60e78d2c993e58 Abhishek Kulkarni   2009-09-23  369   * @inode: inode to release
60e78d2c993e58 Abhishek Kulkarni   2009-09-23  370   *
60e78d2c993e58 Abhishek Kulkarni   2009-09-23  371   */
b57922d97fd6f7 Al Viro             2010-06-07  372  void v9fs_evict_inode(struct inode *inode)
60e78d2c993e58 Abhishek Kulkarni   2009-09-23  373  {
6b39f6d22fbf67 Aneesh Kumar K.V    2011-02-28  374  	struct v9fs_inode *v9inode = V9FS_I(inode);
93c846143d8630 David Howells       2020-11-18 @375  	__le32 version;
6b39f6d22fbf67 Aneesh Kumar K.V    2011-02-28  376  
4ad78628445d26 Al Viro             2015-12-08  377  	truncate_inode_pages_final(&inode->i_data);
93c846143d8630 David Howells       2020-11-18  378  	version = cpu_to_le32(v9inode->qid.version);
8d563b947e70b7 Eric Van Hensbergen 2023-04-01  379  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
