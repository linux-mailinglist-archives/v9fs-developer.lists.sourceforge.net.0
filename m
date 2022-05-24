Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAAE53271F
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 May 2022 12:12:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ntRWc-000299-HL; Tue, 24 May 2022 10:12:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <david@fromorbit.com>) id 1ntRWa-00028u-Ui
 for v9fs-developer@lists.sourceforge.net; Tue, 24 May 2022 10:12:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xjn3woZafueIvznyfSNHf0sDJNqxP0Hu9ovL6jXS4IY=; b=cjv/NSonpLvNEnFf5ajs8AKB3r
 SRyPP11ibF0rvSI7leWVk/l7QvsHocs/yv/BA76nHbRGquCmKoci1Wc7umqU1D5sfWK6SwLb1aNgc
 Gtl7JeybwBwDvfJo0rzVnHws4TZWkf27k/vZMKYr9tKXc0CaM0JmWZI18GgfvT+nbw3A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xjn3woZafueIvznyfSNHf0sDJNqxP0Hu9ovL6jXS4IY=; b=QgwEMKZ4kHYns+kD1OmgI7RPDg
 OJkwe9lTO0EEFJQNNYTaYFaPTtHr/a8XcFCfgMNQRMcWwx1bZlsv1n5YuVmjDYhk/2rvYswC/CdCl
 EEZWcBEIV12LJDbD5s6eXwX/sPKMe49d9EgmZJsljqspizvYIdBwi38QMn6lK5nik60o=;
Received: from mail105.syd.optusnet.com.au ([211.29.132.249])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1ntRWZ-004hmo-St
 for v9fs-developer@lists.sourceforge.net; Tue, 24 May 2022 10:12:25 +0000
Received: from dread.disaster.area (pa49-181-2-147.pa.nsw.optusnet.com.au
 [49.181.2.147])
 by mail105.syd.optusnet.com.au (Postfix) with ESMTPS id 901C410E66B1;
 Tue, 24 May 2022 20:12:06 +1000 (AEST)
Received: from dave by dread.disaster.area with local (Exim 4.92.3)
 (envelope-from <david@fromorbit.com>)
 id 1ntRWH-00Fn9P-Gs; Tue, 24 May 2022 20:12:05 +1000
