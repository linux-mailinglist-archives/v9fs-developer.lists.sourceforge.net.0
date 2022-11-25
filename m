Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D11F6382DE
	for <lists+v9fs-developer@lfdr.de>; Fri, 25 Nov 2022 04:49:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oyPiN-0001bm-GN;
	Fri, 25 Nov 2022 03:49:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <viro@ftp.linux.org.uk>) id 1oyPiL-0001bg-VY
 for v9fs-developer@lists.sourceforge.net;
 Fri, 25 Nov 2022 03:49:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I2TD8YnyUVRKaNNBGvfs3pUWZDwIFw5kNMaApqkurhc=; b=gg62KMjeQy29X4ke0/3gg8h7k5
 Ha/VLEiSGFIrZxipnaP/RB5jpMOTbUCogXpCpcww8xFBJRrurIqs+54RyXs2P9ASylao/I987d75V
 f5V6eNkQmvT9ACXpMi2f1c7Jp/+Kl80BMxqPw1SQ9101XxiroyNbKu4RJls1zsWh1Wkk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I2TD8YnyUVRKaNNBGvfs3pUWZDwIFw5kNMaApqkurhc=; b=FWgdGi9ETAZiEEZZG0gq9atebj
 7dsuRgRQtC3SnJNSaGJK6BdxzN53qOFePRaYUeiCdCQk1b8RdAMD8z1xT/lizUl6HAdopVQJbDJGw
 TkpZGsCCD5EgfMFCWVRP+qXDKliD/A+lcNwhebUnxicHNfAFvPMhAde8QgHPxGD+1a44=;
Received: from zeniv.linux.org.uk ([62.89.141.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oyPiL-0008QB-2h for v9fs-developer@lists.sourceforge.net;
 Fri, 25 Nov 2022 03:49:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=I2TD8YnyUVRKaNNBGvfs3pUWZDwIFw5kNMaApqkurhc=; b=LNV2e8UbAEOQw/T25Fn0zcJFtt
 fNpKOR7AmYQmyKebyHLdQkC/VRgO+jC6IaDUeHAjw4EL0DsbkFM6Iqc2wV96JeHEovMJKBTXDZmhv
 ZBw2xsCMnqYGB42wL+ylBtaiFvmXn4+q48vjcw+DG90eOjgZU2/9rcOSLcqiIsrxuWaDw1SMMEzx7
 t7JkkxZCAEJ97Erz/o4KvknT6QpkedMLh6PAKj8gLWbA+2hlrTJV8E/LgdR9rDoShxcJCoTpm912V
 ABkJ97xsSUr6RQZKyn8cXzXou9+2BUXYywgtCMyz0UPAL3QT8v6w4dSbpiqIhsoN4SGRxmTtMbclh
 leUGm6UQ==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat
 Linux)) id 1oyPhG-006aFN-28; Fri, 25 Nov 2022 03:48:14 +0000
Date: Fri, 25 Nov 2022 03:48:14 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <Y4A6/ozhUncxbimi@ZenIV>
References: <20221120210004.381842-1-jlayton@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221120210004.381842-1-jlayton@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Nov 20, 2022 at 03:59:57PM -0500, Jeff Layton wrote:
 > --- /dev/null > +++ b/include/linux/filelock.h > @@ -0,0 +1,428 @@ > +/*
 SPDX-License-Identifier: GPL-2.0 */ > +#ifndef _LINUX_FILELOCK_H > +#define
 _LINUX_FILELOCK_H > + > +#include <linux/list.h> [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1oyPiL-0008QB-2h
Subject: Re: [V9fs-developer] [PATCH] filelock: move file locking
 definitions to separate header file
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Martin Brandenburg <martin@omnibond.com>,
 "Darrick J. Wong" <djwong@kernel.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 David Howells <dhowells@redhat.com>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Marc Dionne <marc.dionne@auristor.com>, linux-xfs@vger.kernel.org, hch@lst.de,
 Mike Marshall <hubcap@omnibond.com>, linux-cifs@vger.kernel.org,
 Andreas Gruenbacher <agruenba@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Mark Fasheh <mark@fasheh.com>, linux-afs@lists.infradead.org,
 cluster-devel@redhat.com, Christine Caulfield <ccaulfie@redhat.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Namjae Jeon <linkinjeon@kernel.org>, devel@lists.orangefs.org,
 Shyam Prasad N <sprasad@microsoft.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 Tom Talpey <tom@talpey.com>, linux-fsdevel@vger.kernel.org,
 David Teigland <teigland@redhat.com>, Joel Becker <jlbec@evilplan.org>,
 ceph-devel@vger.kernel.org, Xiubo Li <xiubli@redhat.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, linux-nfs@vger.kernel.org,
 Paulo Alcantara <pc@cjr.nz>, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, Ronnie Sahlberg <lsahlber@redhat.com>,
 Steve French <sfrench@samba.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Chuck Lever <chuck.lever@oracle.com>, Anna Schumaker <anna@kernel.org>,
 Bob Peterson <rpeterso@redhat.com>, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sun, Nov 20, 2022 at 03:59:57PM -0500, Jeff Layton wrote:

> --- /dev/null
> +++ b/include/linux/filelock.h
> @@ -0,0 +1,428 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _LINUX_FILELOCK_H
> +#define _LINUX_FILELOCK_H
> +
> +#include <linux/list.h>
> +#include <linux/nfs_fs_i.h>

Umm... I'd add a comment along the lines of "struct file_lock has
a BS union by fs type; NFS side of things needs nfs_fs_i.h"

> +struct lock_manager_operations {
> +	void *lm_mod_owner;
> +	fl_owner_t (*lm_get_owner)(fl_owner_t);

Probably take fl_owner_t to some more neutral header...

> +#define locks_inode(f) file_inode(f)

Why do we still have that one, anyway?  Separate patch, obviously,
but I would take Occam's Razor to that entity...

> +struct files_struct;
> +extern void show_fd_locks(struct seq_file *f,
> +			 struct file *filp, struct files_struct *files);

If anything, that would be better off as fl_owner_t...  Again, a separate
patch.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
