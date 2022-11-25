Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6C3638B1A
	for <lists+v9fs-developer@lfdr.de>; Fri, 25 Nov 2022 14:24:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oyYgY-00051D-Nh;
	Fri, 25 Nov 2022 13:24:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jlayton@kernel.org>) id 1oyYgW-000513-67
 for v9fs-developer@lists.sourceforge.net;
 Fri, 25 Nov 2022 13:24:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ohsolls9DG7p4nHgUl8d/8tWg3FXUi0ogi48k3T7g60=; b=DGQAwOXToAjsl78xJVBVv+18l/
 HxLRNcdKqBDU7BMGQNqp1phXOTDrrfBB7lpLEUsNb+7+5ZZ/UdKqA9uAbm/xJ0H4PtWtLlC9qgs/e
 l7VJAlm25P/OgELx31+KF1jbXvz5Tiv9+6fOBLvQzRsiGr4BWfM56DSkKO10Br0sANug=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ohsolls9DG7p4nHgUl8d/8tWg3FXUi0ogi48k3T7g60=; b=cfe6/gmLzA7y61kXv+HSNgz+6k
 bmy/c/U9F+4m4QhAoBNzWJVpIjb4SsS/7pc+zU2v1c3ab9P9d8uwcbVcj2dadqHScr3BB3jo7PHH6
 WO7pC12QWsq+4sRvHC1Ly3i/wJEqWUHtfqhvxuMWMsCmlySsw264klwsoJsq91VN4SVQ=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oyYgR-00A2Ui-UA for v9fs-developer@lists.sourceforge.net;
 Fri, 25 Nov 2022 13:24:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4995162404;
 Fri, 25 Nov 2022 13:23:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC855C433C1;
 Fri, 25 Nov 2022 13:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669382630;
 bh=EGJ1sbVmh8zfuee638fIF/XO+8/weuDlINdqpi5zZtE=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=ITYmgIWGeb/7tfCFFc4kVDpIzqmupq1CVJap5fhBl/OT/PtkT4fvz+47vLok2k5y+
 9CRsV+JeWA0KEW85LVZu0FSIZep4yXbkGkq4EGBqpjWl9J4R07ZmdftvaN+jO6GvVh
 UV+8CnZQsig9drGP5ocCBKCwdeh2CEjv01ouksVCHxKjEnYvQ0VQOwyYDVIftWVHKE
 GsZuPwqfzHVqHsCgI2NSiNlqWlCXseI+0MB2Oq49i12gvBk+OTgmkxmQgpHo2z4CO0
 KgxgBErlyuKDTZUoexdSzNPrYs0i7nPI8jo2JLFO4nl05cBpvzph4ae7XpMCDCSp+4
 bOGw2Qy+6YgWg==
Message-ID: <1d474f53670771f324745f597ec94b63a006d687.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: Al Viro <viro@zeniv.linux.org.uk>
Date: Fri, 25 Nov 2022 08:23:45 -0500
In-Reply-To: <Y4A6/ozhUncxbimi@ZenIV>
References: <20221120210004.381842-1-jlayton@kernel.org>
 <Y4A6/ozhUncxbimi@ZenIV>
User-Agent: Evolution 3.46.1 (3.46.1-1.fc37) 
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 2022-11-25 at 03:48 +0000, Al Viro wrote: > On Sun, 
 Nov 20, 2022 at 03:59:57PM -0500, Jeff Layton wrote: > > > --- /dev/null
 > > +++ b/include/linux/filelock.h > > @@ -0,0 +1,428 @@ > > +/* SP [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oyYgR-00A2Ui-UA
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

On Fri, 2022-11-25 at 03:48 +0000, Al Viro wrote:
> On Sun, Nov 20, 2022 at 03:59:57PM -0500, Jeff Layton wrote:
> 
> > --- /dev/null
> > +++ b/include/linux/filelock.h
> > @@ -0,0 +1,428 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +#ifndef _LINUX_FILELOCK_H
> > +#define _LINUX_FILELOCK_H
> > +
> > +#include <linux/list.h>
> > +#include <linux/nfs_fs_i.h>
> 
> Umm... I'd add a comment along the lines of "struct file_lock has
> a BS union by fs type; NFS side of things needs nfs_fs_i.h"
> 

Ok.

> > +struct lock_manager_operations {
> > +	void *lm_mod_owner;
> > +	fl_owner_t (*lm_get_owner)(fl_owner_t);
> 
> Probably take fl_owner_t to some more neutral header...
> 

I left it in fs.h for now. Some of the file_operations prototypes need
that typedef, and I figure that anyone who is including filelock.h will
almost certainly need to include fs.h anyway. We could move it into a
separate header too, but it's probably not worth it.

HCH mentioned years ago though that we should just get rid of fl_owner_t
altogether and just use 'void *'. I didn't do it at the time because I
was focused on other changes, but this might be a good time to change
it.

> > +#define locks_inode(f) file_inode(f)
> 
> Why do we still have that one, anyway?  Separate patch, obviously,
> but I would take Occam's Razor to that entity...
> 

I can spin up a patch to nuke that too. I count only 30 callsites
remaining anyway.

> > +struct files_struct;
> > +extern void show_fd_locks(struct seq_file *f,
> > +			 struct file *filp, struct files_struct *files);
> 
> If anything, that would be better off as fl_owner_t...  Again, a separate
> patch.

I'm not sure what you mean here. This prototype hasn't changed, and is
only called from procfs.

-- 
Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
