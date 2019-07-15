Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A104698EC
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Jul 2019 18:15:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hn3dP-00079D-1w; Mon, 15 Jul 2019 16:15:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1hn3dM-000792-Vy
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Jul 2019 16:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fEegpl76PM4en662BvPYyPBz9VMdu1BhUMK1t9dX88o=; b=OqxNRiwdKwXwGAHlV32zntFzap
 EpbmihjDqW5OzdpykU3kh0dVsM7Zlabkl8X5CV3VLBRKJVamNijqn3Oxy556ho6sSM9UouRzzVT8A
 XR96iBKHHOVAEC1AS1+/ZvhA+LBeZzbSasbzk6d8lyYJD33utz46YPr66gvlW2hHz9t4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fEegpl76PM4en662BvPYyPBz9VMdu1BhUMK1t9dX88o=; b=Z3VMDOCt/bFYvpx8IlgHtWgooc
 tRnobssHTSKcIxeVaCJ4vSNGjVnVY7sEQbmCJz3p8mGbfC6EYU0Tx77Yep2wclUVIppvvuKNO38l0
 i9wmJb1P85wdwoFQVOmTRQeFP0uDAqZFSY9futRc3CtgZlhXlsIgHiBrosyKGSPC+PbY=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hn3dK-002Uzq-Ot
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Jul 2019 16:15:24 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 0ECD7C01B; Mon, 15 Jul 2019 18:15:16 +0200 (CEST)
Date: Mon, 15 Jul 2019 18:15:01 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Matthieu Baerts <matthieu.baerts@tessares.net>
Message-ID: <20190715161501.GA6535@nautica>
References: <0757f061-0685-6e8e-9e6f-035d0f57eaf8@tessares.net>
 <20190715113251.GA28601@nautica>
 <f6513948-312e-2edb-44e7-40217741e9ba@tessares.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f6513948-312e-2edb-44e7-40217741e9ba@tessares.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hn3dK-002Uzq-Ot
Subject: Re: [V9fs-developer] New KASAN warnings with kernel v4.14.133
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
Cc: Sasha Levin <sashal@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthieu Baerts wrote on Mon, Jul 15, 2019:
> > There are two things bugging me there:
> >  - why does the trace speak of v9fs_vfs_get_link and not
> > v9fs_vfs_get_link_dotl , from what I'm seeing of the code the
> > v9fs_symlink_inode_operations_dotl is properly assigned so I don't see
> > why you'd have mixed dotl and non-dotl calls. This might be a hint to
> > some other problem.
> >  - KASAN complains about a read in the p9dirent_read's strscpy, so
> > 'nameptr' - the "allocated by task 330" stack corresponds as p9pdu_readf
> > does allocate 'nameptr', but it's a 100% local pointer that's never
> > stored anywhere else and shouldn't be free-able by p9stat_free which
> > could free only free something from p9pdu_readf's 'S', not present in
> > "Qqbs".
> > (the corresponding 'S' in v9fs_vfs_get_link is p9_client_stat, but even
> > if we're looking at the same fid I really do not see how it could get
> > the same pointer as nameptr here)
> > 
> > I'd need to look deeper into a crash dump to understand this better,
> > will try to reproduce on a fresh 4.14.133 with your mount command...
> 
> Thank you for your analysis and for looking at that!
> 
> I can maybe revert the 6 new patches related to 9P and check if I still
> have the issue with KASAN.
> Do you suspect one of them to cause this issue?

The only one that might be related is "9p: p9dirent_read: check
network-provided name length" ; but even that likely shouldn't kick in.

You can check if it was implied by adding debug=1 to your 9p mount
options, assuming it is compiled with debugs (I still plan on making
that the default eventually as debug=1 only enables *error* messages)

> > Do you have any idea what kind of access pattern 'confd' does on top
> > of your mount?
> 
> I don't have the details but it is supposed to be used to collect data
> from SNMP counters. Apparently, it is collecting info from
> HOST-RESOURCES-MIB. From what I see, it is linked to the RFC 2790 and it
> is getting many stats from the FS but I don't have the details. I heard
> that it might be reproducible using snmpd and snmpwalk but I don't know
> more.
> 
> If you think it is important, I can ask around and try to get more info.

Well, just mounting won't reproduce, so I definitely need some kind of
hint of what is happening if I'd want to have a chance.

Looking at the traces I suspect it has to do with readlink on a symlink
at the same time as it gets stat'd by another process but I didn't spend
much time trying yet.

The first step to understanding a bug is to know how it happens exactly
:)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
