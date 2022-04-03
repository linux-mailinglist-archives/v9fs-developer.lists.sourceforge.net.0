Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FDF4F0A13
	for <lists+v9fs-developer@lfdr.de>; Sun,  3 Apr 2022 16:01:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nb0nD-0005vi-CK; Sun, 03 Apr 2022 14:01:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1nb0n5-0005va-I5
 for v9fs-developer@lists.sourceforge.net; Sun, 03 Apr 2022 14:01:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H6Ha5lBsHsPX5G1DlmiXevipMYnnDCJ8AOPGKB32xEs=; b=Vd0J8c4geKZO+6vThNP6xjoceY
 agL+HRBKtdUddjiSm0TCX837ltsa1y43dRNa6qEyraUVleaMe7y2C8ZdsJUPriH4cY6wXvZU6zWsY
 dW1AujXB0t93sayPUYRb4K0D2FNddIG5JG4ORLzpVZ/JPxRjMXpqROCJ6a+IylLq1+m4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H6Ha5lBsHsPX5G1DlmiXevipMYnnDCJ8AOPGKB32xEs=; b=HlIi/81ZVBf+IV+Y4fhITmCbWD
 Ti2stWBJOx2B86XIcRVkrFCJpOD7/Rg46+Hq0bhEhr30jv4ZIUVHn2KVMgPWPEebpZyCSN/OINHWE
 wSqQIG9ggZy3rC3NgqOl3SWIXzk44eMuAA1WTFQJNNz/gDRMz04RW3b3UUsvh4oG+1IY=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nb0mz-0000UG-Bf
 for v9fs-developer@lists.sourceforge.net; Sun, 03 Apr 2022 14:01:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=H6Ha5lBsHsPX5G1DlmiXevipMYnnDCJ8AOPGKB32xEs=; b=PwcqmEKPYBTFvPooBYy5jJ2GC7
 hB0pUirxhm9+IONk9jFyxnbNIezg39oE+2X2jLGLohwxnz2guXDYFhwVEunQuc5oYXte6L55Cq9Dw
 BqNNiaVbSG9A3JZQ/TN1CBx/esfFq7k+H8dD8c6Se5kNynMJRBa3YyRNNv0np5RYIasS4uIEymF21
 GjP/eFGppQ3qaarrCP7Uh2mxAzbgTSJ/Ci5eQqYi6hf5Qi+JWvcVFibifO5uyAQ25BNXgpf36pMoj
 gDe2xrTNxgFTMKaF2I5OE9sEXw97AvusMpR0sjgrLBuHB6TUD3mKgd6YLGSRxRx8z6UHCz2/ROi3c
 /q87wS8lUkvxFMLBz2Tw1B2mMa99UwHwap6gYoKycshkxi/SyTDFj5/02Xi2BYVsQhiHfe5hd3e6M
 lz6e2fm5XWrjfIgw/4Sy6qWkGfgKLZkEsxEyXOruCejY8MC7C8mFA0DWv91ziAZTwKi8Egs2tHONi
 rW2G4g/5qrsE7nut4gq/789RBLQrkxHNVcpdpvs/JC3Vc4QXRgmVAd9m7NiJ5c3VxzV5dmPm6DDXw
 3tUs/v8yNLquY0Gk/J8/XYFfsTvzrX9YUycAonZSKB7MunqnCbOqenS1dJOaDr68nKYu95hWkG0+w
 5z4XjIJqHY6rrS5yIs1e5ucEz6WKk7PSvrY5H8ijU=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Sun, 03 Apr 2022 16:00:56 +0200
Message-ID: <2745077.ukKBhl4x9b@silver>
In-Reply-To: <YkmVI6pqTuMD8dVi@codewreck.org>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <1953222.pKi1t3aLRd@silver> <YkmVI6pqTuMD8dVi@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sonntag, 3. April 2022 14:37:55 CEST Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Sun, Apr 03, 2022 at 01:29:53PM +0200:
 > > So maybe I should just exclude the 9p RDMA transport from [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nb0mz-0000UG-Bf
Subject: Re: [V9fs-developer] [PATCH v4 12/12] net/9p: allocate appropriate
 reduced message buffers
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

On Sonntag, 3. April 2022 14:37:55 CEST Dominique Martinet wrote:
> Christian Schoenebeck wrote on Sun, Apr 03, 2022 at 01:29:53PM +0200:
> > So maybe I should just exclude the 9p RDMA transport from this 9p message
> > size reduction change in v5 until somebody had a chance to test this
> > change with RDMA.
> 
> Yes, I'm pretty certain it won't work so we'll want to exclude it unless
> we can extend the RDMA protocol to address buffers.

OK, agreed. It only needs a minor adjustment to this patch 12 to exclude the
RDMA transport (+2 lines or so). So no big deal.

> > On the long-term I can imagine to add RDMA transport support on QEMU 9p
> > side.
> What would you expect it to be used for?

There are several potential use cases that would come to my mind, e.g:

- Separating storage hardware from host hardware. With virtio we are
  constrained to the same machine.

- Maybe also a candidate to achieve what the 9p 'synth' driver in QEMU tried 
  to achieve? That 'synth' driver is running in a separate process from the 
  QEMU process, with the goal to increase safety. However currently it is 
  more or less abondened as it is extremely slow, as 9p requests have to be
  dispatched like:

   guest -> QEMU (9p server) -> synth daemon -> QEMU (9p server) -> guest

  Maybe we could rid of those costly extra hops with RDMA, not sure though.

- Maybe also an alternative to virtio on the same machine: there are also some 
  shortcomings in virtio that are tedious to address (see e.g. current 
  struggle with pure formal negotiation issues just to relax the virtio spec 
  regarding its "Queue Size" requirements so that we could achieve higher 
  message sizes). I'm also not a big fan of virtio's assumption that guest 
  should guess in advance host's response size.

- Maybe as transport for macOS guest support in future? Upcoming QEMU 7.0 adds
  support for macOS 9p hosts, which revives the plan to add support for 9p
  to macOS guests as well. The question still is what transport to use for 
  macOS guests then.

However I currently don't know any details inside RDMA yet, and as you already
outlined, it probably has some shortcomings that would need to be revised with
protocol changes as well.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
