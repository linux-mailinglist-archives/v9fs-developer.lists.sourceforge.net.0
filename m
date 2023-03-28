Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5586CBE2A
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 13:54:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ph7ty-0001VO-Kj;
	Tue, 28 Mar 2023 11:54:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1ph7tw-0001VG-U7
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 11:54:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BrwzSYm4qlu0nTuyTngTlfOl4RIB2UxL2RuI4CuMcZE=; b=KjH8riyuSjvPkH8SpEQTDcW6Wy
 RWHvysBRszpDwvonyDEx2EW4yKJWDTqCAbBL2Mi+kDzVwhTB9z7eIWN76CwgEyzUZTTvYGUSNtLPO
 AKcyImcehU0vA/1RJgiNns82Tu0Hbh9lL4ySzxnokXcmwvujXImN2RXPb18s0nBkXRZI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BrwzSYm4qlu0nTuyTngTlfOl4RIB2UxL2RuI4CuMcZE=; b=SBC74hrol2NXbxZKElndSLNrh1
 xWASf8RWipQdX69Giz87sCKhfoH5NPbeiJFMn1zPEOMi5kiYq/zGK0yJJ6fsXNFG3kkkM9mJEBUXU
 JDMCn8lrrKMGAz0LrDN3iqs9A5OOWG+FziRfxXcztbyhawazpWcIdD045pSnSkI6n1Mk=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ph7tu-0004cf-Bh for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 11:54:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=BrwzSYm4qlu0nTuyTngTlfOl4RIB2UxL2RuI4CuMcZE=; b=kwH2NwmceG+zgIGou0R+M5KHeu
 KLYVZhG/+nbnPaOqSj3FDNNQchoJuthsHBPLQGJb/XHus3/KJXzhQQ9BFb8wGzwcg5UsxnfJfUMxD
 rfXVm//evWq2CC82XPADMyKtJ+pPpiufrUe9w6hBHdpULrxUhQqXEsGz9+fvg5M9tix6rr/9dzDuj
 NDY6rrBacOcmOSXYVskEbVcy3WmSr6FzF/bb7nyXFZgPnuAAJvE7SVzSVjxsWUsGEb4hIc/YiKSQx
 Y3bxlv+TJfK57oF4dMFQAgxdL+39SxXbsaxqX9FMpJjhqJlroQvB2dhEd4wf40XKwsbdlq6X+HseB
 gwj4RpG3K91d5Tf0Gxkegt/WT9s13hvp94n2p++1ZEllU9W5I8MYMyDWQQv2WhH/e4Hk3FXSidtVQ
 ktal5gQqYpOhgwcQov1dkheb+4avQFm3Ah25AXXduHDbnuxLbnJY31U8y8kERasuXU9SQepF/IJxi
 g4jYZ1T/tyBhM6fGIKgCIseJTdMKarTNUJqQfu8SEx90vGv7Ves32vRChg8PQOfNUu7iv7xMaaahb
 nUWC8pSNU3q0uvA/6OEuJkEUwmzO8dmCAOqq8Pf/4djs79jvej2ZszIM/s8xVyttI123sXEUr+hN5
 4nshqzOYk4mtZTEdh3bNHXWNXMZ585VfxWHxfh1vE=;
