Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB988CB74
	for <lists+v9fs-developer@lfdr.de>; Wed, 14 Aug 2019 07:58:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hxmIY-0003fq-7f; Wed, 14 Aug 2019 05:58:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lkp@intel.com>)
 id 1hxmIW-0003fd-QK; Wed, 14 Aug 2019 05:58:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fOCOgTwv/ieg62IoIGDF182xCECO31o8GBHwGK5w3ms=; b=DksFIMi55JOyBCvhhe2vT5GnzM
 5766swbtG6dNPForJJ63k7iKYz913v8qYaTTOCNeh3Xzq8X7enO8FuElWInAllvOPHLoX+U8IO6qL
 jhYB8f7U8Zzx8IRh9RJfKaKBpcFBUQ8l/wn/4bS/5wmNXzDB2Z9Bgj1QyuqhpErBFM+8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fOCOgTwv/ieg62IoIGDF182xCECO31o8GBHwGK5w3ms=; b=VwZDTh30JOD7J8yyhKfTyDV9ZK
 nhHVADKaq01iC566AEJGUuCleiUeK60Fx9fxUcqc+XUV9bARKbOqrbvPxpj+mVj4F/OM/R5x1nKlh
 siU9CNZOTHD78C7yX0XMMsq/jzWz05VAlz6JUpmTtjjHhOMD1l5EqutkPA6RcU1RZlLg=;
Received: from mga06.intel.com ([134.134.136.31])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hxmIU-003ZT3-Me; Wed, 14 Aug 2019 05:58:12 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 22:58:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,384,1559545200"; 
 d="gz'50?scan'50,208,50";a="170625161"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 13 Aug 2019 22:57:47 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hxmI7-0007VE-5K; Wed, 14 Aug 2019 13:57:47 +0800
Date: Wed, 14 Aug 2019 13:57:30 +0800
From: kbuild test robot <lkp@intel.com>
To: Mark Salyzyn <salyzyn@android.com>
Message-ID: <201908141340.zUiNVpi0%lkp@intel.com>
References: <20190813145527.26289-1-salyzyn@android.com>
MIME-Version: 1.0
In-Reply-To: <20190813145527.26289-1-salyzyn@android.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hxmIU-003ZT3-Me
Content-Disposition: inline
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] [PATCH v2] Add flags option to get xattr
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Dave Kleikamp <shaggy@kernel.org>,
 jfs-discussion@lists.sourceforge.net, linux-integrity@vger.kernel.org,
 Martin Brandenburg <martin@omnibond.com>, samba-technical@lists.samba.org,
 Chao Yu <yuchao0@huawei.com>, Mimi Zohar <zohar@linux.ibm.com>,
 Adrian Hunter <adrian.hunter@intel.com>, David Howells <dhowells@redhat.com>,
 Chris Mason <clm@fb.com>, "David S. Miller" <davem@davemloft.net>,
 Andreas Dilger <adilger.kernel@dilger.ca>, ocfs2-devel@oss.oracle.com,
 Eric Paris <eparis@parisplace.org>, netdev@vger.kernel.org,
 Tyler Hicks <tyhicks@canonical.com>, linux-afs@lists.infradead.org,
 Mike Marshall <hubcap@omnibond.com>, devel@driverdev.osuosl.org,
 linux-xfs@vger.kernel.org, Andreas Gruenbacher <agruenba@redhat.com>,
 Sage Weil <sage@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard@nod.at>, Mark Fasheh <mark@fasheh.com>,
 linux-unionfs@vger.kernel.org, Hugh Dickins <hughd@google.com>,
 James Morris <jmorris@namei.org>, cluster-devel@redhat.com,
 Joseph Qi <joseph.qi@linux.alibaba.com>,
 Vyacheslav Dubeyko <slava@dubeyko.com>,
 Casey Schaufler <casey@schaufler-ca.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 kernel-team@android.com, linux-mm@kvack.org, devel@lists.orangefs.org,
 Serge Hallyn <serge@hallyn.com>,
 Ernesto =?unknown-8bit?Q?A=2E_Fern=C3=A1ndez?=
 <ernesto.mnd.fernandez@gmail.com>, Gao Xiang <gaoxiang25@huawei.com>,
 linux-cifs@vger.kernel.org, Eric Van Hensbergen <ericvh@gmail.com>,
 ecryptfs@vger.kernel.org, linux-erofs@lists.ozlabs.org,
 Josef Bacik <josef@toxicpanda.com>,
 "Darrick J. Wong" <darrick.wong@oracle.com>, reiserfs-devel@vger.kernel.org,
 Tejun Heo <tj@kernel.org>, Joel Becker <jlbec@evilplan.org>,
 linux-mtd@lists.infradead.org, David Sterba <dsterba@suse.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, ceph-devel@vger.kernel.org,
 selinux@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>,
 Paul Moore <paul@paul-moore.com>, linux-nfs@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, Theodore Ts'o <tytso@mit.edu>,
 linux-fsdevel@vger.kernel.org, Stephen Smalley <sds@tycho.nsa.gov>,
 Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Artem Bityutskiy <dedekind1@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Mark Salyzyn <salyzyn@android.com>, Steve French <sfrench@samba.org>,
 linux-security-module@vger.kernel.org, kbuild-all@01.org,
 Jan Kara <jack@suse.com>, Bob Peterson <rpeterso@redhat.com>,
 Phillip Lougher <phillip@squashfs.org.uk>,
 David Woodhouse <dwmw2@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-btrfs@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Mark,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on linus/master]
