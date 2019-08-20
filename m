Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1FD967EA
	for <lists+v9fs-developer@lfdr.de>; Tue, 20 Aug 2019 19:45:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1i08C2-00071s-Hq; Tue, 20 Aug 2019 17:45:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lkp@intel.com>)
 id 1i08C0-00071V-FE; Tue, 20 Aug 2019 17:45:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ww/nIX9GONSe2tQZNC+F5m17S3jbGxWMCUyD8+ONBR4=; b=ahDfa7KcYW6K0S94k6ukZLdDvQ
 eSJ5ByWlbP0rhdIob7XiH6ZgwtqUXcgXZ9W0DNRs1jmk/WKhskjlV6jJMLSe/zxgVrfxyvz+AFIqK
 +HW6aip3yLcstOq3+NffY+8US5s6BUw4bzYIuozy8OCwEZGxbvMNVdPmqg/ACfztAw3c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ww/nIX9GONSe2tQZNC+F5m17S3jbGxWMCUyD8+ONBR4=; b=BDGYVRpg2kBrXcdj2C3bE8mWHW
 2Ua9ZEoT0hFDNyDsVlD9VUbFeBHNqgb4/hJ0XVA+oa/veaS1l3HDxqSLTZT3teRljzyR3x+TcXDmW
 ZHldRUPc6hqWcT5LhPg5lotSQBoAa7zKxAOblBoDEjZ6CDcu1IwYKn/UycFGMgy4hImQ=;
Received: from mga01.intel.com ([192.55.52.88])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i08Bw-00ADuv-Kz; Tue, 20 Aug 2019 17:45:12 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 10:45:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; 
 d="gz'50?scan'50,208,50";a="378650505"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 20 Aug 2019 10:44:46 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i08Ba-000DC3-8V; Wed, 21 Aug 2019 01:44:46 +0800
Date: Wed, 21 Aug 2019 01:43:50 +0800
From: kbuild test robot <lkp@intel.com>
To: Mark Salyzyn <salyzyn@android.com>
Message-ID: <201908210110.Lxwg6dmP%lkp@intel.com>
References: <20190819183305.153583-1-salyzyn@android.com>
MIME-Version: 1.0
In-Reply-To: <20190819183305.153583-1-salyzyn@android.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: schaufler-ca.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1i08Bw-00ADuv-Kz
Content-Disposition: inline
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] [PATCH v5] Add flags option to get xattr
 method paired to __vfs_getxattr
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Hugh Dickins <hughd@google.com>,
 Mike Marshall <hubcap@omnibond.com>, James Morris <jmorris@namei.org>,
 devel@lists.orangefs.org, Eric Van Hensbergen <ericvh@gmail.com>,
 Joel Becker <jlbec@evilplan.org>, Anna Schumaker <anna.schumaker@netapp.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 kbuild-all@01.org, Jan Kara <jack@suse.com>,
 Casey Schaufler <casey@schaufler-ca.com>, Dave Kleikamp <shaggy@kernel.org>,
 linux-doc@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 Chao Yu <yuchao0@huawei.com>, Mimi Zohar <zohar@linux.ibm.com>,
 linux-cifs@vger.kernel.org, Paul Moore <paul@paul-moore.com>,
 "Darrick J. Wong" <darrick.wong@oracle.com>,
 Eric Sandeen <sandeen@sandeen.net>, kernel-team@android.com,
 selinux@vger.kernel.org, Brian Foster <bfoster@redhat.com>,
 reiserfs-devel@vger.kernel.org, Tejun Heo <tj@kernel.org>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Miklos Szeredi <miklos@szeredi.hu>, linux-f2fs-devel@lists.sourceforge.net,
 Benjamin Coddington <bcodding@redhat.com>, linux-integrity@vger.kernel.org,
 Martin Brandenburg <martin@omnibond.com>, Chris Mason <clm@fb.com>,
 linux-mtd@lists.infradead.org, linux-afs@lists.infradead.org,
 Jonathan Corbet <corbet@lwn.net>, Vyacheslav Dubeyko <slava@dubeyko.com>,
 Allison Henderson <allison.henderson@oracle.com>,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 Stephen Smalley <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 Gao Xiang <gaoxiang25@huawei.com>, Eric Paris <eparis@parisplace.org>,
 ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org, linux-mm@kvack.org,
 samba-technical@lists.samba.org, linux-xfs@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>,
 ocfs2-devel@oss.oracle.com, jfs-discussion@lists.sourceforge.net,
 Eric Biggers <ebiggers@google.com>, Jeff Mahoney <jeffm@suse.com>,
 linux-unionfs@vger.kernel.org, David Howells <dhowells@redhat.com>,
 Joseph Qi <joseph.qi@linux.alibaba.com>,
 Andreas Dilger <adilger.kernel@dilger.ca>, Mark Salyzyn <salyzyn@android.com>,
 devel@driverdev.osuosl.org, "J. Bruce Fields" <bfields@redhat.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Sage Weil <sage@redhat.com>,
 Richard Weinberger <richard@nod.at>, Mark Fasheh <mark@fasheh.com>,
 linux-security-module@vger.kernel.org, cluster-devel@redhat.com,
 Steve French <sfrench@samba.org>, v9fs-developer@lists.sourceforge.net,
 Bharath Vedartham <linux.bhar@gmail.com>, Jann Horn <jannh@google.com>,
 ecryptfs@vger.kernel.org, Josef Bacik <josef@toxicpanda.com>,
 Dave Chinner <dchinner@redhat.com>, David Sterba <dsterba@suse.com>,
 Artem Bityutskiy <dedekind1@gmail.com>, netdev@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, stable@vger.kernel.org,
 Tyler Hicks <tyhicks@canonical.com>,
 Ernesto =?unknown-8bit?Q?A=2E_Fern=C3=A1ndez?=
 <ernesto.mnd.fernandez@gmail.com>, Phillip Lougher <phillip@squashfs.org.uk>,
 David Woodhouse <dwmw2@infradead.org>, linux-btrfs@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Mark,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on linus/master]
