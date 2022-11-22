Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 867E4633C4C
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 13:20:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxSGd-0004A9-JC;
	Tue, 22 Nov 2022 12:20:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jlayton@kernel.org>) id 1oxSGc-0004A3-KT
 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 12:20:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mgrL4mJi7VcpsANC7VNQEWo8u9v/kRd0GOsqrrE+Oi0=; b=KKIhHztSNhQBMMyVGvHzec6jvb
 hYo4SV1tRTt/M18FTFlKVmyh9K9cBLgAMOeo/CY8XhBZvhVxdS5VVmi7PTfB7W0N6PhjJ/qBQ7jJ0
 gLr5qMf6gSma8G28i4Ge83U3jvNBrqhKyfPSI51AGHxBnSJvVHMQIKOR69eyeWbWEihQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mgrL4mJi7VcpsANC7VNQEWo8u9v/kRd0GOsqrrE+Oi0=; b=TZChEFOX4e+efgcR3WKA/w4unk
 3SDTQwDiG5WuhanhW9FEanSh+EqHeOTBHJaj1B5/lOKYizlyWKKeC9RR+Ulk9qytr76xWFjiL3g9Y
 UnQZJhBtVErA7o5m8NBHBlRSKrGpAovr2zfseohfJnh8PDkXyhjm2ihXud0GaNHocN30=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxSGb-0006PW-Pv for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 12:20:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 81960B81A4A;
 Tue, 22 Nov 2022 12:20:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7BB3C433C1;
 Tue, 22 Nov 2022 12:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669119638;
 bh=omBfWXmMhLMm+WJGcOqaotuYzo99NcFtkFUjLGTxJkU=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=lCqeNISkHr5FV5oUA/uF7cCqbH3pbaJZzL0H/JeQImnqkxBP/qna4Vwgxuxwwf4kc
 djCzx51ajPQzJsx7t6fcFaQ3CPrg1HyiCa0H584zbvwYZVAhxyYK9KeJP/cZSm7jN0
 AEQFZIjKudut9Bn5O9uHSqMDAio5e4wG5sa2i3DoX7eTRf+obcb5zEzndUU3Fwo275
 rIYFdUuTfDxxMV446wuHU7u2FLiPhi/QMUcdaTapUWa++/h/6C38Q3lKoDzCYdb8Qd
 YelQN+YEM82ey5KUKNOPaXvgHVIDzs2zei/oxdiPIwrOhlWjLs2M+5ia9+Ld6VGXMR
 y+AjrCDtny9iA==
Message-ID: <a731e688122d1a6fdb2f7bdbd71d403fa110e9f2.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: Joseph Qi <joseph.qi@linux.alibaba.com>, Mark Fasheh <mark@fasheh.com>, 
 Joel Becker <jlbec@evilplan.org>
Date: Tue, 22 Nov 2022 07:20:35 -0500
In-Reply-To: <0c6a44ff-409e-99b2-eaa9-fd6e87a9e104@linux.alibaba.com>
References: <20221120210004.381842-1-jlayton@kernel.org>
 <0c6a44ff-409e-99b2-eaa9-fd6e87a9e104@linux.alibaba.com>
User-Agent: Evolution 3.46.1 (3.46.1-1.fc37) 
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2022-11-22 at 09:51 +0800, Joseph Qi wrote: > Hi,
 > > On 11/21/22 4:59 AM, Jeff Layton wrote: > > The file locking definitions
 have lived in fs.h since the dawn of time, > > but they are only [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oxSGb-0006PW-Pv
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 samba-technical@lists.samba.org, linux-kernel@vger.kernel.org, hch@lst.de,
 cluster-devel@redhat.com, devel@lists.orangefs.org,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-afs@lists.infradead.org, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2022-11-22 at 09:51 +0800, Joseph Qi wrote:
> Hi,
> 
> On 11/21/22 4:59 AM, Jeff Layton wrote:
> > The file locking definitions have lived in fs.h since the dawn of time,
> > but they are only used by a small subset of the source files that
> > include it.
> > 
> > Move the file locking definitions to a new header file, and add the
> > appropriate #include directives to the source files that need them. By
> > doing this we trim down fs.h a bit and limit the amount of rebuilding
> > that has to be done when we make changes to the file locking APIs.
> > 
> > Signed-off-by: Jeff Layton <jlayton@kernel.org>
> > ---
> >  fs/9p/vfs_file.c          |   1 +
> >  fs/afs/internal.h         |   1 +
> >  fs/attr.c                 |   1 +
> >  fs/ceph/locks.c           |   1 +
> >  fs/cifs/cifsfs.c          |   1 +
> >  fs/cifs/cifsglob.h        |   1 +
> >  fs/cifs/cifssmb.c         |   1 +
> >  fs/cifs/file.c            |   1 +
> >  fs/cifs/smb2file.c        |   1 +
> >  fs/dlm/plock.c            |   1 +
> >  fs/fcntl.c                |   1 +
> >  fs/file_table.c           |   1 +
> >  fs/fuse/file.c            |   1 +
> >  fs/gfs2/file.c            |   1 +
> >  fs/inode.c                |   1 +
> >  fs/ksmbd/smb2pdu.c        |   1 +
> >  fs/ksmbd/vfs.c            |   1 +
> >  fs/ksmbd/vfs_cache.c      |   1 +
> >  fs/lockd/clntproc.c       |   1 +
> >  fs/lockd/netns.h          |   1 +
> >  fs/locks.c                |   1 +
> >  fs/namei.c                |   1 +
> >  fs/nfs/nfs4_fs.h          |   1 +
> >  fs/nfs_common/grace.c     |   1 +
> >  fs/nfsd/netns.h           |   1 +
> >  fs/ocfs2/locks.c          |   1 +
> >  fs/ocfs2/stack_user.c     |   1 +
> 
> Seems it misses the related changes in:
> fs/ocfs2/stackglue.c
> 

I was able to build ocfs2.ko just fine without any changes to
stackglue.c. What problem do you see here?

Thanks,
-- 
Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
