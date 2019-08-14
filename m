Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EE08D2A1
	for <lists+v9fs-developer@lfdr.de>; Wed, 14 Aug 2019 14:01:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hxrxu-00020L-Nf; Wed, 14 Aug 2019 12:01:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lkp@intel.com>)
 id 1hxrxs-000202-Em; Wed, 14 Aug 2019 12:01:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z8eKzOncGz19IJajHGRQ39XewheDQ2ojCLoROl5qnZw=; b=LGt2t8dmJnsMKiMQOezeL7JiOg
 vLytez5hJ/6zLC/sPVg2Z0SnhBZSfteZsQvq0nQd8Qnxby9CrvJF0lqIcv+APd9c5WxuAofG+tVho
 SGKdsgNhoaDiEsLdneN+6LatfSxWtEY7UGq9ZZ7gd/6hP4wKuOFSC8PLQWAmmx3JQelE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z8eKzOncGz19IJajHGRQ39XewheDQ2ojCLoROl5qnZw=; b=f3J0TXQabURGoZLQv7QoQA5uBW
 5OdCXRA1i9vBOAFQUXeMfN9XcUKOqgzmZ/f7O9CZUPzeceFUvKliZmz4ptIv1cKo+2AYBa31Yl245
 IGppiYVJjlTxCm8HrpGA3mP+cVMAMPIFYUgKp4vu5mAkXKxpxZZNr3CpFKZoIbqEcW+8=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hxrxl-003p4s-4S; Wed, 14 Aug 2019 12:01:16 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 05:01:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,385,1559545200"; 
 d="gz'50?scan'50,208,50";a="179025067"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 14 Aug 2019 05:00:46 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hxrxN-000ER5-O8; Wed, 14 Aug 2019 20:00:45 +0800
