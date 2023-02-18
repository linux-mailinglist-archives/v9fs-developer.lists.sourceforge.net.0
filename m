Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 735B069BAED
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 17:17:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTPuC-0002xn-JX;
	Sat, 18 Feb 2023 16:17:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pTPu6-0002xg-IC
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 16:17:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ODMjy3oV9OZ/2U+MMAAOaloOxW1K2itgRE7CXAwpOc8=; b=ISWm+4a/ZXlT1RRbBW8Xy7hZ1/
 5hHxRYFsRKL0SgQFHT779nbKGLQidcrqzczN0J6+aJnLyrXHCwCBDVxTkElmsUrLHFbQwA2VtPB/L
 ohnPKgBw2oICSPNXQTczB9rhus6gpG+OMUUmaXwtL7V484CqduO4Z3rklwY+nZFJSTMs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ODMjy3oV9OZ/2U+MMAAOaloOxW1K2itgRE7CXAwpOc8=; b=DpDAE9TdVeLAbCiGZ1lJsQtpD5
 g5SZNMT4c7k2I+Octl9TssdZmvQGAq+e50EfIHQWn6LKsTTQfzKhVuzf79QyeUl9LSOx9BarF5ROp
 T1leJSiVSY21LFJZU8unCzTBiPV/9cK8E/tzy2sBnnryfV5jyVirHcAMSKuTZRSqEZ5E=;
