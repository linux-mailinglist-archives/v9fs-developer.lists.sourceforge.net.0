Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A27769BAF0
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 17:20:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTPwY-0004eX-Jn;
	Sat, 18 Feb 2023 16:20:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pTPwW-0004eJ-89
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 16:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+u/BzElGLN5eHZxuKE144vxdJBkSJhDQaTYnQuoLfRc=; b=SnqrKh8QeL9VD5scs8hJ+9KY5i
 v9ue64btSk8RfaBpU6T+V0kCmrW+2wDLHDYkMawG74BoLH4oGjF0AXolJ8lMMODVLOooRjRb6rz0s
 n04gdva3JtxWEIIlo1A62W06VFnQ0XqA+elevmCJ8zINfJ0ZvtuXW4iZJworIGGIquOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+u/BzElGLN5eHZxuKE144vxdJBkSJhDQaTYnQuoLfRc=; b=PEg9IzAm0KSK2z/jXs6QWNRa5Q
 lVvgrJc1BfYoQPTGQbuux7uysAz/VAdWxqw+p3zVfLJqbm5eWW8q0kuoo5TpsPY7cbEOOEdDAl83g
 nwNb4r3dUkzTpQ75vRVycyJFqY4JveTDYVv569c1GgytsReQWPyuFytYHwSFkpHb9hVY=;
