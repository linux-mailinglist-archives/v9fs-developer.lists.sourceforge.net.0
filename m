Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C6354E217
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Jun 2022 15:36:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o1pfh-0000Ru-Br; Thu, 16 Jun 2022 13:36:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1o1pff-0000Rd-Qt
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 13:36:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cyWgBVSU437H0cH5AK9e5im0OrC0JXMOv/o9/Fwf120=; b=KySqQmLw0rbI+YHbeYi4bncEm9
 r/iTIsHBByW/+m7eaRL3SZXRF9nfWe+aO8WE8Si/47RjHWF0POPihd9+KQ6yxGJirDNy9g3UuL8uW
 WHpABzqfK5gPjCiY+xGAT+h+pHRgTijWS1fdw7mmBo13kJRwG8DRZwhL4XBVU8aHYnt0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cyWgBVSU437H0cH5AK9e5im0OrC0JXMOv/o9/Fwf120=; b=RJqDIfFncrT0Gw87NlQ0BjIItQ
 pB3EJzSrQSWVAxo+AzOsm2oP1/8tI3j2ZiFsz1dF4VO5/EHWDhsDbCUdazmbyaX9B4Gmtfgj1NVqU
 LmXfOqX1Y33NS5qN8tlJe3d2QsotaBRYw6kpS4DSvknDH1CvIcW3e7pT/X0eVg797iq0=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1pfe-004BeS-0B
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 13:36:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=cyWgBVSU437H0cH5AK9e5im0OrC0JXMOv/o9/Fwf120=; b=mMacv3x8e2S6aOvOI07Vr6PyY5
 Lg1CSP9y4voZOzwtdgVox3avr1sLZ4CKtGFNcLLC2LOHiBxDVB1j8YcER+ZjKs7/PD8MEdgTG2xYF
 1QolQ9/oFemDvDYxDseqySgxCz7b+FVKLSAudaxQokiGtXSZwvZ/4+S4a7svr1ggfQolceWdCgnus
 vWTSaswjJCAEgCfpls5Su27yzQfNZNzP3RHc05EDrh+gBBsBLqN+IcQWV/eXx7SqViyXNuO5lFlXY
 x8nPQr0id7E4lifrISpPz9iEdJAEqRePkJ0P14YKzn0BRwb6jJ4mHn9qiBBocLaOltYHlN7s2kbZG
 dMkVjdyZVoxbyRFrCNiADOluiG6LaWIri3vWAgb6JpVTNOkJ9muM3Q/G7rTLnBZWcsrA1o5Jt5v03
 mK01tooy//VW/wEWrHWIZLjPNmhPdJWNKgCHMqa/zTdJSkmLelZxkU6HYgn+vhHHSFaH9+O/IZfLX
 C7/ApVrcuxhZtjNN89VKruFtROCKmbtqs1QutQry1vUyW4j1R3l+Gf9a3LJqmo8dxWK4NWJpFBaJ7
 8tdiO5RO9bdgejZ6Ywyj75a6+EoZvwLcG0TFTW6TL1x2vmPsmxn/9kO1VTKIHuuQIUNDQ+oIwqp8u
 8yjVwUdA7To1kCuieodJv6yWkPXXA87IhDv+Te1To=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 16 Jun 2022 15:35:59 +0200
Message-ID: <22073313.PYDa2UxuuP@silver>
In-Reply-To: <1796737.mFSqR1lx0c@silver>
References: <YqW5s+GQZwZ/DP5q@codewreck.org> <YqiC8luskkxUftQl@codewreck.org>
 <1796737.mFSqR1lx0c@silver>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Dienstag,
 14. Juni 2022 16:11:35 CEST Christian Schoenebeck
 wrote: > On Dienstag, 14. Juni 2022 14:45:38 CEST Dominique Martinet wrote:
 [...] > > Please let me know how that works out, I'd be happy [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o1pfe-004BeS-0B
Subject: Re: [V9fs-developer] [PATCH] 9p: fix EBADF errors in cached mode
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Dienstag, 14. Juni 2022 16:11:35 CEST Christian Schoenebeck wrote:
> On Dienstag, 14. Juni 2022 14:45:38 CEST Dominique Martinet wrote:
[...]
> > Please let me know how that works out, I'd be happy to use either of
> > your versions instead of mine.
> > If I can be greedy though I'd like to post it together with the other
> > couple of fixes next week, so having something before the end of the
> > week would be great -- I think even my first overkill version early and
> > building on it would make sense at this point.
> > 
> > But I think you've got the right end, so hopefully won't be needing to
> > delay
> 
> I need a day or two for testing, then I will report back for sure. So it
> should perfectly fit into your intended schedule.

Two things:

1. your EBADF patch is based on you recent get/put refactoring patch, so it won't apply on stable.

2. I fixed the conflict and gave your patch a test spin, and it triggers
the BUG_ON(!fid); that you added with that patch. Backtrace based on
30306f6194ca ("Merge tag 'hardening-v5.19-rc3' ..."):

[    2.211473] kernel BUG at fs/9p/vfs_addr.c:65!
...
[    2.244415] netfs_alloc_request (fs/netfs/objects.c:42) netfs
[    2.245438] netfs_readahead (fs/netfs/buffered_read.c:166) netfs
[    2.246392] read_pages (./include/linux/pagemap.h:1264 ./include/linux/pagemap.h:1306 mm/readahead.c:164) 
[    2.247120] ? folio_add_lru (./arch/x86/include/asm/preempt.h:103 mm/swap.c:468) 
[    2.247911] page_cache_ra_unbounded (./include/linux/fs.h:808 mm/readahead.c:264) 
[    2.248875] filemap_get_pages (mm/filemap.c:2594) 
[    2.249723] filemap_read (mm/filemap.c:2679) 
[    2.250478] ? ptep_set_access_flags (./arch/x86/include/asm/paravirt.h:441 arch/x86/mm/pgtable.c:493) 
[    2.251417] ? _raw_spin_unlock (./arch/x86/include/asm/preempt.h:103 ./include/linux/spinlock_api_smp.h:143 kernel/locking/spinlock.c:186) 
[    2.252253] ? do_wp_page (mm/memory.c:3293 mm/memory.c:3393) 
[    2.253012] ? aa_file_perm (security/apparmor/file.c:604) 
[    2.253824] new_sync_read (fs/read_write.c:402 (discriminator 1)) 
[    2.254616] vfs_read (fs/read_write.c:482) 
[    2.255313] ksys_read (fs/read_write.c:620) 
[    2.256000] do_syscall_64 (arch/x86/entry/common.c:50 arch/x86/entry/common.c:80) 
[    2.256764] entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:115)

Did your patch work there for you? I mean I have not applied the other pending
9p patches, but they should not really make difference, right? I won't have
time today, but I will continue to look at it tomorrow. If you already had
some thoughts on this, that would be great of course.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