Received: from mail-wr1-f45.google.com ([209.85.221.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pTPu6-008ksm-0U for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 16:17:38 +0000
Received: by mail-wr1-f45.google.com with SMTP id o5so733944wri.6
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 18 Feb 2023 08:17:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ODMjy3oV9OZ/2U+MMAAOaloOxW1K2itgRE7CXAwpOc8=;
 b=Nnhs0/hK0A3+OPTXxMjdmyN98e1ZbXPrBEjfseIKiqIWGBjc7jheWbxJlGbVjEYbod
 zFPVaivM85keniIty8gLrcspQPQZIJPqDaNpTVK/yOVDIvxfOgm7P1tIuyhfz8vBZ0l0
 21DVOEWd4NyT603rrd3cL2YY0pGV2fdbDe3IeU4vjGqLcC/Ac9aT7iggbLk/2S2kD8Td
 F1HprfuFrfx43paeUwnPbeMQBamHWwb9U/gaFvdg7GHPpJ8D642Y9NlRxhIsvOq2K/j/
 13J6jE3rmGP0T0gXrtTsQT4RUbwfZdWXEpaofYvy5F2owm0t9fj057k4jqVvI1qm9i6T
 LPJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ODMjy3oV9OZ/2U+MMAAOaloOxW1K2itgRE7CXAwpOc8=;
 b=kbOzw3vdtNZ092YqBL+945jv2t7NnEoSZNRLV5R7i5Kxec1A8As8zOYQDVh5N7RvOQ
 2d97LRargnQ9+xWsL/vQL2fZsRdaPaCc1AOOFZYxEtFQ7iUz9c2FxXTpQZjQa5iT0gXO
 H/m+Rql5WDsMPGB4QZpApsvrFePBaS4Qui/Ck8OmC0jvpIpAYPYhY599RPwzCXEg6NkO
 31U7oBG1IwZD5zlYqY4VZvcS7QfgahJU2sP79Ewtr7wdPfp/N2PfxtAJn69wBZCHVwaH
 s3UInL0I28SVcBuFISV/OiAzpIiJtFYIXFKHNeqzUzEOfpo8njpq0LDCEFltPIiWnmpi
 tl4g==
X-Gm-Message-State: AO0yUKUxNPTkPbh0JVSollJuiAalTYUgHCRwqPyN9ZbfFnhrTPUiUyqf
 DoN0OJtn5p6vS8ZiAJT+tIVNBmgGnkq0Glw8ktY=
X-Google-Smtp-Source: AK7set9bLtwj6pLsp/K0b4D/XzEyMENUQgbNSP0tbGJVqvK6gAzFWXlAUobUZ87VgUOnSeKptFHW9QoFHdpz11toR6I=
X-Received: by 2002:a5d:59a9:0:b0:2c5:642f:1559 with SMTP id
 p9-20020a5d59a9000000b002c5642f1559mr56092wrr.4.1676737051177; Sat, 18 Feb
 2023 08:17:31 -0800 (PST)
MIME-Version: 1.0
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-4-ericvh@kernel.org> <Y/CZVEQPFFo0zMjo@codewreck.org>
In-Reply-To: <Y/CZVEQPFFo0zMjo@codewreck.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sat, 18 Feb 2023 10:17:20 -0600
Message-ID: <CAFkjPTm909jFaEnpmSMBu-6uZnPBVyU_KqMFzWCwbDopT4jCAA@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Feb 18, 2023 at 3:25 AM wrote: > > Ok so this bugged
 me to no end; that seems to be because we use the same > v9fs_dir_release
 for v9fs_file_operations's .release and not just > v9fs_dir_ope [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.45 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.45 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pTPu6-008ksm-0U
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

On Sat, Feb 18, 2023 at 3:25 AM <asmadeus@codewreck.org> wrote:
>
> Ok so this bugged me to no end; that seems to be because we use the same
> v9fs_dir_release for v9fs_file_operations's .release and not just
> v9fs_dir_operations... So it's to be expected we'll get files here.
>
> At this point I'd suggest to use two functions, but that's probably
> overdoing it.
> Let's check S_ISREG(inode->i_mode) instead of fid->qid though; it
> shouldn't make any difference but that's what you use in other parts of
> the code and it will be easier to understand for people familiar with
> the vfs.
>

I can rename the function as part of the patch since it would be a bit
more accurate,
but then it is still in vfs_dir.  I think there did used to be two
functions but there
was so much overlap we collapsed into one.

>
> > diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
> > index 33e521c60e2c..8ffa6631b1fd 100644
> > --- a/fs/9p/vfs_inode.c
> > +++ b/fs/9p/vfs_inode.c
> > @@ -219,6 +219,35 @@ v9fs_blank_wstat(struct p9_wstat *wstat)
> >       wstat->extension = NULL;
> >  }
> >
> > +/**
> > + * v9fs_flush_inode_writeback - writeback any data associated with inode
> > + * @inode: inode to writeback
> > + *
> > + * This is used to make sure anything that needs to be written
> > + * to server gets flushed before we do certain operations (setattr, getattr, close)
> > + *
> > + */
> > +
> > +int v9fs_flush_inode_writeback(struct inode *inode)
> > +{
> > +     struct writeback_control wbc = {
> > +             .nr_to_write = LONG_MAX,
> > +             .sync_mode = WB_SYNC_ALL,
> > +             .range_start = 0,
> > +             .range_end = -1,
> > +     };
> > +
> > +     int retval = filemap_fdatawrite_wbc(inode->i_mapping, &wbc);
>
> Hmm, that function only starts the writeback, but doesn't wait for it.
>
> Wasn't the point to replace 'filemap_write_and_wait' with
> v9fs_flush_inode_writeback?
> I don't think it's a good idea to remove the wait before setattrs and
> the like; if you don't want to wait on close()'s release (but we
> probably should too) perhaps split this in two?
>

I had thought that this is what it does, of course I could just be getting
lucky.  The filemap_fdatawrite_wbc doesn't say anything about whether
WBC_SYNC_ALL forces a wait, but the next function (__filemap_fdatawrite_range)
does: (it it calls filemap_fdatawrite_wbc)

* If sync_mode is WB_SYNC_ALL then this is a "data integrity" operation, as
* opposed to a regular memory cleansing writeback. The difference between
* these two operations is that if a dirty page/buffer is encountered, it must
* be waited upon, and not just skipped over.

So I think we are good?  Happy to use a different function if it makes sense,
but this was the one that seemed to trigger the correct behavior.

       -eric


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
