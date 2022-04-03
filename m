Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E35344F0977
	for <lists+v9fs-developer@lfdr.de>; Sun,  3 Apr 2022 14:38:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nazVE-000695-KF; Sun, 03 Apr 2022 12:38:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nazV5-000688-Gf
 for v9fs-developer@lists.sourceforge.net; Sun, 03 Apr 2022 12:38:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=14x/o31XF+hFpAYq9fTGzk2MDqsFhtWX55WYqE25E1U=; b=K5+P7eOV/6WTt4LOPn54PPEf+o
 2lVKxLH+yhLeU8HpVwhlU/dXnMfQXMiryqUW09lJHsc3Fem3deaoD86APB+/wRNqQktYTgMQOfWTz
 6/xm+ua+YjpupYuyHjeo9Cm4+DOPycjOFS07xLoxRL48s1v7ofD3QKAHbE6y8lu53aCQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=14x/o31XF+hFpAYq9fTGzk2MDqsFhtWX55WYqE25E1U=; b=Y72WhEpVTQ0lqR8Rqyp+U0kgmP
 ZCGbFdLkPEUXg+MF7doVYuMkSJZDtIB5vEWy4irTpzmKuhGIHwSG7Bg/388NAlZEDv2qNgeEINrQL
 vJL6xxBrq92R6OvYQBCiUWKQvDZl+lOBhlo6N0193IqeH1Yp7FtVj/KfCOCSYzRUX+wI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nazUu-0005w8-Nu
 for v9fs-developer@lists.sourceforge.net; Sun, 03 Apr 2022 12:38:28 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 69D90C01D; Sun,  3 Apr 2022 14:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648989496; bh=14x/o31XF+hFpAYq9fTGzk2MDqsFhtWX55WYqE25E1U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S/GpHEC8WKXIiLuGa2p+YAJGhDOyKk1dcOKPj9tg5jpGysq4R4wAnmIGLDWBaPJhH
 WjI9R7rrhjESOn7uf5knwAkHb0TEXRPXbEg18X+e/+hShIgjKEJ8z63Pit3Ag8M8WS
 uyao1/JALGjToof3e/VzYJRp9DwBNcTk9QqTLIJ831tabMN1CqU3BmYYU+OdnEvPJm
 MKwF+IBxnox4sjuZX+6l2mDI4pZQbWSsGtvZ16HV94aYHnF11YVFXWQsC6Y1pn3lQE
 YBKF17QNL525xTZNE8cRsxnM6ptzF5D+/oPt3tPa6+/JfcKrLstV8BEu/08dwAGI46
 J/jPGwkcy2EKA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 3FDEEC009;
 Sun,  3 Apr 2022 14:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648989495; bh=14x/o31XF+hFpAYq9fTGzk2MDqsFhtWX55WYqE25E1U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cIyFg8jarIQGtbhQlFmpExci4A64a6JwCSMyoStzU8Qh+IQ2Ww4LmHhlP8t6cU0lA
 JiLWalJRxi3/U0BWKgroj13SnuxZ7SRIlpbK28Dl5iPwOSKH9Loulme620K8TuRNXp
 lYybuOgeviKx/I1MxYqLxMA0MQbrfONszpiwJN5vleNJUxIVqepSWaHvB30mdTEhIw
 6pQ+S8ZC7hZWGSVZTsSaXcDlJY8OZP2L3O3a5Rf7/iKRfXg5YY8sTzotdrxQD1V/HS
 wtaRu7Hk/du97HKFO1BEPbSG5DR7J2DmxVtiVR3nGSx3c3Kcd8e8sJCZcvSo1QpI1g
 dCaCeN/aStUZA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 467446ff;
 Sun, 3 Apr 2022 12:38:10 +0000 (UTC)
Date: Sun, 3 Apr 2022 21:37:55 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YkmVI6pqTuMD8dVi@codewreck.org>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <8c305df4646b65218978fc6474aa0f5f29b216a0.1640870037.git.linux_oss@crudebyte.com>
 <YkhYMFf63qnEhDd0@codewreck.org> <1953222.pKi1t3aLRd@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1953222.pKi1t3aLRd@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Sun, Apr 03,
 2022 at 01:29:53PM
 +0200: > So maybe I should just exclude the 9p RDMA transport from this 9p
 message size > reduction change in v5 until somebody had a cha [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nazUu-0005w8-Nu
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Sun, Apr 03, 2022 at 01:29:53PM +0200:
> So maybe I should just exclude the 9p RDMA transport from this 9p message size 
> reduction change in v5 until somebody had a chance to test this change with 
> RDMA.

Yes, I'm pretty certain it won't work so we'll want to exclude it unless
we can extend the RDMA protocol to address buffers.

From my understanding, RDMA comes with two type of primitives:
 - recv/send that 9p exlusively uses, which is just a pool of buffers
registered to the NIC and get filled on a first-come-first-serve basis
(I'm not sure if it's a first-fit, or if message will be truncated, or
if it'll error out if the message doesn't fit... But basically given
that's what we use for 9p we have no way of guaranteeing that a read
reply will be filled in the big buffer allocated for it and not
something else)

If we're lucky the algorithm used is smallest-fit first, but it doesn't
look like it:
---
The order of the Receive Request consumptions in a Receive Queue is by
the order that they were posted to it.
When you have a SRQ, you cannot predict which Receive Request will be
consumed by which QP, so all the Receive Requests in that SRQ should be
able to contain the incoming message (in terms of length).
--- https://www.rdmamojo.com/2013/02/02/ibv_post_recv/ (in a comment)


 - read/write, which can be addressed e.g. the remote end can specify a
cookie along with address/size and directly operate on remote memory
(hence the "remote direct memory access" name). There are also some cool
stuff that can be done like atomic compare and swap or arithmetic
operations on remote memory which doesn't really concern us.

Using read/writes like NFS over RDMA does would resolve the problem and
allow what they call "direct data placement", which is reading or
writing directly from the page cache or user buffer as a real zero copy
operation, but it requires the cookie/address to be sent and client to
act on it so it's a real transport-specific protocol change, but given
the low number of users I think that's something that could be
considered if someone wants to work on it.

Until then we'll be safer with that bit disabled...

> Which makes me wonder, what is that exact hardware, hypervisor, OS that 
> supports 9p & RDMA?

I've used it with mellanox infiniband cards in the past. These support
SRIOV virtual functions so are quite practical for VMs, could let it do
the work with a single machine and no cable.

I'm pretty sure it'd work with any recent server hardware that supports
RoCE (I -think- it's getting more common?), or with emulation ~10 years
ago I got it to run with softiwarp which has been merged in the kernel
(siw) since so that might be the easiest way to run it now.

Server-side, both diod and nfs-ganesha support 9p over RDMA, I haven't
used diod recently but ganesha ought to work.


> On the long-term I can imagine to add RDMA transport support on QEMU 9p side. 

What would you expect it to be used for?

> There is already RDMA code in QEMU, however it is only used for migration by 
> QEMU so far I think.

Yes, looking at it a bit there's live migration over RDMA (I tested it
at my previous job), some handling for gluster+rdma, and a
paravirtualized RDMA device (pvrdma).
the docs for it says it works with soft-roce so it would also probably
work for tests (I'm not sure what difference there is between rxe and
siw), but at this point you've just setup virtualized rdma on the host
anyway...

I'll try to get something setup for tests on my end as well, it's
definitely something I had on my todo...
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
