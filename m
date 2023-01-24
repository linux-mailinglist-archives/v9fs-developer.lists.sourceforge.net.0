Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AD36790C1
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 07:18:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pKCdy-00036E-JH;
	Tue, 24 Jan 2023 06:18:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1pKCdw-000367-Oh
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 06:18:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EUcalkke76dkNqOMwKiILU8aHV2/3sSYLQrxzZww+LY=; b=S/YLpXgAaMHE+RHDeHigRkg2Tx
 J2YCTQ3UASrvk4Cr/i7jVgDgeQP9xbpHy/M/mNEa3il+wApzDgxIDDNq5xzCE2X1i0wGfNmxOnSVM
 n0crf5Tkwxzjw5AKvK/NTWst5rxgBN8AJAKkAUrNuiss9MQhbp0wlweiFnghSwTs0oXc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=EUcalkke76dkNqOMwKiILU8aHV2/3sSYLQrxzZww+LY=; b=P
 FJ9gs2MfzoukFT2W/GFto5oeHKRgfrWHK0my0U3CI+IZ7gFRtWtxJjekbO30qz8D/YET2lNTkVyFj
 U23xsGAtQO/Or9y0cQ4WTINAcXHDrRDopIkNf54QZyDDodZC5wtwPoC4ipugVy5+95Vx12Eu+/rMT
 MQN9U7T9qNQE9nuk=;
