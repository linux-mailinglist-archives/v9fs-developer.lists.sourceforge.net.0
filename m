Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D43D056CF3F
	for <lists+v9fs-developer@lfdr.de>; Sun, 10 Jul 2022 15:20:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oAWrT-0003po-0G; Sun, 10 Jul 2022 13:20:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oAWrR-0003pd-Hp
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 13:20:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BA1Ry0IWPOOSJw/o3azTv0M4ow6Qi2iu36US4/aFs9c=; b=jUdYh5z+LDr9aWHJ+52Zk/spYC
 osfyTWi5S9JinMsGZLG3bA4XA86ouXkmIR62WI3PFHT/F1bK2mpsU42lSIqN+69+dR5NsDGxsXDR1
 d3rWJvvgwoatCXY597EJ/rfpi4Q5FwXEKF8BeQXdc2paMseXOXMkb2ZIuiWC3HKPNZj4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BA1Ry0IWPOOSJw/o3azTv0M4ow6Qi2iu36US4/aFs9c=; b=CkE/PKQP5zwAb6lffj6UXhlrU1
 RkOcUx3i223I/lnI/LtSZ39zk5Zk2PRW4HNCYM2Edt/RghJKVeGPnZMErylsNoggIfyEnIxMkIJGx
 mxdhJw7/Sxoctj1Ho55OYYX2wrkw0f9GRTd063DOTi8UU6BCrzrZYNB4DwHQxBLE+w1Q=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oAWrN-00Cqmv-7n
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 13:20:32 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D3294C009; Sun, 10 Jul 2022 15:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657459219; bh=BA1Ry0IWPOOSJw/o3azTv0M4ow6Qi2iu36US4/aFs9c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M83NlhdpWtBE3mjHFlnPr2rjQlyITOmYBxtayG2+6Jt+MWQGxIWfH2Dw5EjSRkRLO
 7wfImD1yHBtl/CN71vA0xXyiwUSAIwTVpCLRyo8U6Zr/iI06Yce0aE7EyX+aT8oK9A
 uBLJCUF/H2j04q5lZ5PAl5SZLSL1vA62HQN5kNeIGBKCFG920v0rXwVpSXFM6zn7NI
 ZLY+014/dmMQnSdf8gGwh0BGlhtT3ApQNcN77EbE9yBXI7btcySurGJsdraupfJrD8
 12GeFcjgI3JmrfqN2D/O9lhDuKv/tkQlp19yP4o1XwYyHLkFaHFtETOLIsudvdYkHa
 SKwsUeukCyviA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id BC720C009;
 Sun, 10 Jul 2022 15:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657459217; bh=BA1Ry0IWPOOSJw/o3azTv0M4ow6Qi2iu36US4/aFs9c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=scvanWsnnP3oFIx2I7E3v2tZ5x1ODVFxcNaRSevROU/O/vnbEWTuhI5hkYNcNhreb
 D18JVgwYHGUeYV+aYiCcx5Kg2lUlvTzvjVzRlRpumPacD1n+owFNzkW/Qi+uKVGjYe
 FD5+kLkyrAIQ4ugDLu9vO1pqbxbofjtVHjdRIUPye2aKlAHJO83F8p+NMzTvktAfdl
 fbanImua7dQexJqCcFZ9dvNVFmNwO+/Za0YMVn/1XRPKb/KRR92bRLpr6q/xrwgl+r
 Hh4YZc04erHramFWKilSSv1J6ptw1JFbt7mRzTbo3f81fvQCARfUSz8oIc9j/Tk+0x
 +ixUe8OaIiHNw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id d593e380;
 Sun, 10 Jul 2022 13:20:11 +0000 (UTC)
Date: Sun, 10 Jul 2022 22:19:56 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YsrR/M+fna44trHm@codewreck.org>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <2211309.MyIe47cYEz@silver> <YsnqFqQodj9khp3Q@codewreck.org>
 <13813647.qg49PginWZ@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13813647.qg49PginWZ@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Sun, Jul 10,
 2022 at 02:57:58PM
 +0200: > On Samstag, 9. Juli 2022 22:50:30 CEST Dominique Martinet wrote:
 > > Christian Schoenebeck wrote on Sat, Jul 09, 2022 at 08:08:4 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oAWrN-00Cqmv-7n
Subject: Re: [V9fs-developer] [PATCH 3/3] 9p: Add mempools for RPCs
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
 Greg Kurz <groug@kaod.org>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net,
 Kent Overstreet <kent.overstreet@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Sun, Jul 10, 2022 at 02:57:58PM +0200:
> On Samstag, 9. Juli 2022 22:50:30 CEST Dominique Martinet wrote:
> > Christian Schoenebeck wrote on Sat, Jul 09, 2022 at 08:08:41PM +0200:
> > > Mmm, I "think" that wouldn't be something new. There is no guarantee that
> > > client would not get a late response delivery by server of a request that
> > > client has already thrown away.
> > 
> > No. Well, it shouldn't -- responding to tflush should guarantee that the
> > associated request is thrown away by the server
> > 
> > https://9fans.github.io/plan9port/man/man9/flush.html
> 
> Yes, but that's another aspect of Tflush, its main purpose actually: client 
> tells server that it no longer cares of previously sent request with oldtag=X. 
> That prevents the server routines from hanging for good on things that client 
> no longer cares for anyway, which otherwise evntually might lead to a complete 
> server lockup on certain setups.