[cannot apply to v5.3-rc4 next-20190813]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Mark-Salyzyn/Add-flags-option-to-get-xattr-method-paired-to-__vfs_getxattr/20190814-124805
config: sh-allmodconfig (attached as .config)
compiler: sh4-linux-gcc (GCC) 7.4.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        GCC_VERSION=7.4.0 make.cross ARCH=sh 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> fs/ubifs/xattr.c:326:9: error: conflicting types for 'ubifs_xattr_get'
    ssize_t ubifs_xattr_get(struct inode *host, const char *name, void *buf,
            ^~~~~~~~~~~~~~~
   In file included from fs/ubifs/xattr.c:46:0:
   fs/ubifs/ubifs.h:2006:9: note: previous declaration of 'ubifs_xattr_get' was here
    ssize_t ubifs_xattr_get(struct inode *host, const char *name, void *buf,
            ^~~~~~~~~~~~~~~
   fs/ubifs/xattr.c: In function 'xattr_get':
>> fs/ubifs/xattr.c:678:9: error: too few arguments to function 'ubifs_xattr_get'
     return ubifs_xattr_get(inode, name, buffer, size);
            ^~~~~~~~~~~~~~~
   fs/ubifs/xattr.c:326:9: note: declared here
    ssize_t ubifs_xattr_get(struct inode *host, const char *name, void *buf,
            ^~~~~~~~~~~~~~~
   fs/ubifs/xattr.c: At top level:
   fs/ubifs/xattr.c:699:9: error: initialization from incompatible pointer type [-Werror=incompatible-pointer-types]
     .get = xattr_get,
            ^~~~~~~~~
   fs/ubifs/xattr.c:699:9: note: (near initialization for 'ubifs_user_xattr_handler.get')
   fs/ubifs/xattr.c:705:9: error: initialization from incompatible pointer type [-Werror=incompatible-pointer-types]
     .get = xattr_get,
            ^~~~~~~~~
   fs/ubifs/xattr.c:705:9: note: (near initialization for 'ubifs_trusted_xattr_handler.get')
   fs/ubifs/xattr.c:712:9: error: initialization from incompatible pointer type [-Werror=incompatible-pointer-types]
     .get = xattr_get,
            ^~~~~~~~~
   fs/ubifs/xattr.c:712:9: note: (near initialization for 'ubifs_security_xattr_handler.get')
   fs/ubifs/xattr.c: In function 'xattr_get':
   fs/ubifs/xattr.c:679:1: warning: control reaches end of non-void function [-Wreturn-type]
    }
    ^
   cc1: some warnings being treated as errors

vim +/ubifs_xattr_get +326 fs/ubifs/xattr.c

1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  325  
ade46c3a6029de Richard Weinberger  2016-09-19 @326  ssize_t ubifs_xattr_get(struct inode *host, const char *name, void *buf,
ac76fdcb4aadfd Mark Salyzyn        2019-08-13  327  			size_t size, int flags)
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  328  {
ce23e640133484 Al Viro             2016-04-11  329  	struct inode *inode;
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  330  	struct ubifs_info *c = host->i_sb->s_fs_info;
f4f61d2cc6d878 Richard Weinberger  2016-11-11  331  	struct fscrypt_name nm = { .disk_name = FSTR_INIT((char *)name, strlen(name))};
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  332  	struct ubifs_inode *ui;
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  333  	struct ubifs_dent_node *xent;
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  334  	union ubifs_key key;
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  335  	int err;
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  336  
f4f61d2cc6d878 Richard Weinberger  2016-11-11  337  	if (fname_len(&nm) > UBIFS_MAX_NLEN)
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  338  		return -ENAMETOOLONG;
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  339  
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  340  	xent = kmalloc(UBIFS_MAX_XENT_NODE_SZ, GFP_NOFS);
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  341  	if (!xent)
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  342  		return -ENOMEM;
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  343  
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  344  	xent_key_init(c, &key, host->i_ino, &nm);
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  345  	err = ubifs_tnc_lookup_nm(c, &key, xent, &nm);
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  346  	if (err) {
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  347  		if (err == -ENOENT)
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  348  			err = -ENODATA;
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  349  		goto out_unlock;
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  350  	}
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  351  
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  352  	inode = iget_xattr(c, le64_to_cpu(xent->inum));
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  353  	if (IS_ERR(inode)) {
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  354  		err = PTR_ERR(inode);
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  355  		goto out_unlock;
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  356  	}
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  357  
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  358  	ui = ubifs_inode(inode);
6eb61d587f4515 Richard Weinberger  2018-07-12  359  	ubifs_assert(c, inode->i_size == ui->data_len);
6eb61d587f4515 Richard Weinberger  2018-07-12  360  	ubifs_assert(c, ubifs_inode(host)->xattr_size > ui->data_len);
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  361  
ab92a20bce3b4c Dongsheng Yang      2015-08-18  362  	mutex_lock(&ui->ui_mutex);
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  363  	if (buf) {
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  364  		/* If @buf is %NULL we are supposed to return the length */
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  365  		if (ui->data_len > size) {
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  366  			err = -ERANGE;
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  367  			goto out_iput;
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  368  		}
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  369  
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  370  		memcpy(buf, ui->data, ui->data_len);
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  371  	}
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  372  	err = ui->data_len;
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  373  
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  374  out_iput:
ab92a20bce3b4c Dongsheng Yang      2015-08-18  375  	mutex_unlock(&ui->ui_mutex);
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  376  	iput(inode);
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  377  out_unlock:
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  378  	kfree(xent);
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  379  	return err;
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  380  }
1e51764a3c2ac0 Artem Bityutskiy    2008-07-14  381  

:::::: The code at line 326 was first introduced by commit
:::::: ade46c3a6029dea49dbc6c7734b0f6a78d3f104c ubifs: Export xattr get and set functions

:::::: TO: Richard Weinberger <richard@nod.at>
:::::: CC: Richard Weinberger <richard@nod.at>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