Date: Tue, 24 May 2022 20:12:05 +1000
From: Dave Chinner <david@fromorbit.com>
To: David Howells <dhowells@redhat.com>
Message-ID: <20220524101205.GI2306852@dread.disaster.area>
References: <165305805651.4094995.7763502506786714216.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <165305805651.4094995.7763502506786714216.stgit@warthog.procyon.org.uk>
X-Optus-CM-Score: 0
X-Optus-CM-Analysis: v=2.4 cv=e9dl9Yl/ c=1 sm=1 tr=0 ts=628caf7c
 a=ivVLWpVy4j68lT4lJFbQgw==:117 a=ivVLWpVy4j68lT4lJFbQgw==:17
 a=kj9zAlcOel0A:10 a=oZkIemNP1mAA:10 a=7-415B0cAAAA:8
 a=OnzENxpBzhtb90kDdFQA:9 a=CjuIK1q_8ugA:10 a=biEYGPWJfzWAr4FL6Ov7:22
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, May 20, 2022 at 03:47:36PM +0100,
 David Howells wrote:
 > While randstruct was satisfied with using an open-coded "void *" offset
 > cast for the netfs_i_context <-> inode casting, __builtin_obj [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.29.132.249 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ntRWZ-004hmo-St
Subject: Re: [V9fs-developer] [PATCH v2] netfs: Fix gcc-12 warning by
 embedding vfs inode in netfs_i_context
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux-doc@vger.kernel.org,
 jlayton@kernel.org, Christian Schoenebeck <linux_oss@crudebyte.com>,
 William Kucharski <william.kucharski@oracle.com>,
 linux-hardening@vger.kernel.org, Marc Dionne <marc.dionne@auristor.com>,
 linux-afs@lists.infradead.org, linux-cifs@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Steve French <smfrench@gmail.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, keescook@chromium.org,
 Eric Van Hensbergen <ericvh@gmail.com>, ceph-devel@vger.kernel.org,
 Xiubo Li <xiubli@redhat.com>, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, May 20, 2022 at 03:47:36PM +0100, David Howells wrote:
> While randstruct was satisfied with using an open-coded "void *" offset
> cast for the netfs_i_context <-> inode casting, __builtin_object_size() as
> used by FORTIFY_SOURCE was not as easily fooled.  This was causing the
> following complaint[1] from gcc v12:
> 
> In file included from ./include/linux/string.h:253,
>                  from ./include/linux/ceph/ceph_debug.h:7,
>                  from fs/ceph/inode.c:2:
> In function 'fortify_memset_chk',
>     inlined from 'netfs_i_context_init' at ./include/linux/netfs.h:326:2,
>     inlined from 'ceph_alloc_inode' at fs/ceph/inode.c:463:2:
> ./include/linux/fortify-string.h:242:25: warning: call to '__write_overflow_field' declared with attribute warning:
> detected write beyond size of field (1st parameter); maybe use struct_group()? [-Wattribute-warning]
>   242 |                         __write_overflow_field(p_size_field, size);
>       |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Fix this by embedding a struct inode into struct netfs_i_context (which
> should perhaps be renamed to struct netfs_inode).  The struct inode
> vfs_inode fields are then removed from the 9p, afs, ceph and cifs inode
> structs and vfs_inode is then simply changed to "netfs.inode" in those
> filesystems.
> 
> Further, rename netfs_i_context to netfs_inode, get rid of the
> netfs_inode() function that converted a netfs_i_context pointer to an inode
> pointer (that can now be done with &ctx->inode) and rename the
> netfs_i_context() function to netfs_inode() (which is now a wrapper around
> container_of()).
> 
> Most of the changes were done with:
> 
>   perl -p -i -e 's/vfs_inode/netfs.inode/'g \
> 	`git grep -l 'vfs_inode' -- fs/{9p,afs,ceph,cifs}/*.[ch]`
> 
> Kees suggested doing it with a pair structure[2] and a special declarator
> to insert that into the network filesystem's inode wrapper[3], but I think
> it's cleaner to embed it - and then it doesn't matter if struct
> randomisation reorders things.

I can't help but think the code would be so much cleaner with a
wrapper to covert from the filesysetm structure to the vfs inode.
e.g. in XFS we use VFS_I(xfs_inode) to get the struct inode and
XFS_I(inode) to get the xfs_inode from the struct inode.
i.e.:

/* Convert from vfs inode to xfs inode */
static inline struct xfs_inode *XFS_I(struct inode *inode)
{
        return container_of(inode, struct xfs_inode, i_vnode);
}

/* convert from xfs inode to vfs inode */
static inline struct inode *VFS_I(struct xfs_inode *ip)
{
        return &ip->i_vnode;
}

Then we end up with stuff like this reading:

> diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
> index e28ddf763b3b..0129de2ea31a 100644
> --- a/fs/9p/v9fs.c
> +++ b/fs/9p/v9fs.c
> @@ -625,7 +625,7 @@ static void v9fs_inode_init_once(void *foo)
>  	struct v9fs_inode *v9inode = (struct v9fs_inode *)foo;
>  
>  	memset(&v9inode->qid, 0, sizeof(v9inode->qid));
> -	inode_init_once(&v9inode->vfs_inode);
> +	inode_init_once(&v9inode->netfs.inode);

	inode_init_once(VFS_I(v9inode));

>  }
>  
>  /**
> diff --git a/fs/9p/v9fs.h b/fs/9p/v9fs.h
> index ec0e8df3b2eb..1b219c21d15e 100644
> --- a/fs/9p/v9fs.h
> +++ b/fs/9p/v9fs.h
> @@ -109,11 +109,7 @@ struct v9fs_session_info {
>  #define V9FS_INO_INVALID_ATTR 0x01
>  
>  struct v9fs_inode {
> -	struct {
> -		/* These must be contiguous */
> -		struct inode	vfs_inode;	/* the VFS's inode record */
> -		struct netfs_i_context netfs_ctx; /* Netfslib context */
> -	};
> +	struct netfs_inode netfs; /* Netfslib context and vfs inode */
>  	struct p9_qid qid;
>  	unsigned int cache_validity;
>  	struct p9_fid *writeback_fid;
> @@ -122,13 +118,13 @@ struct v9fs_inode {
>  
>  static inline struct v9fs_inode *V9FS_I(const struct inode *inode)
>  {
> -	return container_of(inode, struct v9fs_inode, vfs_inode);
> +	return container_of(inode, struct v9fs_inode, netfs.inode);
>  }

Looky dat - there's already the V9FS_I() function for going from the
VFS inode to the 9p inode....

I think that having a VFS_I() for every filesystem would make all
this code a lot cleaner, and it would be easier for everyone to
understand without having to know the exact details of how the netfs
inode encapsulates the struct inode. Consistency of code conventions
across multiple filesystems is a good thing. And if this netfs inode
structure ever has to be changed in future, it's just a few wrapper
functions that need updating, not lots of code...

Cheers,

Dave.
-- 
Dave Chinner
david@fromorbit.com


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