[cannot apply to v5.3-rc5 next-20190820]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Mark-Salyzyn/Add-flags-option-to-get-xattr-method-paired-to-__vfs_getxattr/20190820-220307
config: i386-allmodconfig (attached as .config)
compiler: gcc-7 (Debian 7.4.0-10) 7.4.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=i386 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   security/smack/smack_lsm.c: In function 'smk_fetch':
>> security/smack/smack_lsm.c:308:26: error: 'buffer' undeclared (first use in this function); did you mean 'user'?
      skp = smk_import_entry(buffer, rc);
                             ^~~~~~
                             user
   security/smack/smack_lsm.c:308:26: note: each undeclared identifier is reported only once for each function it appears in
--
   security/integrity/evm/evm_main.c: In function 'evm_find_protected_xattrs':
>> security/integrity/evm/evm_main.c:103:8: error: 'inode' undeclared (first use in this function)
     if (!(inode->i_opflags & IOP_XATTR))
           ^~~~~
   security/integrity/evm/evm_main.c:103:8: note: each undeclared identifier is reported only once for each function it appears in
>> security/integrity/evm/evm_main.c:109:14: warning: assignment makes integer from pointer without a cast [-Wint-conversion]
      args.flags = xattr->name;
                 ^
--
   In file included from include/linux/stat.h:7:0,
                    from include/linux/module.h:10,
                    from fs/9p/acl.c:15:
   fs/9p/acl.c: In function 'v9fs_xattr_set_acl':
>> fs/9p/acl.c:258:14: error: 'inode' undeclared (first use in this function)
     if (S_ISLNK(inode->i_mode))
                 ^
   include/uapi/linux/stat.h:21:23: note: in definition of macro 'S_ISLNK'
    #define S_ISLNK(m) (((m) & S_IFMT) == S_IFLNK)
                          ^
   fs/9p/acl.c:258:14: note: each undeclared identifier is reported only once for each function it appears in
     if (S_ISLNK(inode->i_mode))
                 ^
   include/uapi/linux/stat.h:21:23: note: in definition of macro 'S_ISLNK'
    #define S_ISLNK(m) (((m) & S_IFMT) == S_IFLNK)
                          ^
--
   fs/afs/xattr.c: In function 'afs_xattr_get_cell':
>> fs/afs/xattr.c:334:6: error: 'size' undeclared (first use in this function); did you mean 'ksize'?
     if (size == 0)
         ^~~~
         ksize
   fs/afs/xattr.c:334:6: note: each undeclared identifier is reported only once for each function it appears in
--
   fs/ecryptfs/crypto.c: In function 'ecryptfs_write_metadata_to_xattr':
>> fs/ecryptfs/crypto.c:1131:23: error: 'args' undeclared (first use in this function); did you mean 'abs'?
     rc = __vfs_setxattr(&args);
                          ^~~~
                          abs
   fs/ecryptfs/crypto.c:1131:23: note: each undeclared identifier is reported only once for each function it appears in
--
   fs/ubifs/xattr.c: In function 'xattr_get':
>> fs/ubifs/xattr.c:676:63: error: 'name' undeclared (first use in this function); did you mean 'page'?
     return ubifs_xattr_get(args->inode, xattr_full_name(handler, name),
                                                                  ^~~~
                                                                  page
   fs/ubifs/xattr.c:676:63: note: each undeclared identifier is reported only once for each function it appears in
   fs/ubifs/xattr.c: In function 'xattr_set':
>> fs/ubifs/xattr.c:686:6: error: 'value' undeclared (first use in this function); did you mean 'false'?
     if (value)
         ^~~~~
         false
   fs/ubifs/xattr.c:694:1: warning: control reaches end of non-void function [-Wreturn-type]
    }
    ^
   fs/ubifs/xattr.c: In function 'xattr_get':
   fs/ubifs/xattr.c:678:1: warning: control reaches end of non-void function [-Wreturn-type]
    }
    ^
