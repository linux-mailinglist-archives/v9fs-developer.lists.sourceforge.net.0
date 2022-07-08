Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D82356BA36
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 Jul 2022 15:01:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o9nbU-0003JR-Oz; Fri, 08 Jul 2022 13:01:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1o9nbU-0003JK-1n
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jul 2022 13:01:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uUgQz5drJuRxwq718pUlHf9G0oCeKtbwx5N/3KXL+1w=; b=XJtJub9hNy9dZpwqP1A7FakqDw
 cdfkBcr4MtvFEfEoenY3Z0xprNJKb2PIZiRFkM2Km0YtxGVvc7JXleJPeL+5i0lrQVT27sNOgaCe8
 PbG0oMy82VMcBxPdipBx7ShFk1gbtuIn4XURh8oh6hRbcJKLsA2gvW+nJH68p+RVR6Sw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uUgQz5drJuRxwq718pUlHf9G0oCeKtbwx5N/3KXL+1w=; b=CXPzxnQ7gxOJ29IpGwysVAlgiS
 BGh1wakX/4djqvvys6MHCIdozktvTxl58oJDMb0HCB7REA0eIdVmujuhGeBJDsN6ZopiHDuQPqRRz
 jzeZbayL4jBbOdcS5RkcPxamr48/6qIoNrSDRjO/0q9zlFyiv+qFgAzmjNihqVaA+/oo=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o9nbQ-00As8N-Py
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jul 2022 13:01:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=uUgQz5drJuRxwq718pUlHf9G0oCeKtbwx5N/3KXL+1w=; b=egqw9Px4AzMTi3neswF9XadCp3
 Dz2rThAKxZZcCYbacQheOGJ5+UBXrpG/mdk+TOMzS/GvOBKKVrjnw/n5OBoeTXuwtUSgwkQJp2tzJ
 PRUGLiZyORX/Xc5CvsY1WXIhyFLl0F346Ddz57Tr1gvuXDci2ljtCXQUcYbbyOcKrAycCogPHIRWY
 Z+Rkz7P+5SlICTJTRRIpSQC8NnjoI8wrTVGUggl0CdZkkSPKiF2DVfFhIDBZTGtZxqlvx4iD8Slow
 A4eoZdC0+UO/TAUF/Ke1mSqhdU2PIG3q2RWLrxtOQGxwxYM637ajy5MdO63kTYEQGEVFDZA4UcNBC
 GxXFglNjOqwuOgrWWJtldLYnqUHPeyDOGZNLss864Lb6BgUFestpPL+DM1GLZK33er8dTQq4HZ+al
 XT3cq6p7xMwku3g5zv/x5mUCZYwsBZgjfxRO4KUDcfB0gT+4DIafwP2r3/LFwPOZCkAhIewSmV2ai
 uX1uud98Ne0Dbf0m5XjDb/hqxPP2ew0jCMXgK6wcy1wc/5ZiUHk1EKGOwr8zfq8I4TaPjv7k7e+SH
 U4DLkvvDe4ochbfZvir889synhHiuRoorvTGPWcxH25LlPqRFUd/+ucdVL6F+6+YydLL+Zw38Z3iT
 2Snv5CtneU6rTYNyr8d+eP3xxd6ht1frNC94aIXd8=;
To: Dominique Martinet <asmadeus@codewreck.org>,
 Eric Van Hensbergen <ericvh@gmail.com>
Date: Fri, 08 Jul 2022 15:00:45 +0200
Message-ID: <7969175.Y4Flz6HuuJ@silver>
In-Reply-To: <YsgXtBsfLEQ9dFux@codewreck.org>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <1690835.L3irNgtgWz@silver> <YsgXtBsfLEQ9dFux@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Freitag, 8. Juli 2022 13:40:36 CEST Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Fri, Jul 08, 2022 at 01:18:40PM +0200:
 > > On Freitag, 8. Juli 2022 04:26:40 CEST Eric Van Hensbergen [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o9nbQ-00As8N-Py
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, netdev@vger.kernel.org,
 Nikolay Kichukov <nikolay@oldum.net>, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Freitag, 8. Juli 2022 13:40:36 CEST Dominique Martinet wrote:
> Christian Schoenebeck wrote on Fri, Jul 08, 2022 at 01:18:40PM +0200:
> > On Freitag, 8. Juli 2022 04:26:40 CEST Eric Van Hensbergen wrote:
[...]
> https://github.com/kvmtool/kvmtool indeed has a 9p server, I think I
> used to run it ages ago.
> I'll give it a fresh spin, thanks for the reminder.
> 
> For this one it defines VIRTQUEUE_NUM to 128, so not quite 1024.

Yes, and it does *not* limit client supplied 'msize' either. It just always 
sends the same 'msize' value as-is back to client. :/ So I would expect it to 
error (or worse) if client tries msize > 512kB.

> > > > I found https://github.com/moby/hyperkit for OSX but that doesn't
> > > > really
> > > > help me, and can't see much else relevant in a quick search
> > 
> > So that appears to be a 9p (@virtio-PCI) client for xhyve,
> 
> oh the 9p part is client code?
> the readme says it's a server:
> "It includes a complete hypervisor, based on xhyve/bhyve"
> but I can't run it anyway, so I didn't check very hard.

Hmm, I actually just interpreted this for it to be a client:

fprintf(stderr, "virtio-9p: unexpected EOF writing to server-- did the 9P 
server crash?\n");

But looking at it again, it seems you are right, at least I see that it also 
handles even 9p message type numbers, but only Twrite and Tflush? I don't see 
any Tversion or msize handling in general. [shrug]

> > with max. 256kB buffers <=> max. 68 virtio descriptors (memory segments) 
[1]:
> huh...
> 
> Well, as long as msize is set I assume it'll work out anyway?

If server would limit 'msize' appropriately, yes. But as the kvmtool example 
shows, that should probably not taken for granted.

> How does virtio queue size work with e.g. parallel messages?

Simple question, complicated to answer.

From virtio spec PoV (and current virtio <= v1.2), the negotiated virtio queue 
size defines both the max. amount of parallel (round-trip) messages *and* the 
max. amount of virtio descriptors (memory segments) of *all* currently active/
parallel messages in total. I "think" because of virtio's origin for 
virtualized network devices?

So yes, if you are very strict what the virtio spec <= v1.2 says, and say you 
have a virtio queue size of 128 (e.g. hard coded by QEMU, kvmtool), and say 
client would send out the first 9p request with 128 memory segments, then the 
next (i.e. second) parallel 9p request sent to server would already exceed the 
theoretically allowed max. amount of virtio descriptors.

But in practice, I don't see that this theoretical limitation would exist in 
actual 9p virtio server implementations. At least in all server 
implementations I saw so far, they all seem to handle the max. virtio 
descriptors amount for each request separately.

> Anyway, even if the negotiation part gets done servers won't all get
> implemented in a day, so we need to think of other servers a bit..

OTOH kernel should have the name of the hypervisor/emulator somewhere, right? 
So Linux client's max. virtio descriptors could probably made dependent on 
that name?

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