To: Luis Chamberlain <mcgrof@kernel.org>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 28 Mar 2023 13:53:49 +0200
Message-ID: <2391219.DQnbcWml7j@silver>
In-Reply-To: <ZCJRlqc/epbRhm93@codewreck.org>
References: <ZA0FEyOtRBvpIXbi@bombadil.infradead.org>
 <ZCHU6k56nF5849xj@bombadil.infradead.org> <ZCJRlqc/epbRhm93@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tuesday, March 28, 2023 4:31:50 AM CEST Dominique Martinet
 wrote: > Luis Chamberlain wrote on Mon, Mar 27, 2023 at 10:39:54AM -0700:
 > > > I have fixed what > > > I hope to be my last bug with the [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1ph7tu-0004cf-Bh
Subject: Re: [V9fs-developer] 9p caching with cache=loose and cache=fscache
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
Cc: lucho@ionkov.net, Pankaj Raghav <p.raghav@samsung.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Amir Goldstein <amir73il@gmail.com>,
 Jeff Layton <jlayton@kernel.org>, Josef Bacik <josef@toxicpanda.com>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tuesday, March 28, 2023 4:31:50 AM CEST Dominique Martinet wrote:
> Luis Chamberlain wrote on Mon, Mar 27, 2023 at 10:39:54AM -0700:
> > > I have fixed what
> > > I hope to be my last bug with the new patch series so it should be
> > > going into linux-next today.
> > 
> > Nice, thanks, since kdevops relies on a host kernel though and we strive
> > to have stability for that, I personally like to recommend distro
> > kernels and so they're a few kernel releases out of date. So debian-testing
> > is on 6.1 as of today for example.
> > [...]
> > -    opts: "ro,trans=virtio,version=9p2000.L,posixacl,cache=loose"
> > +    opts: "ro,trans=virtio,version=9p2000.L,posixacl,cache=none"
> 
> Yes, if you want something mostly coherent with the host, cache=none (or
> cache=mmap if you need mmap, iirc linux build does for linking? if you
> want to do that on guest...) is what you'll want to use on current
> kernels.
> 
> > BTW the qemu wiki seems to suggest cache=loose and its why I used it on
> > kdevops as a default. What about the following so to avoid folks running
> > into similar issues? I can go and update the wiki too.
> 
> I've added Christian in Cc for this point, he's more active on the qemu
> side
> (thread started here:
> https://lkml.kernel.org/r/ZA0FEyOtRBvpIXbi@bombadil.infradead.org
> )
> 
> I have no opinion on the current wording, the default is there for a
> reason and it's a safe default (none), and cache=loose is clearly
> described with "no attempts are made at consistency, intended for
> exclusive, read-only mounts" which I think ought to be clear enough
> (exclusive means not shared with the host), but if you think it's not
> clear enough it probably isn't.
> 
> A word on the qemu wiki "if you want to share with host..." would
> probably be good though.

Hi Luis,

not sure which QEMU wiki page you are referring to. AFAIK we currently have 3
QEMU wiki pages concerning 9p:

1. 9p documentation for users:
https://wiki.qemu.org/Documentation/9psetup

2. 9p documentation for developers only:
https://wiki.qemu.org/Documentation/9p

3. How to setup an entire guest on top of a 9p root filesystem:
https://wiki.qemu.org/Documentation/9p_root_fs

Only the latter wiki page mentions cache=loose at all:

  "To speedup things you can also consider to use e.g. cache=loose instead. 
   That will deploy a filesystem cache on guest side and reduces the amount
   of 9p requests to hosts. As a consequence however guest might not 
   immediately see file changes performed on host side. So choose wisely upon
   intended use case scenario. You can change between cache=mmap or e.g.
   cache=loose at any time."

Which I now changed to:

  "To speedup things you can also consider to use e.g. cache=loose instead.
   That will deploy a filesystem cache on guest side and reduces the amount of
   9p requests to hosts. As a consequence however guest might not see file
   changes performed on host side *at* *all* (as Linux kernel's 9p client 
   currently does not revalidate for fs changes on host side at all, which is
   planned to be changed on Linux kernel side soon though). So choose wisely
   upon intended use case scenario. You can change between cache=mmap or e.g.
   cache=loose at any time."

On the user page it was already clearly mentioned though:

  "Mount the shared folder on guest using

      mount -t 9p -o trans=virtio test_mount /tmp/shared/ -oversion=9p2000.L,posixacl,msize=104857600,cache=none

  In the above example the folder /home/guest/9p_setup/ shared of the host
  is shared with the folder /tmp/shared on the guest. We use no cache because
  current caching mechanisms need more work and the results are not what you
  would expect."

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