Received: from mail-wr1-f47.google.com ([209.85.221.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pTPwT-008l9w-EW for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 16:20:07 +0000
Received: by mail-wr1-f47.google.com with SMTP id bl19so682026wrb.8
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 18 Feb 2023 08:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=+u/BzElGLN5eHZxuKE144vxdJBkSJhDQaTYnQuoLfRc=;
 b=U9pvmSM2mHnNmqaDc8kCTijaY0N2P5K3nzdoQEC7PXkqn4UOlZtOJ3SDEQHYtzhzNf
 immkL7ly7PapMqCWvvAsoWo2fRv5beG83NY7VFAa8TlIPvZnYb2aG49zDygKasiQ5ptD
 U+PFyxa7/0HkAW1FSpXxKcd60fqNB3WDA3pBX2AjGP5wyXSjI8WE1ibt2On+PkRn8Blm
 /IVoNxFCU9jYoU/5iApq9Gny+zk2IS0gH3JMTnmg4CmrjgTttqPI4U/cIqGCGRiKbNuJ
 TZkNtMqcUXFiUidTjZMLTMZ8e8+ueoDAFOeBDXKcYgtwFSW0MeWcdQTjZwO3+AwiCTRA
 QpCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+u/BzElGLN5eHZxuKE144vxdJBkSJhDQaTYnQuoLfRc=;
 b=xSora+zXdI039Pew1Q1mpcCju5RnqMFln8u30bsdoisCXXDdOLpScP3TrdqtQp5/gr
 IQPZcYuGHV3j0OY2v/kLwhZay6JwXxiIWbsq8lOTOOIYwIE9N+ShZP9m5ojr+BYGfZmp
 sVfpeCN00Kn+7tYlmRKgWipy84O8o+NBIxTNg8VuvuDUBJJcaffBPtSdHWo+iARmH+Ng
 SPVfs6N1O0Xu+G8ayFo4CkQGZYmiQJs2hi0NxM4RAMnuHq366w5GEgVUpcN8KGrKR6sx
 zqHVail4+Lvr+WFbWUypL1XEA7iDf5umxW20Fv3Oh3sKigqiyQEVX1eMvzYrKPv9Gn0U
 saxg==
X-Gm-Message-State: AO0yUKV/6sAOkosHIbuvmffkBjgQR3uWlaTQWzEiq+lgEb3PWRbOLIwL
 cvqP+V2VxGx5o1vpU4XvpN0j11A6CCOV9eEPTEc=
X-Google-Smtp-Source: AK7set/k4lt/sBVshsGQfCiMBjkXPgUabSNHKnU+X3I7aWvqAien90qYgJuJTbF54GRx1GJOS3WhfnRl0pvZ9L/fxyY=
X-Received: by 2002:adf:ef0c:0:b0:2c4:80a:e849 with SMTP id
 e12-20020adfef0c000000b002c4080ae849mr60136wro.1.1676737198628; Sat, 18 Feb
 2023 08:19:58 -0800 (PST)
MIME-Version: 1.0
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-4-ericvh@kernel.org> <Y/CZVEQPFFo0zMjo@codewreck.org>
 <CAFkjPTm909jFaEnpmSMBu-6uZnPBVyU_KqMFzWCwbDopT4jCAA@mail.gmail.com>
In-Reply-To: <CAFkjPTm909jFaEnpmSMBu-6uZnPBVyU_KqMFzWCwbDopT4jCAA@mail.gmail.com>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sat, 18 Feb 2023 10:19:47 -0600
Message-ID: <CAFkjPTmZB273pMkQiX1mcBb4XgM5oo8dHZqV-MSPuTKFrFPkSQ@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  ...of course, relooking at the functions in mm/filemap.c it
 seems like I can probably just use filemap_fdatawrite instead of having my
 own flush function since it basically sets up wbc the same way... [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.47 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pTPwT-008l9w-EW
Subject: Re: [V9fs-developer] [PATCH v4 03/11] fs/9p: Consolidate file
 operations and add readahead and writeback
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
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

...of course, relooking at the functions in mm/filemap.c it seems like
I can probably just use filemap_fdatawrite
instead of having my own flush function since it basically sets up wbc
the same way....

On Sat, Feb 18, 2023 at 10:17 AM Eric Van Hensbergen <ericvh@gmail.com> wrote:
>
> On Sat, Feb 18, 2023 at 3:25 AM <asmadeus@codewreck.org> wrote:
> >
> > Ok so this bugged me to no end; that seems to be because we use the same
> > v9fs_dir_release for v9fs_file_operations's .release and not just
> > v9fs_dir_operations... So it's to be expected we'll get files here.
> >
> > At this point I'd suggest to use two functions, but that's probably
> > overdoing it.
> > Let's check S_ISREG(inode->i_mode) instead of fid->qid though; it
> > shouldn't make any difference but that's what you use in other parts of
> > the code and it will be easier to understand for people familiar with
> > the vfs.
> >
>
> I can rename the function as part of the patch since it would be a bit
> more accurate,
> but then it is still in vfs_dir.  I think there did used to be two
> functions but there
> was so much overlap we collapsed into one.
>
> >
> > > diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
> > > index 33e521c60e2c..8ffa6631b1fd 100644
> > > --- a/fs/9p/vfs_inode.c
> > > +++ b/fs/9p/vfs_inode.c
> > > @@ -219,6 +219,35 @@ v9fs_blank_wstat(struct p9_wstat *wstat)
> > >       wstat->extension = NULL;
> > >  }
> > >
> > > +/**
> > > + * v9fs_flush_inode_writeback - writeback any data associated with inode
> > > + * @inode: inode to writeback
> > > + *
> > > + * This is used to make sure anything that needs to be written
> > > + * to server gets flushed before we do certain operations (setattr, getattr, close)
> > > + *
> > > + */
> > > +
> > > +int v9fs_flush_inode_writeback(struct inode *inode)
> > > +{
> > > +     struct writeback_control wbc = {
> > > +             .nr_to_write = LONG_MAX,
> > > +             .sync_mode = WB_SYNC_ALL,
> > > +             .range_start = 0,
> > > +             .range_end = -1,
> > > +     };
> > > +
> > > +     int retval = filemap_fdatawrite_wbc(inode->i_mapping, &wbc);
> >
> > Hmm, that function only starts the writeback, but doesn't wait for it.
> >
> > Wasn't the point to replace 'filemap_write_and_wait' with
> > v9fs_flush_inode_writeback?
> > I don't think it's a good idea to remove the wait before setattrs and
> > the like; if you don't want to wait on close()'s release (but we
> > probably should too) perhaps split this in two?
> >
>
> I had thought that this is what it does, of course I could just be getting
> lucky.  The filemap_fdatawrite_wbc doesn't say anything about whether
> WBC_SYNC_ALL forces a wait, but the next function (__filemap_fdatawrite_range)
> does: (it it calls filemap_fdatawrite_wbc)
>
> * If sync_mode is WB_SYNC_ALL then this is a "data integrity" operation, as
> * opposed to a regular memory cleansing writeback. The difference between
> * these two operations is that if a dirty page/buffer is encountered, it must
> * be waited upon, and not just skipped over.
>
> So I think we are good?  Happy to use a different function if it makes sense,
> but this was the one that seemed to trigger the correct behavior.
>
>        -eric


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
