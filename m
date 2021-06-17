Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC3D3AB5F3
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Jun 2021 16:26:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ltsyf-00078W-OL; Thu, 17 Jun 2021 14:26:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+2d022fe3f734549d7e41+6507+infradead.org+hch@casper.srs.infradead.org>)
 id 1ltsyW-00076o-7b
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Jun 2021 14:26:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wzZhieUCTydu3GyeTVG9mMeeZV6Pcd3sEaD/7vJ14DE=; b=H7rt1QIeRpH3gKPdxlLscv/mvj
 /CH6Tca9AP6D5SkECzSvWwFO0S8BrB0ds1k/Fv7t+SH0qKIGgn9qGVrpLmN3pW977eesflu9Gtq6u
 9vXXl+NncH4neP8Uvs2rRT96Luxpl+W9JNE90+/C07VXSFXJ1HPfoSYVZaxIQ+2+UQuI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wzZhieUCTydu3GyeTVG9mMeeZV6Pcd3sEaD/7vJ14DE=; b=OxUYAnXXcUef54cAHG+MT2IWP/
 rgEYfkdAntyeK6SFxKYm9A6TtXcgqnEM4DQuQ5fGfyYgEFReSZrvllvcrAb6dDWvSXtClXPLqZki9
 uH8jHz/8S5iMOGAJP3BCPtFUK/BvPFmNTWUQlAWtBB510D4CFO2AUhkZh5ODCCC86UQ4=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ltsyR-00065f-27
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Jun 2021 14:26:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=wzZhieUCTydu3GyeTVG9mMeeZV6Pcd3sEaD/7vJ14DE=; b=WFK4gPH3RMnGJEiPQBkbbzCReG
 e6lx/HO4t41Z/sImtffnNLojRPbVSDUBztDOF5Cj5mCbDlO5K1py0Ud8f5E1fpuh465GetCfEDH+K
 qUSDIj3GnT0ffxm5aRgzlCLxkDltYLm24JlVyPoV+9isVWbYcKOSb24kI6w57KhH0PP5dUXBHH40N
 dhSfTHusBDvoxmftQBwHDyipEB6Vv9i1O1NRsvNqcWSJuODlqo20Fb/hM+6pUK1Yhuyp39iE7BIxE
 tnoNhMHHttdV2lU3m8lLJRKpEjgyUbPTMyGLd/GsKeCMZNUlbMs3/a1umEUg42qsM3RGKPi5hiOXc
 6m3bw7wg==;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat
 Linux)) id 1ltsx2-009Did-5K; Thu, 17 Jun 2021 14:25:06 +0000
Date: Thu, 17 Jun 2021 15:25:00 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Vivek Goyal <vgoyal@redhat.com>
Message-ID: <YMtbPDW+T5Z1uBZt@infradead.org>
References: <20210614174454.903555-1-vgoyal@redhat.com>
 <YMsgaPS90iKIqSvi@infradead.org>
 <20210617133052.GA1142820@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210617133052.GA1142820@redhat.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ltsyR-00065f-27
Subject: Re: [V9fs-developer] [PATCH v2 0/2] Add support to boot virtiofs
 and 9pfs as rootfs
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
Cc: virtio-fs@redhat.com, dhowells@redhat.com, miklos@szeredi.hu,
 richard.weinberger@gmail.com, linux-kernel@vger.kernel.org,
 dgilbert@redhat.com, Christoph Hellwig <hch@infradead.org>,
 viro@zeniv.linux.org.uk, stefanha@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Jun 17, 2021 at 09:30:52AM -0400, Vivek Goyal wrote:
> > +static int __init mount_nodev_root(void)
> > +{
> > +	struct file_system_type *fs = get_fs_type(root_fs_names);
> 
> get_fs_type() assumes root_fs_names is not null. So if I pass
> "root=myfs rw", it crashes with null pointer dereference.

Ok, I'll need to fix that.

> > +	int err = -ENODEV;
> > +
> > +	if (!fs)
> > +		goto out;
> > +	if (fs->fs_flags & FS_REQUIRES_DEV)
> > +		goto out_put_filesystem;
> > +
> > +	fs_names = (void *)__get_free_page(GFP_KERNEL);
> > +	if (!fs_names)
> > +		goto out_put_filesystem;
> > +	get_fs_names(fs_names);
> 
> I am wondering what use case we are trying to address by calling
> get_fs_names() and trying do_mount_root() on all filesystems
> returned by get_fs_names(). I am assuming following use cases
> you have in mind.
> 
> A. User passes a single filesystem in rootfstype.
>    
>    root=myfs rootfstype=virtiofs rw
> 
> B. User passes multiple filesystems in rootfstype and kernel tries all
>    of them one after the other
> 
>    root=myfs, rootfstype=9p,virtiofs rw
> 
> C. User does not pass a filesystem type at all. And kernel will get a
>    list of in-built filesystems and will try these one after the other.
> 
>    root=myfs rw
> 
> If that's the thought, will it make sense to call get_fs_names() first
> and then inside the for loop call get_fs_type() and try mounting
> only if FS_REQUIRES_DEV is not set, otherwise skip and move onto th
> next filesystem in the list (fs_names).

I thought of A and B.  I did not think at all of C and think it is
a rather bad idea.  I'll revisit the patch to avoid C and will resend it
as a formal patch.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
