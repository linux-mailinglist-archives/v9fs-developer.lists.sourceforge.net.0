Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA90678EB1
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 04:03:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pK9az-00081m-Cx;
	Tue, 24 Jan 2023 03:03:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pK9ay-00081f-61
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 03:03:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9cr2+HYkZKAIs6xUnuPR3A6wUCkJGuGrotCVYvfqXxQ=; b=fYiZWisooNrU8mJvHPs5/byA2p
 GTxacjS4kRCu03waFwL7zC5s4+qobdvl5HaUoHCq3pXpZ/RJQxltQozn8aMZVbSlAVmlvXDiOq+9a
 tRFKoL9NCkYL0BAQapJE8vn1h2scF66kQ/GdcnkjovqCYEdZdlc8PibHkKClfY5uxBZU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9cr2+HYkZKAIs6xUnuPR3A6wUCkJGuGrotCVYvfqXxQ=; b=hUa518iUHkndQ+Mo5P5UZDaOzf
 wOm65XnuA4EWn0HS6r9z4hZsGHYOSmIMli7wsW43Vnf7T5LXOO4A9kpWcF0RU6Auh66Rq13Medb48
 HNlCKkiNiRuIWR4SnuFFrKUOQ4LRieiCOkVSv6tbiKmWR2IVMPkMJ4ttMMy4XH3whegU=;
