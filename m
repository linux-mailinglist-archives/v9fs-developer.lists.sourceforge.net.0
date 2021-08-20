Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 813E13F32E8
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Aug 2021 20:15:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mH93b-0005ig-7g; Fri, 20 Aug 2021 18:15:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jlayton@kernel.org>) id 1mH93Z-0005iZ-Dw
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 18:15:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D28zDrcaUa7sUKXuWtiFMSgq6wI8Wvg1MeNWnmyk+Fg=; b=IvBKJRsZCCWTWJzXqf9C7vjMdj
 DezuYVB7eytCsd2PJr4xRpUizPUZdfuAOkspqq5YEkfCYNc7ayZGmI64vQ0nuH9dbNjK7RVSIb+HP
 SXVD+wrv7aHnARvO00xVQ1uGTqhUP/1GPu/c2NOk14UQZ1cy8CDyT3T5KH9MFiryGCHk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D28zDrcaUa7sUKXuWtiFMSgq6wI8Wvg1MeNWnmyk+Fg=; b=ckxTlD7Dzgpp47zU2h45mliLxw
 7xd4svctRtjM5JivBl/z9qb7sQJx92aqDVoS+m3Dk/R8vXeuQzJ6BfqlIFW+udb2q9h/CRmWyOrJs
 RUnZ2DJYfWSPa64l4LvlRboIn6TcUrTSZblB1IMOSbA7GUJYvVqKZB2JeSWjoFuZ7Yno=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mH93Y-00D1aa-T8
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 18:15:53 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E56A461056;
 Fri, 20 Aug 2021 18:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629483347;
 bh=lEauG8US0wWV105yX+m78yPpsHVn1SxEBoQkVuK3wLQ=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=iZ8eL9VRJ2N0qnU/+VFbVX5aGbw4kSBmXpVBDdGtuWN2mZZshQv3Sb6XkSinqPdSC
 R5RyHVBJpS81J3HejjC36ETWbCFSCGZ0D5WUK6YDB8XgpgWPo63s8BlbXeGRbCRKnt
 GV70SMKuQrvX1zNhZMdl9qhyq1Q+3jFAVMH49sDZrL3YMWU1Q1IxIWMrV1YzPOmaMu
 JB6HA0VU2hf0RC2+nKj9N4D7MveLwtqVI1BcAPje48v763gchaevYK9wjV2GBFR1+G
 gZtxMTvv1RC6qzlHrVFmgvJGAekzzmMg1Kz3BfKshjEKmIWIV9wrDLBOwoXfdzT/Sg
 6GTkKruOhJ+QQ==
Message-ID: <30fdfda30b42b8b836a199b3cbe65d1673f5100f.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: torvalds@linux-foundation.org, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org
Date: Fri, 20 Aug 2021 14:15:44 -0400
In-Reply-To: <20210820163919.435135-1-jlayton@kernel.org>
References: <20210820163919.435135-1-jlayton@kernel.org>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 2021-08-20 at 12:39 -0400, Jeff Layton wrote: > v3:
 slight revision to verbiage, and use pr_warn_once > > The first patch in
 this series adds a new warning that should pop on > kernels that ha [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mH93Y-00D1aa-T8
Subject: Re: [V9fs-developer] [PATCH v3 0/2] fs: remove support for
 mandatory locking
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
Cc: bfields@fieldses.org, linux-nfs@vger.kernel.org, linux-doc@vger.kernel.org,
 david@redhat.com, willy@infradead.org, cluster-devel@redhat.com,
 linux-mm@kvack.org, rostedt@goodmis.org, viro@zeniv.linux.org.uk,
 luto@kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-afs@lists.infradead.org, ocfs2-devel@oss.oracle.com,
 ebiederm@xmission.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, 2021-08-20 at 12:39 -0400, Jeff Layton wrote:
> v3: slight revision to verbiage, and use pr_warn_once
> 
> The first patch in this series adds a new warning that should pop on
> kernels that have mandatory locking enabled when someone mounts a
> filesystem with -o mand. The second patch removes support for mandatory
> locking altogether.
> 
> What I think we probably want to do is apply the first to v5.14 before
> it ships and allow the new warning to trickle out into stable kernels.
> Then we can merge the second patch in v5.15 to go ahead and remove it.
> 
> Sound like a plan?
> 
> Jeff Layton (2):
>   fs: warn about impending deprecation of mandatory locks
>   fs: remove mandatory file locking support
> 
>  .../filesystems/mandatory-locking.rst         | 188 ------------------
>  fs/9p/vfs_file.c                              |  12 --
>  fs/Kconfig                                    |  10 -
>  fs/afs/flock.c                                |   4 -
>  fs/ceph/locks.c                               |   3 -
>  fs/gfs2/file.c                                |   3 -
>  fs/locks.c                                    | 116 +----------
>  fs/namei.c                                    |   4 +-
>  fs/namespace.c                                |  25 +--
>  fs/nfs/file.c                                 |   4 -
>  fs/nfsd/nfs4state.c                           |  13 --
>  fs/nfsd/vfs.c                                 |  15 --
>  fs/ocfs2/locks.c                              |   4 -
>  fs/open.c                                     |   8 +-
>  fs/read_write.c                               |   7 -
>  fs/remap_range.c                              |  10 -
>  include/linux/fs.h                            |  84 --------
>  mm/mmap.c                                     |   6 -
>  mm/nommu.c                                    |   3 -
>  19 files changed, 14 insertions(+), 505 deletions(-)
>  delete mode 100644 Documentation/filesystems/mandatory-locking.rst
> 

I went ahead and pushed this version into the locks-next branch, so we
can give it some soak time before merging.

-- 
Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