Received: from mga06b.intel.com ([134.134.136.31] helo=mga06.intel.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKCdu-00E1b1-47 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 06:18:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674541130; x=1706077130;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=U1GIFMdHKo15Of7a2DIC/fSfREH20kAWrsBKge+cTYY=;
 b=F0guSKSB+4F9QYYQBgJYbcAkZHL2Z/NcUbvZZMo++fRFRhnLMXFe3B2E
 KwPqyGn1qVUEJtVs/FX7LpQl4++3E4P632sFWAjASI9k68Tq+R1gSg6zq
 RimwyFR0By4xQUDg3HdQ45k8wU0mQvuL2+tIgO/h7TXvw6AlFOA+Pb2A4
 Y32k/c/4OHwC/x9fc7kDfqZ4krSZvi7k+Alg6fY/DDK0omhO2n3OrqgrV
 8qO86CbvJE8VJUIdLfLDLLd0i0kw0QUa7Xywc8w3sOPl2d9E2PerMUWSr
 hMoiuEAocny0xVNTQL0yfCCAq7mn1GBSrY4HJL91rSu+HR3I0MFHmiQab w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="388582355"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="388582355"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 22:18:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="750718861"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="750718861"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Jan 2023 22:18:42 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pKCdm-0006CS-02;
 Tue, 24 Jan 2023 06:18:42 +0000
Date: Tue, 24 Jan 2023 14:18:11 +0800
From: kernel test robot <lkp@intel.com>
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <202301241454.gOqo4xVk-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: tree:
 https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
 ericvh/for-next head: 2245aefc0a6f35eb2a9ad0afa8958c3d2fa694ea commit:
 5cdf58fbef6262fac9937fc9373d6f8b8f80f5fd
 [11/12] writeback [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pKCdu-00E1b1-47
Subject: [V9fs-developer] [ericvh-v9fs:ericvh/for-next 11/12]
 fs/9p/vfs_file.c:506:28: warning: variable 'v9inode' set but not used
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
Cc: v9fs-developer@lists.sourceforge.net, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git ericvh/for-next
head:   2245aefc0a6f35eb2a9ad0afa8958c3d2fa694ea
commit: 5cdf58fbef6262fac9937fc9373d6f8b8f80f5fd [11/12] writeback mode fixes
config: s390-allmodconfig (https://download.01.org/0day-ci/archive/20230124/202301241454.gOqo4xVk-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git/commit/?id=5cdf58fbef6262fac9937fc9373d6f8b8f80f5fd
        git remote add ericvh-v9fs https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
        git fetch --no-tags ericvh-v9fs ericvh/for-next
        git checkout 5cdf58fbef6262fac9937fc9373d6f8b8f80f5fd
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=s390 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=s390 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   fs/9p/vfs_file.c: In function 'v9fs_vm_page_mkwrite':
>> fs/9p/vfs_file.c:506:28: warning: variable 'v9inode' set but not used [-Wunused-but-set-variable]
     506 |         struct v9fs_inode *v9inode;
         |                            ^~~~~~~
   fs/9p/vfs_file.c: At top level:
   fs/9p/vfs_file.c:564:42: warning: 'v9fs_file_vm_ops' defined but not used [-Wunused-const-variable=]
     564 | static const struct vm_operations_struct v9fs_file_vm_ops = {
         |                                          ^~~~~~~~~~~~~~~~


vim +/v9inode +506 fs/9p/vfs_file.c

fb89b45cdfdc8b Dominique Martinet 2014-01-10  502  
fe6340e2d1f5ef Souptick Joarder   2018-07-17  503  static vm_fault_t
11bac80004499e Dave Jiang         2017-02-24  504  v9fs_vm_page_mkwrite(struct vm_fault *vmf)
7263cebed9fada Aneesh Kumar K.V   2011-02-28  505  {
6b39f6d22fbf67 Aneesh Kumar K.V   2011-02-28 @506  	struct v9fs_inode *v9inode;
78525c74d9e7d1 David Howells      2021-08-11  507  	struct folio *folio = page_folio(vmf->page);
11bac80004499e Dave Jiang         2017-02-24  508  	struct file *filp = vmf->vma->vm_file;
496ad9aa8ef448 Al Viro            2013-01-23  509  	struct inode *inode = file_inode(filp);
7263cebed9fada Aneesh Kumar K.V   2011-02-28  510  
7263cebed9fada Aneesh Kumar K.V   2011-02-28  511  
78525c74d9e7d1 David Howells      2021-08-11  512  	p9_debug(P9_DEBUG_VFS, "folio %p fid %lx\n",
78525c74d9e7d1 David Howells      2021-08-11  513  		 folio, (unsigned long)filp->private_data);
7263cebed9fada Aneesh Kumar K.V   2011-02-28  514  
eb497943fa2158 David Howells      2021-11-02  515  	v9inode = V9FS_I(inode);
eb497943fa2158 David Howells      2021-11-02  516  
eb497943fa2158 David Howells      2021-11-02  517  	/* Wait for the page to be written to the cache before we allow it to
eb497943fa2158 David Howells      2021-11-02  518  	 * be modified.  We then assume the entire page will need writing back.
eb497943fa2158 David Howells      2021-11-02  519  	 */
eb497943fa2158 David Howells      2021-11-02  520  #ifdef CONFIG_9P_FSCACHE
78525c74d9e7d1 David Howells      2021-08-11  521  	if (folio_test_fscache(folio) &&
78525c74d9e7d1 David Howells      2021-08-11  522  	    folio_wait_fscache_killable(folio) < 0)
78525c74d9e7d1 David Howells      2021-08-11  523  		return VM_FAULT_NOPAGE;
eb497943fa2158 David Howells      2021-11-02  524  #endif
eb497943fa2158 David Howells      2021-11-02  525  
120c2bcad80c0f Jan Kara           2012-06-12  526  	/* Update file times before taking page lock */
120c2bcad80c0f Jan Kara           2012-06-12  527  	file_update_time(filp);
120c2bcad80c0f Jan Kara           2012-06-12  528  
78525c74d9e7d1 David Howells      2021-08-11  529  	if (folio_lock_killable(folio) < 0)
eb497943fa2158 David Howells      2021-11-02  530  		return VM_FAULT_RETRY;
78525c74d9e7d1 David Howells      2021-08-11  531  	if (folio_mapping(folio) != inode->i_mapping)
7263cebed9fada Aneesh Kumar K.V   2011-02-28  532  		goto out_unlock;
78525c74d9e7d1 David Howells      2021-08-11  533  	folio_wait_stable(folio);
7263cebed9fada Aneesh Kumar K.V   2011-02-28  534  
7263cebed9fada Aneesh Kumar K.V   2011-02-28  535  	return VM_FAULT_LOCKED;
7263cebed9fada Aneesh Kumar K.V   2011-02-28  536  out_unlock:
78525c74d9e7d1 David Howells      2021-08-11  537  	folio_unlock(folio);
7263cebed9fada Aneesh Kumar K.V   2011-02-28  538  	return VM_FAULT_NOPAGE;
7263cebed9fada Aneesh Kumar K.V   2011-02-28  539  }
7263cebed9fada Aneesh Kumar K.V   2011-02-28  540  

:::::: The code at line 506 was first introduced by commit
:::::: 6b39f6d22fbf67cf795c105b4d67c64e9c352ca4 fs/9p: Move writeback fid to v9fs_inode

:::::: TO: Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
:::::: CC: Eric Van Hensbergen <ericvh@gmail.com>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
