Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CABD1498001
	for <lists+v9fs-developer@lfdr.de>; Mon, 24 Jan 2022 13:56:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nBytx-0008AY-V8; Mon, 24 Jan 2022 12:56:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nBytw-0008AR-Hc
 for v9fs-developer@lists.sourceforge.net; Mon, 24 Jan 2022 12:56:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6JseWqubkmwnt9lHAQktZszwisBSVcxFLmnfh66TQgo=; b=HlBT9rLkJ642cbOn/gDykm0j6L
 1oK7UrLFBX209DGAOko3R1EumyYJsfxH6GIZsjvXtUEb9vTt8w0JI9v3NcJNpwwpMJsGpXmBdT6Wb
 oTqqWc1tNpIU04iE21vcAl+Z9mt9gsKAHSEL1F/5+EcLDF7P6HVj0ZikK42DG5sFBgRQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6JseWqubkmwnt9lHAQktZszwisBSVcxFLmnfh66TQgo=; b=l45qQFOZcBFUkDp921RvtVxGKJ
 BFQjDRaaH4TuDFwvFNpRW0kPnlJyO4l5dIvfoCF0UuIpJVoPFQ4Esbp8T3EJ+EymhDz/RDgTg2J0P
 Qx0qznyyEd06ZJoXVCTdIW+hBiUVMdKYmGJ7HTlGCkVHpwrkHov1IMO75VKIyIatC0KA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nByts-00ARW6-5d
 for v9fs-developer@lists.sourceforge.net; Mon, 24 Jan 2022 12:56:51 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 7667DC01D; Mon, 24 Jan 2022 13:56:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1643029001; bh=6JseWqubkmwnt9lHAQktZszwisBSVcxFLmnfh66TQgo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GzOavpODz14oqxbv5RbdR2wLXq7pTEcI5u52H8PadYg0JmPfnhk9oeWKJfZBn8vkB
 I4MsutqTgDaVtMyvRpwLbWYRwycqZwYHIjGoyUxzTT/IyixGRlMH5w27qKi4Guh4md
 Ljuc5UaY10+V3Jfe/MGnYbWa65xJdr4AJlG6QBCDig2ShklBcd+u+XuYMVoJl4v+Hj
 hVd/j1AzpEDvjhvfHiTTnvBCWyVJ3SHCbLo2I8P3aycgn7D5q7i41+Ij4vUDRevgil
 iSv/0fCxf28N/66hLsQhwmG/ck0RRLj49nB4nid8Oby+JWeEe8keFyboDZMUIq0WLh
 UXTrClGc+YaWg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 3EE97C009;
 Mon, 24 Jan 2022 13:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1643029000; bh=6JseWqubkmwnt9lHAQktZszwisBSVcxFLmnfh66TQgo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gYbYbt/ayX1dCV2uNBYlm4FO5W0WDRsU+1mzAuT1ae9ai3t+B4Us7miCxTydHAqct
 cSLnGZUa0J9eRHFJ2Z4c7mvhv4uwvBFIXmjQkz+ATLe0b/ULwo5ZQtuIpr8b6CVumQ
 lJ7dO4pOhJjqUTxtzGXCFdY+XlsIiJt8qAP0iQtDFoubx4E8R3iKHZin0dhO60O5jr
 pue+e51LHe4ybTtwchjHKulBLYkT50roiafWWo1dCB4Rfj0I5JA8frBzYk79GH1TOa
 kpgLpdxAKw3dScYBZi+6HGhgFVV4UyIKJeDgN5TJaxZax9F69ROTjjztamMyk5SbCx
 ELo51HZsZFS/g==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id a5f2f446;
 Mon, 24 Jan 2022 12:56:32 +0000 (UTC)
Date: Mon, 24 Jan 2022 21:56:17 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Ye6h8U/NJcx3ErHa@codewreck.org>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <5111aae45d30df13e42073b0af4f16caf9bc79f0.camel@oldum.net>
 <Ye6IaIqQcwAKv0vb@codewreck.org> <22204794.ZpPF1Y2lYg@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22204794.ZpPF1Y2lYg@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Mon, Jan 24,
 2022 at 12:57:35PM
 +0100: > > We're just starting a new development cycle for 5.18 while 5.17
 is > > stabilizing, so this mostly depends on the ability to c [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nByts-00ARW6-5d
Subject: Re: [V9fs-developer] [PATCH v4 00/12] remove msize limit in virtio
 transport
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Mon, Jan 24, 2022 at 12:57:35PM +0100:
> > We're just starting a new development cycle for 5.18 while 5.17 is
> > stabilizing, so this mostly depends on the ability to check if a msize
> > given in parameter is valid as described in the first "STILL TO DO"
> > point listed in the cover letter.
> 
> I will ping the Redhat guys on the open virtio spec issue this week. If you 
> want I can CC you Dominique on the discussion regarding the virtio spec 
> changes. It's a somewhat dry topic though.

I don't have much expertise on virtio stuff so don't think I'll bring
much to the discussion, but always happy to fill my inbox :)
It's always good to keep an eye on things at least.

> > I personally would be happy considering this series for this cycle with
> > just a max msize of 4MB-8k and leave that further bump for later if
> > we're sure qemu will handle it.
> 
> I haven't actually checked whether there was any old QEMU version that did not 
> support exceeding the virtio queue size. So it might be possible that a very 
> ancient QEMU version might error out if msize > (128 * 4096 = 512k).

Even if the spec gets implemented we need the default msize to work for
reasonably older versions of qemu (at least a few years e.g. supported
versions of debian/rhel can go quite a while back), and ideally have a
somewhat sensible error if we go above some max...

> Besides QEMU, what other 9p server implementations are actually out there, and 
> how would they behave on this? A test on their side would definitely be a good 
> idea.

9p virtio would only be qemu as far as I know.

For tcp/fd there are a few:
 - https://github.com/chaos/diod (also supports rdma iirc, I don't have
any hardware for rdma tests anymore though)
 - https://github.com/nfs-ganesha/nfs-ganesha (also rdma)
 - I was pointed at https://github.com/lionkov/go9p in a recent bug
report
 - http://repo.cat-v.org/libixp/ is also a server implementation I
haven't tested with the linux client in a while but iirc it used to work


I normally run some tests with qemu (virtio) and ganesha (tcp) before
pushing to my linux-next branch, so we hopefully don't make too many
assumptions that are specific to a server


> > We're still seeing a boost for that and the smaller buffers for small
> > messages will benefit all transport types, so that would get in in
> > roughly two months for 5.18-rc1, then another two months for 5.18 to
> > actually be released and start hitting production code.
> > 
> > 
> > I'm not sure when exactly but I'll run some tests with it as well and
> > redo a proper code review within the next few weeks, so we can get this
> > in -next for a little while before the merge window.
> 
> Especially the buffer size reduction patches needs a proper review. Those 
> changes can be tricky. So far I have not encountered any issues with tests at 
> least. OTOH these patches could be pushed through separately already, no 
> matter what the decision regarding the virtio issue will be.

Yes, I've had a first look and it's quite different from what I'd have
done, but it didn't look bad and I just wanted to spend a bit more time
on it.
On a very high level I'm not fond of the logical duplication brought by
deciding the size in a different function (duplicates format strings for
checks and brings in a huge case with all formats) when we already have
one function per call which could take the size decision directly
without going through the format varargs, but it's not like the protocol
has evolved over the past ten years so it's not really a problem -- I
just need to get down to it and check it all matches up.

I also agree it's totally orthogonal to the virtio size extension so if
you want to wait for the new virtio standard I'll focus on this part
first.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