I think we're saying the same thing :)

> > Order is not explicit, but I read this:
> > > If it recognizes oldtag as the tag of a pending transaction, it should
> > > abort any pending response and discard that tag.
> > 
> > late replies to the oldtag are no longer allowed once rflush has been
> > sent.
> 
> That's not quite correct, it also explicitly says this:
> 
> "The server may respond to the pending request before responding to the 
> Tflush."
> 
> And independent of what the 9p2000 spec says, consider this:
> 
> 1. client sends a huge Twrite request
> 2. server starts to perform that write but it takes very long
> 3.A impatient client sends a Tflush to abort it
> 3.B server finally responds to Twrite with a normal Rwrite
> 
> These last two actions 3.A and 3.B may happen concurrently within the same 
> transport time frame, or "at the same time" if you will. There is no way to 
> prevent that from happening.

Yes, and that is precisely why we cannot free the buffers from the
Twrite until we got the Rflush.
Until the Rflush comes, a Rwrite can still come at any time so we cannot
just free these resources.
In theory it'd be possible to free the buffers for some protocol and
throw the data with the bathwater, but the man page says that in this
case we should ignore the flush and behave as if the request behaved
properly because of side-effects e.g. even if you try to interrupt an
unlink() call if the server says it removed it, well, it's removed so we
should tell userspace that.

Conversely, once the Rflush came, we can be sure that the Tflush will
never happen and we can free stuff / reuse tag.


> > But I guess that also depends on the transport being sequential -- that
> > is the case for TCP but is it true for virtio as well? e.g. if a server
> > replies something and immediately replies rflush are we guaranteed
> > rflush is received second by the client?
> 
> That's more a higher level 9p server controller portion issue, not a low level 
> transport one:
> 
> In the scenario described above, QEMU server would always send Rflush response 
> second, yes. So client would receive:
> 
> 1. Rwrite or R(l)error
> 2. Rflush
> 
> If the same assumption could be made for any 9p server implementation though, 
> I could not say.

I'm arguing that it's a mandatory requirement -- the 9p client wouldn't
work if servers don't respect this.


> As for transport: virtio itself is really just two FIFO ringbuffers (one 
> ringbuffer client -> server, one ringbuffer server -> client). Once either 
> side placed their request/response message there, it is there, standing in the 
> queue line and waiting for being pulled by the other side, no way back. Both 
> sides pull out messages from their FIFO one by one, no look ahead. And a 
> significant large time may pass for either side to pull the respective next 
> message. Order of messages received on one side, always corresponds to order 
> of messages being sent by other side, but that only applies to one ringbuffer 
> (direction). The two ringbuffers (message directions) are completely 
> independent from each other though, so no assumption can be made between them.

Sounds good though, order within a direction is guaranted, that's what I
wanted to read :)

We're using RC (reliable connected) mode for RDMA so I think it's the
same as I remember it behaves like TCP, which only leaves xen but I'll
pretend it works there as well and not worry about it..


> > > When the client sends a Tflush, it must wait to receive the
> > > corresponding Rflush before reusing oldtag for subsequent messages
> > 
> > if we free the request at this point we'd reuse the tag immediately,
> > which definitely lead to troubles.
> 
> Yes, that's the point I never understood why this is done by Linux client. I 
> find it problematic to recycle IDs in a distributed system within a short time 
> window. Additionally it also makes 9p protocol debugging more difficult, as 
> you often look at tag numbers in logs and think, "does this reference the 
> previous request, or is it about a new one now?"

I can definitely agree with that.
We need to keep track of used tags, but we don't need to pick the lowest
tag available -- maybe the IDR code that allocates tag can be configured
to endlessly increment and loop around, only avoiding duplicates?

Ah, here it is, from Documentation/core-api/idr.rst:

  If you need to allocate IDs sequentially, you can use
  idr_alloc_cyclic().  The IDR becomes less efficient when dealing
  with larger IDs, so using this function comes at a slight cost.


That would be another "easy change", if you'd like to check that cost at
some point...
(until we notice that some server has a static array for tags and stop
working once you use a tag > 64 or something...)


Anyway, this is getting off-topic -- the point is that we need to keep
resources around for the original reply when we send a tflush, so we
can't just free that buffer first unless you're really good with it.

It'd be tempting to just steal its buffers but these might still be
useful, if e.g. both replies come in parallel.
(speaking of which, why do we need two buffers? Do we ever re-use the
sent buffer once the reply comes?... this all looks sequential to me...)


So instead of arguing here I'd say let's first finish your smaller reqs
patches and make mempool again on top of that with a failsafe just for
flush buffers to never fallback on mempool; I think that'll be easier to
do in this order.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
