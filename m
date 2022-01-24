Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55923498185
	for <lists+v9fs-developer@lfdr.de>; Mon, 24 Jan 2022 14:56:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nBzpB-0002hQ-6d; Mon, 24 Jan 2022 13:56:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1nBzp9-0002hJ-KR
 for v9fs-developer@lists.sourceforge.net; Mon, 24 Jan 2022 13:55:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HxlWWgQ8GauYiCKoZUa6/zar05u3k+mFM55UuvHV8R8=; b=KRFPcvc4UISka263KlMGL/izZR
 iRmXv1lptDa4JKOVP1e2CHZ5MDzG4ry1HorFBF/sWOdc6Ub6cALA+iv1nZaK8sa5rTKw5pRKhkVbU
 mMuOgBODRm8qBm0w/hJtSOFh/4KGcKoh9/nGmn0ryO6h6sWV5RnbTf02TtwXWXF3sevM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HxlWWgQ8GauYiCKoZUa6/zar05u3k+mFM55UuvHV8R8=; b=gq4LHOloK4LN3PnBMKxrHs8cYd
 FVJTteavNRHm09NKoyKwjU/loTJFVBYdsiaYIfZTfD3ZQbSRt9+sahjxwIn6Pa44uuxSsUAuvkr72
 h/FzNBD0V971NZ5j60+goM5fR4PTHUbyMui8ret1kKNcZr2jS0F8cS5lU9cQNvwyqRVY=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nBzp4-0001jf-QD
 for v9fs-developer@lists.sourceforge.net; Mon, 24 Jan 2022 13:55:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=HxlWWgQ8GauYiCKoZUa6/zar05u3k+mFM55UuvHV8R8=; b=FbGaJG6nni/T2SHQ9RYXN+Dmkq
 11rD81KTQk3r6dxr4KS5ykrf2+1HxJw7xa5FWVfddkJ/aq7RqHnzciAFzALnZwU60jbzn16Rjmxsd
 x3Kij3bGwAMtKz126RrncquKnLWgOmCNkv5L2XST4PDqPNzKnhnOJ/8i0RS1G97r4twBpVcpKPF1Q
 nTL7vHh10WgIx6slrzzcX6SXASwa2ckR8ouYz2t/xrGXBsYraHziOFyjjBtrf6d68YGIA3tMLOUBs
 KLsLRhU+JG17NYEl0fAPNbG4Q/T3LHelkh4ycx9jMrh3sb8G6KEVr5L7RU8q/09G2jm3S1qMgUEI9
 eyTxRO0cvJ2/uBbG4ayOyJqv9THZSuVbIuVK65qXD0gtnbtc2rZLymCOuE10KCrs1ny5u9RUM5yTX
 OlZEINTKOhW4/cirbM7YXhjz6056q3k3QfaQjgtxVFh4GC49gXls9itCfLf4xrBLWNBx9Lx6Eaor0
 Vu5U3uZOLd6fd/Vu+qiDM9wucyXGKdJb8gHaCy24lV6iaTXWzl3jliT+FM1XfnSe3r6b6aIyiI5/3
 B1/nrAlEz/bVSoKxHxJPB7h4S9JAbT1sD+ar9REDQCEpDtWI2Vtpnqq5ezGubDOUiMOihispVFL7D
 9bKo3cKgVL/Gc1dhEITdhi0lbf/tWSKu0ar76eF18=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 24 Jan 2022 14:55:44 +0100
Message-ID: <5072414.NxdI05fPOR@silver>
In-Reply-To: <Ye6h8U/NJcx3ErHa@codewreck.org>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <22204794.ZpPF1Y2lYg@silver> <Ye6h8U/NJcx3ErHa@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Montag, 24. Januar 2022 13:56:17 CET Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Mon, Jan 24, 2022 at 12:57:35PM +0100:
 > > > We're just starting a new development cycle for 5.18 whi [...] 
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
X-Headers-End: 1nBzp4-0001jf-QD
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Montag, 24. Januar 2022 13:56:17 CET Dominique Martinet wrote:
> Christian Schoenebeck wrote on Mon, Jan 24, 2022 at 12:57:35PM +0100:
> > > We're just starting a new development cycle for 5.18 while 5.17 is
> > > stabilizing, so this mostly depends on the ability to check if a msize
> > > given in parameter is valid as described in the first "STILL TO DO"
> > > point listed in the cover letter.
> > 
> > I will ping the Redhat guys on the open virtio spec issue this week. If
> > you
> > want I can CC you Dominique on the discussion regarding the virtio spec
> > changes. It's a somewhat dry topic though.
> 
> I don't have much expertise on virtio stuff so don't think I'll bring
> much to the discussion, but always happy to fill my inbox :)
> It's always good to keep an eye on things at least.