Date: Wed, 14 Aug 2019 19:59:57 +0800
From: kbuild test robot <lkp@intel.com>
To: Mark Salyzyn <salyzyn@android.com>
Message-ID: <201908141935.iswsiyzF%lkp@intel.com>
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
X-Headers-End: 1hxrxl-003p4s-4S
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
config: nds32-allmodconfig (attached as .config)
compiler: nds32le-linux-gcc (GCC) 8.1.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        GCC_VERSION=8.1.0 make.cross ARCH=nds32 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   fs/ubifs/xattr.c:326:9: error: conflicting types for 'ubifs_xattr_get'
    ssize_t ubifs_xattr_get(struct inode *host, const char *name, void *buf,
            ^~~~~~~~~~~~~~~
   In file included from fs/ubifs/xattr.c:46:
   fs/ubifs/ubifs.h:2006:9: note: previous declaration of 'ubifs_xattr_get' was here
    ssize_t ubifs_xattr_get(struct inode *host, const char *name, void *buf,
            ^~~~~~~~~~~~~~~
   fs/ubifs/xattr.c: In function 'xattr_get':
   fs/ubifs/xattr.c:678:9: error: too few arguments to function 'ubifs_xattr_get'
     return ubifs_xattr_get(inode, name, buffer, size);
            ^~~~~~~~~~~~~~~
   fs/ubifs/xattr.c:326:9: note: declared here
    ssize_t ubifs_xattr_get(struct inode *host, const char *name, void *buf,
            ^~~~~~~~~~~~~~~
   fs/ubifs/xattr.c: At top level:
>> fs/ubifs/xattr.c:699:9: error: initialization of 'int (*)(const struct xattr_handler *, struct dentry *, struct inode *, const char *, void *, size_t,  int)' {aka 'int (*)(const struct xattr_handler *, struct dentry *, struct inode *, const char *, void *, unsigned int,  int)'} from incompatible pointer type 'int (*)(const struct xattr_handler *, struct dentry *, struct inode *, const char *, void *, size_t)' {aka 'int (*)(const struct xattr_handler *, struct dentry *, struct inode *, const char *, void *, unsigned int)'} [-Werror=incompatible-pointer-types]
     .get = xattr_get,
            ^~~~~~~~~
   fs/ubifs/xattr.c:699:9: note: (near initialization for 'ubifs_user_xattr_handler.get')
   fs/ubifs/xattr.c:705:9: error: initialization of 'int (*)(const struct xattr_handler *, struct dentry *, struct inode *, const char *, void *, size_t,  int)' {aka 'int (*)(const struct xattr_handler *, struct dentry *, struct inode *, const char *, void *, unsigned int,  int)'} from incompatible pointer type 'int (*)(const struct xattr_handler *, struct dentry *, struct inode *, const char *, void *, size_t)' {aka 'int (*)(const struct xattr_handler *, struct dentry *, struct inode *, const char *, void *, unsigned int)'} [-Werror=incompatible-pointer-types]
     .get = xattr_get,
            ^~~~~~~~~
   fs/ubifs/xattr.c:705:9: note: (near initialization for 'ubifs_trusted_xattr_handler.get')
   fs/ubifs/xattr.c:712:9: error: initialization of 'int (*)(const struct xattr_handler *, struct dentry *, struct inode *, const char *, void *, size_t,  int)' {aka 'int (*)(const struct xattr_handler *, struct dentry *, struct inode *, const char *, void *, unsigned int,  int)'} from incompatible pointer type 'int (*)(const struct xattr_handler *, struct dentry *, struct inode *, const char *, void *, size_t)' {aka 'int (*)(const struct xattr_handler *, struct dentry *, struct inode *, const char *, void *, unsigned int)'} [-Werror=incompatible-pointer-types]
     .get = xattr_get,
            ^~~~~~~~~
   fs/ubifs/xattr.c:712:9: note: (near initialization for 'ubifs_security_xattr_handler.get')
   fs/ubifs/xattr.c: In function 'xattr_get':
   fs/ubifs/xattr.c:679:1: warning: control reaches end of non-void function [-Wreturn-type]
    }
    ^
   cc1: some warnings being treated as errors

vim +699 fs/ubifs/xattr.c

2b88fc21cae91e Andreas Gruenbacher 2016-04-22  669  
ade46c3a6029de Richard Weinberger  2016-09-19  670  static int xattr_get(const struct xattr_handler *handler,
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  671  			   struct dentry *dentry, struct inode *inode,
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  672  			   const char *name, void *buffer, size_t size)
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  673  {
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  674  	dbg_gen("xattr '%s', ino %lu ('%pd'), buf size %zd", name,
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  675  		inode->i_ino, dentry, size);
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  676  
17ce1eb0b64eb2 Richard Weinberger  2016-07-31  677  	name = xattr_full_name(handler, name);
ade46c3a6029de Richard Weinberger  2016-09-19 @678  	return ubifs_xattr_get(inode, name, buffer, size);
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  679  }
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  680  
ade46c3a6029de Richard Weinberger  2016-09-19  681  static int xattr_set(const struct xattr_handler *handler,
5930122683dff5 Al Viro             2016-05-27  682  			   struct dentry *dentry, struct inode *inode,
5930122683dff5 Al Viro             2016-05-27  683  			   const char *name, const void *value,
5930122683dff5 Al Viro             2016-05-27  684  			   size_t size, int flags)
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  685  {
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  686  	dbg_gen("xattr '%s', host ino %lu ('%pd'), size %zd",
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  687  		name, inode->i_ino, dentry, size);
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  688  
17ce1eb0b64eb2 Richard Weinberger  2016-07-31  689  	name = xattr_full_name(handler, name);
17ce1eb0b64eb2 Richard Weinberger  2016-07-31  690  
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  691  	if (value)
d8db5b1ca9d4c5 Xiaolei Li          2017-06-23  692  		return ubifs_xattr_set(inode, name, value, size, flags, true);
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  693  	else
ade46c3a6029de Richard Weinberger  2016-09-19  694  		return ubifs_xattr_remove(inode, name);
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  695  }
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  696  
dfaf8d2aeca482 Ben Dooks           2016-06-21  697  static const struct xattr_handler ubifs_user_xattr_handler = {
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  698  	.prefix = XATTR_USER_PREFIX,
ade46c3a6029de Richard Weinberger  2016-09-19 @699  	.get = xattr_get,
ade46c3a6029de Richard Weinberger  2016-09-19  700  	.set = xattr_set,
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  701  };
2b88fc21cae91e Andreas Gruenbacher 2016-04-22  702  

:::::: The code at line 699 was first introduced by commit
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