--
   fs/xfs/libxfs/xfs_attr.c: In function 'xfs_attr_set':
>> fs/xfs/libxfs/xfs_attr.c:327:13: warning: assignment discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
     args.value = value;
                ^

vim +308 security/smack/smack_lsm.c

d166c8024d620d Casey Schaufler     2014-08-27  271  
e114e473771c84 Casey Schaufler     2008-02-04  272  /**
e114e473771c84 Casey Schaufler     2008-02-04  273   * smk_fetch - Fetch the smack label from a file.
1a28979b322bb2 Lukasz Pawelczyk    2014-11-26  274   * @name: type of the label (attribute)
e114e473771c84 Casey Schaufler     2008-02-04  275   * @ip: a pointer to the inode
e114e473771c84 Casey Schaufler     2008-02-04  276   * @dp: a pointer to the dentry
e114e473771c84 Casey Schaufler     2008-02-04  277   *
e774ad683f425a Lukasz Pawelczyk    2015-04-20  278   * Returns a pointer to the master list entry for the Smack label,
e774ad683f425a Lukasz Pawelczyk    2015-04-20  279   * NULL if there was no label to fetch, or an error code.
e114e473771c84 Casey Schaufler     2008-02-04  280   */
2f823ff8bec03a Casey Schaufler     2013-05-22  281  static struct smack_known *smk_fetch(const char *name, struct inode *ip,
2f823ff8bec03a Casey Schaufler     2013-05-22  282  					struct dentry *dp)
e114e473771c84 Casey Schaufler     2008-02-04  283  {
e114e473771c84 Casey Schaufler     2008-02-04  284  	int rc;
2f823ff8bec03a Casey Schaufler     2013-05-22  285  	struct smack_known *skp = NULL;
7d823b0879d4e2 Mark Salyzyn        2019-08-19  286  	struct xattr_gs_args args;
e114e473771c84 Casey Schaufler     2008-02-04  287  
5d6c31910bc071 Andreas Gruenbacher 2016-09-29  288  	if (!(ip->i_opflags & IOP_XATTR))
e774ad683f425a Lukasz Pawelczyk    2015-04-20  289  		return ERR_PTR(-EOPNOTSUPP);
e114e473771c84 Casey Schaufler     2008-02-04  290  
7d823b0879d4e2 Mark Salyzyn        2019-08-19  291  	memset(&args, 0, sizeof(args));
7d823b0879d4e2 Mark Salyzyn        2019-08-19  292  	args.dentry = dp;
7d823b0879d4e2 Mark Salyzyn        2019-08-19  293  	args.inode = ip;
7d823b0879d4e2 Mark Salyzyn        2019-08-19  294  	args.name = name;
7d823b0879d4e2 Mark Salyzyn        2019-08-19  295  	args.buffer = kzalloc(SMK_LONGLABEL, GFP_KERNEL);
7d823b0879d4e2 Mark Salyzyn        2019-08-19  296  	args.size = SMK_LONGLABEL;
7d823b0879d4e2 Mark Salyzyn        2019-08-19  297  	args.flags = XATTR_NOSECURITY;
7d823b0879d4e2 Mark Salyzyn        2019-08-19  298  
7d823b0879d4e2 Mark Salyzyn        2019-08-19  299  	if (args.buffer == NULL)
e774ad683f425a Lukasz Pawelczyk    2015-04-20  300  		return ERR_PTR(-ENOMEM);
e114e473771c84 Casey Schaufler     2008-02-04  301  
7d823b0879d4e2 Mark Salyzyn        2019-08-19  302  	rc = __vfs_getxattr(&args);
e774ad683f425a Lukasz Pawelczyk    2015-04-20  303  	if (rc < 0)
e774ad683f425a Lukasz Pawelczyk    2015-04-20  304  		skp = ERR_PTR(rc);
e774ad683f425a Lukasz Pawelczyk    2015-04-20  305  	else if (rc == 0)
e774ad683f425a Lukasz Pawelczyk    2015-04-20  306  		skp = NULL;
e774ad683f425a Lukasz Pawelczyk    2015-04-20  307  	else
2f823ff8bec03a Casey Schaufler     2013-05-22 @308  		skp = smk_import_entry(buffer, rc);
f7112e6c9abf1c Casey Schaufler     2012-05-06  309  
f7112e6c9abf1c Casey Schaufler     2012-05-06  310  	kfree(buffer);
f7112e6c9abf1c Casey Schaufler     2012-05-06  311  
2f823ff8bec03a Casey Schaufler     2013-05-22  312  	return skp;
e114e473771c84 Casey Schaufler     2008-02-04  313  }
e114e473771c84 Casey Schaufler     2008-02-04  314  

:::::: The code at line 308 was first introduced by commit
:::::: 2f823ff8bec03a1e6f9e11fd0c4d54e4c7d09532 Smack: Improve access check performance

:::::: TO: Casey Schaufler <casey@schaufler-ca.com>
:::::: CC: Casey Schaufler <casey@schaufler-ca.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