Received: from mail-wm1-f54.google.com ([209.85.128.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pK9as-00Dvle-Qk for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 03:03:33 +0000
Received: by mail-wm1-f54.google.com with SMTP id
 f19-20020a1c6a13000000b003db0ef4dedcso11887387wmc.4
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 23 Jan 2023 19:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=9cr2+HYkZKAIs6xUnuPR3A6wUCkJGuGrotCVYvfqXxQ=;
 b=fxmnkfZUsxInWzE/64k2u+VfdynmkcSF6oZEXV4qdky5gv3oAMgmHClDGkjhqdh7HZ
 Sb40nJvIVJQGEeegj03qHn4Rasd5KCRUA0YcLUsT3qZrLICIahOxMPDIEz9lLGf3n8c9
 bi67GKY+xJWboqdHkEx4s0QWd6vLIa8o6zLpbMNy6OZlqbV7+FNsC/DhdgoonCcAB8yz
 6ThDwniT7GGFOTSLjmqXfAyC5lCXPcsULHSnUaYTrb1yYIi5HK3YqC9o+VQDzbfEQD2E
 QpkOPH13/rZkW3M3ZETcrDlPBbnlYaaep7QkC7w45QpM3hU+0sMlWy8Biici+1RgAfLm
 kd9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9cr2+HYkZKAIs6xUnuPR3A6wUCkJGuGrotCVYvfqXxQ=;
 b=KiHSrZN3ZrK2ANNKZRIykRp0SVJFpZ25c9yFGinJ2f4Iij05bXZnn4wD0fTaED+KIk
 CPyxJiTVN3jQh/koanNgjzTAWDZ/URpGQdsWmUUsuGrOmME6IUu72UwncJSlz8hNtH1C
 tLpYQ/bTDabOWzrPXskTzVq7jrUl/slialWIVtL9a3dfVLGRdnV0KCTYhPs65YxRkXGE
 P8vMwXRuDOzf84ye49zSrY/BvPUinZZgkJ18b8PEU43GyD8gFtyyKMAkw9+1f7grSJv8
 7oeF6phCHI+fv78AJQx0UBuwqYm2eXxS7S6Y61eWgVCJMTRTVQPWa80bskcGuoo365Iv
 4W2g==
X-Gm-Message-State: AFqh2kqfpaoF4J2xc54YHUFlyI+FA/UqjY1M13wLGWyUmdyrMu3LRSlz
 rXMsX1/L3NDAr3bLpv61C+6rZKuqGgTS3v5TWvc=
X-Google-Smtp-Source: AMrXdXuwns0uxegKxviecx2ooxn/PVxnDy6TnGtz1Znqv3nlS17ApR/sT8NbwL7bAf8Yw/Ryq6KQoDRQiHHKvmdC6CM=
X-Received: by 2002:a1c:f711:0:b0:3d1:e3ba:3bb6 with SMTP id
 v17-20020a1cf711000000b003d1e3ba3bb6mr1550348wmh.29.1674529404009; Mon, 23
 Jan 2023 19:03:24 -0800 (PST)
MIME-Version: 1.0
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-4-evanhensbergen@icloud.com>
 <Y89F0KGdEBcwu39Y@codewreck.org>
In-Reply-To: <Y89F0KGdEBcwu39Y@codewreck.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 23 Jan 2023 21:03:12 -0600
Message-ID: <CAFkjPTn9nvFB3=iGaKA7WrXvkQwASqr8G1HvB4GBDZFT-2aGsQ@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Yeah - the dir_release of a regular file is...interesting.
 In any case, IIRC the file_write_and_wait_range is effectively a cache-flush
 if we are holding a write-buffer and is required for getting rid [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.54 listed in list.dnswl.org]
X-Headers-End: 1pK9as-00Dvle-Qk
Subject: Re: [V9fs-developer] [PATCH v2 03/10] Consolidate file operations
 and add readahead and writeback
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 rminnich@gmail.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Yeah - the dir_release of a regular file is...interesting.
In any case, IIRC the file_write_and_wait_range is effectively a
cache-flush if we are holding a write-buffer and is required for
getting rid of the writeback_fid so it is actually related to the
cache restructuring.

     -eric



On Mon, Jan 23, 2023 at 8:45 PM <asmadeus@codewreck.org> wrote:
>
> Eric Van Hensbergen wrote on Sun, Dec 18, 2022 at 11:22:13PM +0000:
> > We had 3 different sets of file operations across 2 different protocol
> > variants differentiated by cache which really only changed 3
> > functions.  But the real problem is that certain file modes, mount
> > options, and other factors weren't being considered when we
> > decided whether or not to use caches.
> >
> > This consolidates all the operations and switches
> > to conditionals within a common set to decide whether or not
> > to do different aspects of caching.
> >
> > Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>
> > ---
> >  fs/9p/v9fs.c           |  30 ++++------
> >  fs/9p/v9fs.h           |   2 +
> >  fs/9p/v9fs_vfs.h       |   4 --
> >  fs/9p/vfs_dir.c        |   9 +++
> >  fs/9p/vfs_file.c       | 123 +++++++----------------------------------
> >  fs/9p/vfs_inode.c      |  31 ++++-------
> >  fs/9p/vfs_inode_dotl.c |  19 ++++++-
> >  7 files changed, 71 insertions(+), 147 deletions(-)
> >
> > diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
> > index 1675a196c2ba..536769cdf7c8 100644
> > --- a/fs/9p/vfs_dir.c
> > +++ b/fs/9p/vfs_dir.c
> > @@ -214,6 +214,15 @@ int v9fs_dir_release(struct inode *inode, struct file *filp)
> >       p9_debug(P9_DEBUG_VFS, "inode: %p filp: %p fid: %d\n",
> >                inode, filp, fid ? fid->fid : -1);
> >       if (fid) {
> > +             if ((fid->qid.type == P9_QTFILE) && (filp->f_mode & FMODE_WRITE)) {
>
> dir release, but the fid is of type regular file ?
>
> Either way this doesn't look directly related to cache level
> consodilations, probably better in another commit.
>
> > +                     int retval = file_write_and_wait_range(filp, 0, -1);
> > +
> > +                     if (retval != 0) {
> > +                             p9_debug(P9_DEBUG_ERROR,
> > +                                     "trying to flush filp %p failed with error code %d\n",
> > +                                     filp, retval);
> > +                     }
> > +             }
> >               spin_lock(&inode->i_lock);
> >               hlist_del(&fid->ilist);
> >               spin_unlock(&inode->i_lock);
> --
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
