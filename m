Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 383D38269C3
	for <lists+v9fs-developer@lfdr.de>; Mon,  8 Jan 2024 09:49:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rMlJj-0002V8-0a;
	Mon, 08 Jan 2024 08:49:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1rMlJh-0002V0-Mi
 for v9fs-developer@lists.sourceforge.net;
 Mon, 08 Jan 2024 08:49:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h3DvK71PyuJ5Kt2USFyUuT55iZDKZ8VgtREqhPrHlF8=; b=NdAr81XrEhWFsKDHf6SdtXmOJT
 LZao0vSpfFq6njkUBkvCCB+5GYrddXrBZrTglqtdc+hxwPtvGLfp/0RthSl6g84MNkaJQSCuk744H
 dhSfhmmCNt5UY7eWqsBarDlpyCWhaB2x719368ztq9YUYoDH+3vngkkDhDoWTgZkLmlE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=h3DvK71PyuJ5Kt2USFyUuT55iZDKZ8VgtREqhPrHlF8=; b=j
 RTE9M5j7vIAFaBP+YW/nfXPUWH8UIGpoTUrxd3TdMWbWd7JkvC3cMwNYIceAu74POy6XTjXvU7S1B
 buRl29HZnFRrrd1myXNbuzxDDrdBauKl1XUxoHPNdNTHZ8vZoCdZIk7ikBp8fgquWxWu6yZ7gZiz8
 acTkYgoDA8kSujdE=;
Received: from mgamail.intel.com ([192.198.163.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rMlJd-00045y-7J for v9fs-developer@lists.sourceforge.net;
 Mon, 08 Jan 2024 08:49:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704703741; x=1736239741;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=P9d8TucL00x1fi9PzZRndM2p9cb8n1hYCBvJpHt6Fmc=;
 b=hh4kR0PlDe7xDJqLFvRaKAZrOzaZk0YcFXz/FOwApFam2vQHYc6xrKNk
 A2B99qxNKs2s4kgVV8FKPUhuvxjkNXmKJd3BIiICYY2/EunprpucPgy1r
 dftiV/J3Bav90K1VkOcgTSYAO5UHomg2w7vvMWGQw3W7mPTgJ4QVO/FND
 7/Jbd4aytB3AWhqLCXpC2lN4AYr+srh23kdwrruor2D99ZE76Nuz3YKDr
 ktKf8mWQTr5YCl9Jwv1bDgfoVN90iPyyTEaPrkRkd7nthgFDLLiBEjHjE
 uC1tSaZLWwXnmU0wiyUQdVb7gQ9NBBsKnZ9OxCKaTyXgyJ4cXaXbAvAXa Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="4585474"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; 
   d="scan'208";a="4585474"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 00:48:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="784795700"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="784795700"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 08 Jan 2024 00:48:48 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rMlJO-0004Ym-1U;
 Mon, 08 Jan 2024 08:48:46 +0000
Date: Mon, 8 Jan 2024 16:48:39 +0800
From: kernel test robot <lkp@intel.com>
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <202401081629.1NSWMlif-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: tree:
 https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
 b4/ericvh-fix-cache-dups head: d004f1a1a9d34c2e3e3a7c9affd746d7fc20988e
 commit:
 a5e3c9447509ace29a29ed2cd49dda8ce79cadae [5/10] fs [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rMlJd-00045y-7J
Subject: [V9fs-developer] [ericvh-v9fs:b4/ericvh-fix-cache-dups 5/10]
 fs/9p/vfs_inode_dotl.c:695:35: warning: variable 'v9ses' set but not used
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git b4/ericvh-fix-cache-dups
head:   d004f1a1a9d34c2e3e3a7c9affd746d7fc20988e
commit: a5e3c9447509ace29a29ed2cd49dda8ce79cadae [5/10] fs/9p: remove walk and inode allocation from symlink
config: m68k-virt_defconfig (https://download.01.org/0day-ci/archive/20240108/202401081629.1NSWMlif-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240108/202401081629.1NSWMlif-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202401081629.1NSWMlif-lkp@intel.com/

All warnings (new ones prefixed by >>):

   fs/9p/vfs_inode_dotl.c: In function 'v9fs_vfs_symlink_dotl':
>> fs/9p/vfs_inode_dotl.c:695:35: warning: variable 'v9ses' set but not used [-Wunused-but-set-variable]
     695 |         struct v9fs_session_info *v9ses;
         |                                   ^~~~~


vim +/v9ses +695 fs/9p/vfs_inode_dotl.c

53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  684  
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  685  static int
7a77db95511c39 Christian Brauner  2023-01-13  686  v9fs_vfs_symlink_dotl(struct mnt_idmap *idmap, struct inode *dir,
549c7297717c32 Christian Brauner  2021-01-21  687  		      struct dentry *dentry, const char *symname)
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  688  {
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  689  	int err;
d4ef4e35810448 Eric W. Biederman  2013-01-30  690  	kgid_t gid;
7880b43bdfc958 Al Viro            2017-01-12  691  	const unsigned char *name;
d28c61f0e08aab Aneesh Kumar K.V   2011-02-28  692  	struct p9_qid qid;
d28c61f0e08aab Aneesh Kumar K.V   2011-02-28  693  	struct p9_fid *dfid;
d28c61f0e08aab Aneesh Kumar K.V   2011-02-28  694  	struct p9_fid *fid = NULL;
d28c61f0e08aab Aneesh Kumar K.V   2011-02-28 @695  	struct v9fs_session_info *v9ses;
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  696  
7880b43bdfc958 Al Viro            2017-01-12  697  	name = dentry->d_name.name;
5d3851530d6d68 Joe Perches        2011-11-28  698  	p9_debug(P9_DEBUG_VFS, "%lu,%s,%s\n", dir->i_ino, name, symname);
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  699  	v9ses = v9fs_inode2v9ses(dir);
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  700  
77d5a6b7d9924e Al Viro            2016-05-29  701  	dfid = v9fs_parent_fid(dentry);
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  702  	if (IS_ERR(dfid)) {
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  703  		err = PTR_ERR(dfid);
5d3851530d6d68 Joe Perches        2011-11-28  704  		p9_debug(P9_DEBUG_VFS, "fid lookup failed %d\n", err);
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  705  		return err;
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  706  	}
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  707  
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  708  	gid = v9fs_get_fsgid_for_create(dir);
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  709  
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  710  	/* Server doesn't alter fid on TSYMLINK. Hence no need to clone it. */
7880b43bdfc958 Al Viro            2017-01-12  711  	err = p9_client_symlink(dfid, name, symname, gid, &qid);
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  712  
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  713  	if (err < 0) {
5d3851530d6d68 Joe Perches        2011-11-28  714  		p9_debug(P9_DEBUG_VFS, "p9_client_symlink failed %d\n", err);
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  715  		goto error;
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  716  	}
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  717  
d28c61f0e08aab Aneesh Kumar K.V   2011-02-28  718  	v9fs_invalidate_inode_attr(dir);
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  719  
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  720  error:
b48dbb998d70b7 Dominique Martinet 2022-06-12  721  	p9_fid_put(fid);
b48dbb998d70b7 Dominique Martinet 2022-06-12  722  	p9_fid_put(dfid);
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  723  	return err;
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  724  }
53c06f4e0a4621 Aneesh Kumar K.V   2011-01-10  725  

:::::: The code at line 695 was first introduced by commit
:::::: d28c61f0e08aab9e3a2d3430e75f97937c5fe5fd fs/9p: Mark directory inode invalid for many directory inode operations

:::::: TO: Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
:::::: CC: Eric Van Hensbergen <ericvh@gmail.com>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