Ok, I'll then CC you from now on at the virtio spec front, if it gets too 
noisy just raise your hand.

> > > I personally would be happy considering this series for this cycle with
> > > just a max msize of 4MB-8k and leave that further bump for later if
> > > we're sure qemu will handle it.
> > 
> > I haven't actually checked whether there was any old QEMU version that did
> > not support exceeding the virtio queue size. So it might be possible that
> > a very ancient QEMU version might error out if msize > (128 * 4096 =
> > 512k).
> Even if the spec gets implemented we need the default msize to work for
> reasonably older versions of qemu (at least a few years e.g. supported
> versions of debian/rhel can go quite a while back), and ideally have a
> somewhat sensible error if we go above some max...

Once the virtio spec changes are accepted and implemented, that would not be 
an issue at all, virtio changes are always made with backward compatibility in 
mind. The plan is to negotiate that new virtio feature on virtio subsystem 
level, if either side does not support the new virtio feature (either too old 
QEMU or too old kernel), then msize would automatically be limited to the old 
virtio size/behaviour (a.k.a. virtio "queue size") and with QEMU as 9p server 
that would be max. msize 500k.

Therefore I suggest just waiting for the virtio spec changes to be complete 
and implemented. People who care about performance should then just use an 
updated kernel *and* updated QEMU version to achieve msize > 500k. IMO, no 
need to risk breaking some old kernel/QEMU combination if nobody asked for it 
anyway, and if somebody does, then we could still add some kind of
--force-at-your-own-risk switch later on.

> > Besides QEMU, what other 9p server implementations are actually out there,
> > and how would they behave on this? A test on their side would definitely
> > be a good idea.
> 
> 9p virtio would only be qemu as far as I know.
> 
> For tcp/fd there are a few:
>  - https://github.com/chaos/diod (also supports rdma iirc, I don't have
> any hardware for rdma tests anymore though)
>  - https://github.com/nfs-ganesha/nfs-ganesha (also rdma)
>  - I was pointed at https://github.com/lionkov/go9p in a recent bug
> report
>  - http://repo.cat-v.org/libixp/ is also a server implementation I
> haven't tested with the linux client in a while but iirc it used to work
> 
> 
> I normally run some tests with qemu (virtio) and ganesha (tcp) before
> pushing to my linux-next branch, so we hopefully don't make too many
> assumptions that are specific to a server

Good to know, thanks!

> > > We're still seeing a boost for that and the smaller buffers for small
> > > messages will benefit all transport types, so that would get in in
> > > roughly two months for 5.18-rc1, then another two months for 5.18 to
> > > actually be released and start hitting production code.
> > > 
> > > 
> > > I'm not sure when exactly but I'll run some tests with it as well and
> > > redo a proper code review within the next few weeks, so we can get this
> > > in -next for a little while before the merge window.
> > 
> > Especially the buffer size reduction patches needs a proper review. Those
> > changes can be tricky. So far I have not encountered any issues with tests
> > at least. OTOH these patches could be pushed through separately already,
> > no matter what the decision regarding the virtio issue will be.
> 
> Yes, I've had a first look and it's quite different from what I'd have
> done, but it didn't look bad and I just wanted to spend a bit more time
> on it.
> On a very high level I'm not fond of the logical duplication brought by
> deciding the size in a different function (duplicates format strings for
> checks and brings in a huge case with all formats) when we already have
> one function per call which could take the size decision directly
> without going through the format varargs, but it's not like the protocol
> has evolved over the past ten years so it's not really a problem -- I
> just need to get down to it and check it all matches up.

Yeah I know, the advantage though is that this separate function/switch-case 
approach merges many message types. So it is actually less code. And I tried 
to automate code sanity with various BUG_ON() calls to prevent them from 
accidentally drifting with future changes.

> I also agree it's totally orthogonal to the virtio size extension so if
> you want to wait for the new virtio standard I'll focus on this part
> first.

IMO it would make sense to give these message size reduction patches priority 
for now, as long as the virtio spec changes are incomplete.

One more thing: so far I have just concentrated on behavioural aspects and 
testing. What I completed neglected so far was code style. If you want I can 
send a v5 this week with code style (and only code style) being fixed if that 
helps you to keep diff-noise low for your review.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
