Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E0D8B2A5
	for <lists+v9fs-developer@lfdr.de>; Tue, 13 Aug 2019 10:39:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hxSKi-0007Lt-Uz; Tue, 13 Aug 2019 08:39:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lkp@intel.com>)
 id 1hxSKh-0007Lf-Fi; Tue, 13 Aug 2019 08:39:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JASCt/neRrnErmJ72J8EqAsHgeCyQlYbwuEGe7ZgOWA=; b=I7Pf4iUC/LRP9CD63fHsfbqOE+
 x8FVXtin+kiDV8azuJDVEHOC3wmtAT/zokJksV2FofXV4dnaDQecm24PG77VwYU8rE/b3Iigt6cwS
 uaoUYfjlDf5kJ/VFBm7G2qHcGmeKgLwY+58bhuQoZVBRDzZvXWHq3cCVVxlV7PydWfgM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JASCt/neRrnErmJ72J8EqAsHgeCyQlYbwuEGe7ZgOWA=; b=ay+FGl/9oow5thW8hd8dqjiMCR
 SmZ10Ig9jwuKJd3n/EoH17v1bHR2+OE+7rcSj7rGfUI6Gn+umQEgIP57r8E9rPgMmyHl8bPid0Uvg
 pfGqOU2EyHQKdB792kp9BulieifmLjVXknIC5ovI5GRSB+dbw7pcCzWCNCPNcwvr/oM8=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hxSKf-004BSu-9Y; Tue, 13 Aug 2019 08:39:07 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 01:29:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,380,1559545200"; 
 d="gz'50?scan'50,208,50";a="166989974"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 13 Aug 2019 01:29:01 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hxSAu-0005lk-Hh; Tue, 13 Aug 2019 16:29:00 +0800
Date: Tue, 13 Aug 2019 16:28:45 +0800
From: kbuild test robot <lkp@intel.com>
To: Mark Salyzyn <salyzyn@android.com>
Message-ID: <201908131644.yb5jmvKK%lkp@intel.com>
References: <20190812193320.200472-1-salyzyn@android.com>
MIME-Version: 1.0
In-Reply-To: <20190812193320.200472-1-salyzyn@android.com>
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
X-Headers-End: 1hxSKf-004BSu-9Y
Content-Disposition: inline
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] [PATCH] Add flags option to get xattr method
 paired to __vfs_getxattr
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Martin Brandenburg <martin@omnibond.com>, samba-technical@lists.samba.org,
 Chao Yu <yuchao0@huawei.com>, Mimi Zohar <zohar@linux.ibm.com>,
 linux-unionfs@vger.kernel.org, David Howells <dhowells@redhat.com>,
 Chris Mason <clm@fb.com>, "David S. Miller" <davem@davemloft.net>,
 Andreas Dilger <adilger.kernel@dilger.ca>, ocfs2-devel@oss.oracle.com,
 Eric Paris <eparis@parisplace.org>, netdev@vger.kernel.org,
 Tyler Hicks <tyhicks@canonical.com>, linux-afs@lists.infradead.org,
 Mike Marshall <hubcap@omnibond.com>, linux-xfs@vger.kernel.org,
 Andreas Gruenbacher <agruenba@redhat.com>, Sage Weil <sage@redhat.com>,
 Miklos Szeredi <miklos@szeredi.hu>, Richard Weinberger <richard@nod.at>,
 Mark Fasheh <mark@fasheh.com>, Hugh Dickins <hughd@google.com>,
 James Morris <jmorris@namei.org>, cluster-devel@redhat.com,
 selinux@vger.kernel.org, Vyacheslav Dubeyko <slava@dubeyko.com>,
 Casey Schaufler <casey@schaufler-ca.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 kernel-team@android.com, linux-mm@kvack.org, devel@lists.orangefs.org,
 Serge Hallyn <serge@hallyn.com>,
 Ernesto =?unknown-8bit?Q?A=2E_Fern=C3=A1ndez?=
 <ernesto.mnd.fernandez@gmail.com>, linux-cifs@vger.kernel.org,
 Eric Van Hensbergen <ericvh@gmail.com>, ecryptfs@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, reiserfs-devel@vger.kernel.org,
 Tejun Heo <tj@kernel.org>, Joel Becker <jlbec@evilplan.org>,
 linux-mtd@lists.infradead.org, David Sterba <dsterba@suse.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Paul Moore <paul@paul-moore.com>, linux-nfs@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, Theodore Ts'o <tytso@mit.edu>,
 linux-fsdevel@vger.kernel.org, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Mathieu Malaterre <malat@debian.org>, Stephen Smalley <sds@tycho.nsa.gov>,
 "Darrick J. Wong" <darrick.wong@oracle.com>, Jeff Layton <jlayton@kernel.org>,
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
[cannot apply to v5.3-rc4]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Mark-Salyzyn/Add-flags-option-to-get-xattr-method-paired-to-__vfs_getxattr/20190813-124612
config: c6x-allyesconfig (attached as .config)
compiler: c6x-elf-gcc (GCC) 7.4.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        GCC_VERSION=7.4.0 make.cross ARCH=c6x 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> fs/ubifs/xattr.c:699:9: error: initialization from incompatible pointer type [-Werror=incompatible-pointer-types]
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
   cc1: some warnings being treated as errors
--
>> drivers/staging//erofs/xattr.c:492:9: error: initialization from incompatible pointer type [-Werror=incompatible-pointer-types]
     .get = erofs_xattr_generic_get,
            ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/staging//erofs/xattr.c:492:9: note: (near initialization for 'erofs_xattr_user_handler.get')
   drivers/staging//erofs/xattr.c:499:9: error: initialization from incompatible pointer type [-Werror=incompatible-pointer-types]
     .get = erofs_xattr_generic_get,
            ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/staging//erofs/xattr.c:499:9: note: (near initialization for 'erofs_xattr_trusted_handler.get')
   drivers/staging//erofs/xattr.c:506:9: error: initialization from incompatible pointer type [-Werror=incompatible-pointer-types]
     .get = erofs_xattr_generic_get,
            ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/staging//erofs/xattr.c:506:9: note: (near initialization for 'erofs_xattr_security_handler.get')
   cc1: some warnings being treated as errors
--
>> fs//afs/xattr.c:156:12: error: initialization from incompatible pointer type [-Werror=incompatible-pointer-types]
     .get    = afs_xattr_get_acl,
               ^~~~~~~~~~~~~~~~~
   fs//afs/xattr.c:156:12: note: (near initialization for 'afs_xattr_afs_acl_handler.get')
   fs//afs/xattr.c:327:9: error: initialization from incompatible pointer type [-Werror=incompatible-pointer-types]
     .get = afs_xattr_get_yfs,
            ^~~~~~~~~~~~~~~~~
   fs//afs/xattr.c:327:9: note: (near initialization for 'afs_xattr_yfs_handler.get')
   cc1: some warnings being treated as errors

vim +699 fs/ubifs/xattr.c

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
