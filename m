Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C68D679409
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 10:22:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pKFVJ-0008OI-L7;
	Tue, 24 Jan 2023 09:22:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1pKFVH-0008O8-JW
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 09:22:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+vGPL3t7x0ZTTn+JcSfRpy6oNQ7qVuwhxxvkTrP6QDY=; b=Ibmszvaoqpa5eBcAOGJiTRdQw5
 x2Be/MMd0XGEKgRx5AsNHuaLgddrcVUe4pIPYCIY+c51jgwmCcg/6m3KxjeijXuE3hz4c3lyGWrPL
 vZExmYgIEssV3dpFlel3W8KP0rS58eBN/RVjQTD86cop6NazizusuI8pBgpunGXG1CXc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+vGPL3t7x0ZTTn+JcSfRpy6oNQ7qVuwhxxvkTrP6QDY=; b=L
 nebzD7P1wDK2LH3T0kYxGGkNHJCnnRhqWxdf6VCT1gAqly9l50yNQoS1SuQ8FMwEM0v0xGareVWrn
 4BKGFoFqZ0nt9fLaJF+cWdMkDTNYpkeQg6tl5IZr1eaWj+np8hkXxjcsynzm8NUecktUF8EfSFiQv
 7hkiGwWxDaNkL0sA=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKFVD-0000RR-MD for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 09:22:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674552123; x=1706088123;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=wxKIF/99Ri3GiEigSkOBHgZ5gP/C+ybJIZIppG8VLyY=;
 b=GnU95rk2pXAfjS5r+YcPR8RH2Pzg1neAau2+L0kIdlOxra0CuzB38aW6
 +Ti4eGO5kz02a4UwPXaAoVFTpY8M7TezxcLraWcBjSjKeNsn9AOQlemvm
 zup+mQq8FPrIpY2JTsegyA4M9GUKfnCn6J1qCdnAJSvVV/fbLddUFUsti
 05V6jcHYKDwHrWvvHQbYwVz4OgCPoT59VUwwa4+D3TuIkfoCUTG/CAiSt
 UK3FAQamSaW0GyB6JX9HQ+7SQb49Q26Czqzm5/4pBEVoP4Tl4X+HedpTr
 ouo2p+SGdRRii1dWtvoQMdGjsaZ5S50nAgrl3/kP3chc4f4ZIBni0J6OM g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="309831184"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="309831184"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 01:21:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="770240211"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="770240211"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jan 2023 01:21:53 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pKFUx-0006J0-2R;
 Tue, 24 Jan 2023 09:21:47 +0000
