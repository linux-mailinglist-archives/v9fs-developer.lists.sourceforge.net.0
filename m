Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D1D63A66E
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Nov 2022 11:54:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozbm4-0007og-0y;
	Mon, 28 Nov 2022 10:54:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jlayton@kernel.org>) id 1ozbm2-0007oQ-KF
 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 10:54:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HFSfvZBWbmmmn+DtghfH8OwuEUqshP/fuBXIphxE0J0=; b=HyAo8jUjfy5sfwH4QXo331QzbY
 Hqre7R7j3gyuUa2vuSK2Ayy+B+P4I0mf6sfXy+TuV5n8ZtUMrCHLx0g+NT+sfVmUiF28aKWg4vYv6
 PFRu1BVhVDLtzGsrIOIGlvfh9asPHfba6Oi/6B1yVsQtHuDgONRjAABzLiEn0bahadZY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HFSfvZBWbmmmn+DtghfH8OwuEUqshP/fuBXIphxE0J0=; b=lutCwv6sq64SdKdiCM922Ntc9C
 M5JGjFZh4GzWg7/PVocfDNjxYhDDq84ph7k2dsMV0xGwlEc2+n85UtKMxJnfZLKhMJjjWvOauBwTv
 9nvVqYIWqRzTAYJc6TKVz5QEwv6Egc4bP6lrIJowmyicA335/VJZkOsHgPaKZT0maJ3w=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozbm1-00047o-Uz for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 10:54:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7851661089;
 Mon, 28 Nov 2022 10:54:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02102C433D6;
 Mon, 28 Nov 2022 10:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669632839;
 bh=TCH4X0vYXDYZIjposZLwuZH5bK38a+ap9JQQcvpsmrQ=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=NiNiD/NIPJwPZZvubu2no8wdsdDDjItBldgVSQaImG5cxRrl7n6IQYZBc0nV5JpBQ
 xVnrX+B1v8v8ehMk7vofau11mkaKHiqPTVjq0mOg6uPLSQDNcWU6ra7XZX/5SPPGhe
 3NTDUsRcNblciTaLJIOHNpisMvl41lRYHx3bKhRvui4ToVySHHAMBffDg6ovppKkDe
 qsAeUfpeq06hna20AvMvcPdONgQBIVeU0n576fCL1sfDRo1XzYu64pPEHg4b2C61ur
 Lr2NVgPJPqeEYUjJtggTrBXIJXDvpIqIvFPOspCvYeix5kRtYTD6U+z1lN7Xo1zCxs
 ZI6W95+J1AmkQ==
Message-ID: <6a093484bb977355db40c70ffa51386f3d4ed57b.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: Al Viro <viro@zeniv.linux.org.uk>
Date: Mon, 28 Nov 2022 05:53:54 -0500
In-Reply-To: <Y4Dw65Nzt4bX9esd@ZenIV>
References: <20221120210004.381842-1-jlayton@kernel.org>
 <Y4A6/ozhUncxbimi@ZenIV>
 <1d474f53670771f324745f597ec94b63a006d687.camel@kernel.org>
 <Y4Dw65Nzt4bX9esd@ZenIV>
User-Agent: Evolution 3.46.1 (3.46.1-1.fc37) 
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 2022-11-25 at 16:44 +0000, Al Viro wrote: > On Fri, 
 Nov 25, 2022 at 08:23:45AM -0500, Jeff Layton wrote: > > > I left it in fs.h
 for now. Some of the file_operations prototypes need > > that t [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ozbm1-00047o-Uz
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

On Fri, 2022-11-25 at 16:44 +0000, Al Viro wrote:
> On Fri, Nov 25, 2022 at 08:23:45AM -0500, Jeff Layton wrote:
> 
> > I left it in fs.h for now. Some of the file_operations prototypes need
> > that typedef, and I figure that anyone who is including filelock.h will
> > almost certainly need to include fs.h anyway. We could move it into a
> > separate header too, but it's probably not worth it.
> > 
> > HCH mentioned years ago though that we should just get rid of fl_owner_t
> > altogether and just use 'void *'. I didn't do it at the time because I
> > was focused on other changes, but this might be a good time to change
> > it.
> 
> Might be...
> 
> > > > +extern void show_fd_locks(struct seq_file *f,
> > > > +			 struct file *filp, struct files_struct *files);
> > > 
> > > If anything, that would be better off as fl_owner_t...  Again, a separate
> > > patch.
> > 
> > I'm not sure what you mean here. This prototype hasn't changed, and is
> > only called from procfs.
> 
> Take a look at that function and its caller.  The use of 'files' argument there
> is (and can be) only as an opaque pointer to be compared to ->fl_owner; at that
> point it might be pointing to freed memory, for all we know (and give false
> positives if already reused).

Ok. What we want this function to do is show any traditional POSIX or
OFD locks that were set on a particular file. The logic in
__show_fd_locks looks right, but you're correct that we don't want
anyone dereferencing those pointers in that codepath.

Note too that this info is not wholly reliable. POSIX locks can merge
with other locks that were set within the same process (same
files_struct) but on different fds.

I think we want to get rid of fl_owner_t anyway. Maybe we should replace
it with an unsigned long instead of void * to discourage anyone from
trying to dereference those pointers?

> TBH, I'd never been able to finish the audit of files_struct pointers passed
> into locks subsystem; there definitely are moments when code from fs/locks.c
> is dealing with pointers to already freed instances - show_fd_locks() at the
> very least.  They are not dereferenced, but beyond that...

Yeah. In general, we try to ensure that locks are torn down before the
file with which it is associated, but with some of the delayed freeing,
they can outlive the file at times. For example:

    https://tracker.ceph.com/issues/57986

-- 
Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