Date: Tue, 24 Jan 2023 17:21:32 +0800
From: kernel test robot <lkp@intel.com>
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <202301241722.heaHD2ks-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: tree:
 https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
 ericvh/for-next head: 2245aefc0a6f35eb2a9ad0afa8958c3d2fa694ea commit:
 5cdf58fbef6262fac9937fc9373d6f8b8f80f5fd
 [11/12] writeback [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pKFVD-0000RR-MD
Subject: [V9fs-developer] [ericvh-v9fs:ericvh/for-next 11/12]
 fs/9p/vfs_inode_dotl.c:240:28: warning: variable 'v9inode' set but not used
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
config: i386-defconfig (https://download.01.org/0day-ci/archive/20230124/202301241722.heaHD2ks-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git/commit/?id=5cdf58fbef6262fac9937fc9373d6f8b8f80f5fd
        git remote add ericvh-v9fs https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
        git fetch --no-tags ericvh-v9fs ericvh/for-next
        git checkout 5cdf58fbef6262fac9937fc9373d6f8b8f80f5fd
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 olddefconfig
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash fs/9p/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   fs/9p/vfs_inode_dotl.c: In function 'v9fs_vfs_atomic_open_dotl':
>> fs/9p/vfs_inode_dotl.c:240:28: warning: variable 'v9inode' set but not used [-Wunused-but-set-variable]
     240 |         struct v9fs_inode *v9inode;
         |                            ^~~~~~~


vim +/v9inode +240 fs/9p/vfs_inode_dotl.c

e43ae79c5402708 Miklos Szeredi      2012-06-05  227  
d95852777bc8ba6 Al Viro             2012-06-22  228  static int
e43ae79c5402708 Miklos Szeredi      2012-06-05  229  v9fs_vfs_atomic_open_dotl(struct inode *dir, struct dentry *dentry,
6e195b0f7c8e509 Dominique Martinet  2021-11-02  230  			  struct file *file, unsigned int flags, umode_t omode)
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  231  {
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  232  	int err = 0;
d4ef4e358104489 Eric W. Biederman   2013-01-30  233  	kgid_t gid;
d3fb612076eebec Al Viro             2011-07-23  234  	umode_t mode;
5cdf58fbef6262f Eric Van Hensbergen 2022-12-18  235  	int p9_omode = v9fs_open_to_dotl_flags(flags);
7880b43bdfc9580 Al Viro             2017-01-12  236  	const unsigned char *name = NULL;
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  237  	struct p9_qid qid;
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  238  	struct inode *inode;
6b39f6d22fbf67c Aneesh Kumar K.V    2011-02-28  239  	struct p9_fid *fid = NULL;
6b39f6d22fbf67c Aneesh Kumar K.V    2011-02-28 @240  	struct v9fs_inode *v9inode;
5cdf58fbef6262f Eric Van Hensbergen 2022-12-18  241  	struct p9_fid *dfid = NULL, *ofid = NULL;
6b39f6d22fbf67c Aneesh Kumar K.V    2011-02-28  242  	struct v9fs_session_info *v9ses;
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  243  	struct posix_acl *pacl = NULL, *dacl = NULL;
e43ae79c5402708 Miklos Szeredi      2012-06-05  244  	struct dentry *res = NULL;
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  245  
00699ad8571afd7 Al Viro             2016-07-05  246  	if (d_in_lookup(dentry)) {
00cd8dd3bf95f2c Al Viro             2012-06-10  247  		res = v9fs_vfs_lookup(dir, dentry, 0);
e43ae79c5402708 Miklos Szeredi      2012-06-05  248  		if (IS_ERR(res))
d95852777bc8ba6 Al Viro             2012-06-22  249  			return PTR_ERR(res);
e43ae79c5402708 Miklos Szeredi      2012-06-05  250  
e43ae79c5402708 Miklos Szeredi      2012-06-05  251  		if (res)
e43ae79c5402708 Miklos Szeredi      2012-06-05  252  			dentry = res;
e43ae79c5402708 Miklos Szeredi      2012-06-05  253  	}
e43ae79c5402708 Miklos Szeredi      2012-06-05  254  
e43ae79c5402708 Miklos Szeredi      2012-06-05  255  	/* Only creates */
2b0143b5c986be1 David Howells       2015-03-17  256  	if (!(flags & O_CREAT) || d_really_is_positive(dentry))
e45198a6ac24bd2 Al Viro             2012-06-10  257  		return	finish_no_open(file, res);
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  258  
e43ae79c5402708 Miklos Szeredi      2012-06-05  259  	v9ses = v9fs_inode2v9ses(dir);
e43ae79c5402708 Miklos Szeredi      2012-06-05  260  
7880b43bdfc9580 Al Viro             2017-01-12  261  	name = dentry->d_name.name;
6e195b0f7c8e509 Dominique Martinet  2021-11-02  262  	p9_debug(P9_DEBUG_VFS, "name:%s flags:0x%x mode:0x%x\n",
5d3851530d6d685 Joe Perches         2011-11-28  263  		 name, flags, omode);
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  264  
77d5a6b7d9924e2 Al Viro             2016-05-29  265  	dfid = v9fs_parent_fid(dentry);
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  266  	if (IS_ERR(dfid)) {
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  267  		err = PTR_ERR(dfid);
5d3851530d6d685 Joe Perches         2011-11-28  268  		p9_debug(P9_DEBUG_VFS, "fid lookup failed %d\n", err);
d95852777bc8ba6 Al Viro             2012-06-22  269  		goto out;
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  270  	}
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  271  
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  272  	/* clone a fid to use for creation */
7d50a29fe43848b Al Viro             2016-08-03  273  	ofid = clone_fid(dfid);
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  274  	if (IS_ERR(ofid)) {
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  275  		err = PTR_ERR(ofid);
5d3851530d6d685 Joe Perches         2011-11-28  276  		p9_debug(P9_DEBUG_VFS, "p9_client_walk failed %d\n", err);
d95852777bc8ba6 Al Viro             2012-06-22  277  		goto out;
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  278  	}
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  279  
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  280  	gid = v9fs_get_fsgid_for_create(dir);
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  281  
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  282  	mode = omode;
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  283  	/* Update mode based on ACL value */
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  284  	err = v9fs_acl_mode(dir, &mode, &dacl, &pacl);
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  285  	if (err) {
5cdf58fbef6262f Eric Van Hensbergen 2022-12-18  286  		p9_debug(P9_DEBUG_VFS, "Failed to get acl values in create %d\n",
5d3851530d6d685 Joe Perches         2011-11-28  287  			 err);
dafbe689736f62c Dominique Martinet  2022-06-12  288  		goto out;
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  289  	}
5cdf58fbef6262f Eric Van Hensbergen 2022-12-18  290  
5cdf58fbef6262f Eric Van Hensbergen 2022-12-18  291  	if ((v9ses->cache >= CACHE_WRITEBACK) && (p9_omode & P9_OWRITE)) {
5cdf58fbef6262f Eric Van Hensbergen 2022-12-18  292  		p9_omode = (p9_omode & !P9_OWRITE) | P9_ORDWR;
5cdf58fbef6262f Eric Van Hensbergen 2022-12-18  293  		p9_debug(P9_DEBUG_CACHE,
5cdf58fbef6262f Eric Van Hensbergen 2022-12-18  294  			"write-only file with writeback enabled, creating w/ O_RDWR\n");
5cdf58fbef6262f Eric Van Hensbergen 2022-12-18  295  	}
5cdf58fbef6262f Eric Van Hensbergen 2022-12-18  296  	err = p9_client_create_dotl(ofid, name, p9_omode, mode, gid, &qid);
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  297  	if (err < 0) {
5cdf58fbef6262f Eric Van Hensbergen 2022-12-18  298  		p9_debug(P9_DEBUG_VFS, "p9_client_open_dotl failed in create %d\n",
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  299  			 err);
dafbe689736f62c Dominique Martinet  2022-06-12  300  		goto out;
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  301  	}
d28c61f0e08aab9 Aneesh Kumar K.V    2011-02-28  302  	v9fs_invalidate_inode_attr(dir);
af7542fc8ac678c Aneesh Kumar K.V    2011-01-10  303  
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  304  	/* instantiate inode and assign the unopened fid to the dentry */
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  305  	fid = p9_client_walk(dfid, 1, &name, 1);
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  306  	if (IS_ERR(fid)) {
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  307  		err = PTR_ERR(fid);
5d3851530d6d685 Joe Perches         2011-11-28  308  		p9_debug(P9_DEBUG_VFS, "p9_client_walk failed %d\n", err);
dafbe689736f62c Dominique Martinet  2022-06-12  309  		goto out;
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  310  	}
ed80fcfac2565fa Aneesh Kumar K.V    2011-07-06  311  	inode = v9fs_get_new_inode_from_fid(v9ses, fid, dir->i_sb);
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  312  	if (IS_ERR(inode)) {
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  313  		err = PTR_ERR(inode);
5d3851530d6d685 Joe Perches         2011-11-28  314  		p9_debug(P9_DEBUG_VFS, "inode creation failed %d\n", err);
dafbe689736f62c Dominique Martinet  2022-06-12  315  		goto out;
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  316  	}
3592ac444017996 Al Viro             2013-01-31  317  	/* Now set the ACL based on the default value */
3592ac444017996 Al Viro             2013-01-31  318  	v9fs_set_create_acl(inode, fid, dacl, pacl);
3592ac444017996 Al Viro             2013-01-31  319  
dafbe689736f62c Dominique Martinet  2022-06-12  320  	v9fs_fid_add(dentry, &fid);
5441ae5eb3614d3 Aneesh Kumar K.V    2011-07-25  321  	d_instantiate(dentry, inode);
af7542fc8ac678c Aneesh Kumar K.V    2011-01-10  322  
6b39f6d22fbf67c Aneesh Kumar K.V    2011-02-28  323  	v9inode = V9FS_I(inode);
af7542fc8ac678c Aneesh Kumar K.V    2011-01-10  324  	/* Since we are opening a file, assign the open fid to the file */
be12af3ef5e61eb Al Viro             2018-06-08  325  	err = finish_open(file, dentry, generic_file_open);
30d904947459cca Al Viro             2012-06-22  326  	if (err)
dafbe689736f62c Dominique Martinet  2022-06-12  327  		goto out;
30d904947459cca Al Viro             2012-06-22  328  	file->private_data = ofid;
6b4c4697d65b965 Eric Van Hensbergen 2022-12-08  329  #ifdef CONFIG_9P_FSCACHE
6b4c4697d65b965 Eric Van Hensbergen 2022-12-08  330  	if (v9ses->cache == CACHE_FSCACHE)
24e42e32d347f07 David Howells       2020-11-18  331  		fscache_use_cookie(v9fs_inode_cookie(v9inode),
24e42e32d347f07 David Howells       2020-11-18  332  				   file->f_mode & FMODE_WRITE);
6b4c4697d65b965 Eric Van Hensbergen 2022-12-08  333  #endif
5cdf58fbef6262f Eric Van Hensbergen 2022-12-18  334  	v9fs_fid_add_modes(ofid, v9ses->flags, v9ses->cache, flags);
dafbe689736f62c Dominique Martinet  2022-06-12  335  	v9fs_open_fid_add(inode, &ofid);
73a09dd94377e4b Al Viro             2018-06-08  336  	file->f_mode |= FMODE_CREATED;
e43ae79c5402708 Miklos Szeredi      2012-06-05  337  out:
dafbe689736f62c Dominique Martinet  2022-06-12  338  	p9_fid_put(dfid);
dafbe689736f62c Dominique Martinet  2022-06-12  339  	p9_fid_put(ofid);
dafbe689736f62c Dominique Martinet  2022-06-12  340  	p9_fid_put(fid);
5fa6300ae0ccf76 Al Viro             2013-01-31  341  	v9fs_put_acl(dacl, pacl);
e43ae79c5402708 Miklos Szeredi      2012-06-05  342  	dput(res);
d95852777bc8ba6 Al Viro             2012-06-22  343  	return err;
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  344  }
53c06f4e0a4621b Aneesh Kumar K.V    2011-01-10  345  

:::::: The code at line 240 was first introduced by commit
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
