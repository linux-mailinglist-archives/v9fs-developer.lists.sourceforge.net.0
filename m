Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 103FC56CF33
	for <lists+v9fs-developer@lfdr.de>; Sun, 10 Jul 2022 14:58:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oAWWL-0005Aw-Jw; Sun, 10 Jul 2022 12:58:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1oAWW8-0005A7-Hn
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 12:58:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EK+6TEolrrVoFamKqlnUVwIVb1PwegRCKbfICY4Zt9I=; b=T6qZPFc/VCBfZwET4Hi3d8cR6V
 bO3l/x9YKc4I4HPah35diRr5JaCQTvF1Irc8RvoduEH/xzDr80+UrrNUyONt+9rSjsR4i1A/zPERf
 18EpvC88iVIlD8voiMRI/0Cr9A76aaxpVFsgj4As34PItxaPLFlIx6KnsZmrVRcC7zyk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EK+6TEolrrVoFamKqlnUVwIVb1PwegRCKbfICY4Zt9I=; b=CGS8Iqt9Q8Asc+iVHFqglkezi8
 7EZ3jHJXuRWzHCb12Hki+mXvYNSIhC/tZuXQatdpKfH7cEx8IXmDUhPZhT79AVDiQusW8kpeUN357
 D10OyZyRnelV8htlKsrU/r7ja2+MqV8laCnz/ug+0bPMN2tw6sQvYjDwo+hsg5CKMgoA=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oAWW6-0002kQ-GJ
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 12:58:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=EK+6TEolrrVoFamKqlnUVwIVb1PwegRCKbfICY4Zt9I=; b=h3jLIjBMimiYDJNtTfQEyU3n/3
 2hrg2JopUlPkwPQ0uLpFUVsQtc88Tbsk9gFdZ8MOEoELPBsKlLAP1uwwAyEtmO1Sn/vzYiP5jJAYx
 ZKA0yYLudp4TYXp5OJmqpLFpWFITb3wwC1Oci+ndTOPK0aAPuaCgzUr/xCAF4iV3zOdMygvkBFhDZ
 ismiQedCsTiSl6O75E0U3e08gnkxb16ZV2tdglJN8mDlA/Uk3EQUAqVnnyEEEsUvuPuSC2COUZ/zy
 mTx/1UK/9NJuH5g8fm0j0ptQ4uAWyCmeDAe6TQ/tAmGNCVWMeGu2ku6eA7IrFfMI0lW7YaEWHqNM5
 3aWdCjvn6uEHN4ExSNwe38TlIRn9NVmj7RNuM+kFuBUvtjWhME/XUC7moG831TE6NdoZfF3xLp3hU
 fmJpqnVFrtdpBOZlWswAsAP+nC1TztMzvWLAJlbbbKgCttVedew2ltJTevKJlQJmCec8f9Ub67Srx
 9yPP9xkB/Aj75AWavmOgTk/PKvZgSKO6TkicndvNd1R6KKSxGIaSLkn899ePW6ZikRU+LNuxDQrg2
 uuEp0fOfBKYGwTAc+ktKANDF3XzXcEVF0AolIESOPf+Ap71uktbgFOxMsS8zJBWJyGLHIisS5+XOQ
 UHfTdhkNa345o5o/xnHdHjawy6TS0kFupEgTBm+JY=;
To: Dominique Martinet <asmadeus@codewreck.org>,
 Kent Overstreet <kent.overstreet@gmail.com>
Date: Sun, 10 Jul 2022 14:57:58 +0200
Message-ID: <13813647.qg49PginWZ@silver>
In-Reply-To: <YsnqFqQodj9khp3Q@codewreck.org>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <2211309.MyIe47cYEz@silver> <YsnqFqQodj9khp3Q@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Greg on CC: please correct me on false assumptions on QEMU
 side ... On Samstag, 9. Juli 2022 22:50:30 CEST Dominique Martinet wrote:
 > Christian Schoenebeck wrote on Sat, Jul 09, 2022 at 08:08:41PM +0200: >
 > Mmm, I "think" that wouldn't be something new. There is no [...] 
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
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oAWW6-0002kQ-GJ
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Latchesar Ionkov <lucho@ionkov.net>, Greg Kurz <groug@kaod.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Greg on CC: please correct me on false assumptions on QEMU side ...

On Samstag, 9. Juli 2022 22:50:30 CEST Dominique Martinet wrote:
> Christian Schoenebeck wrote on Sat, Jul 09, 2022 at 08:08:41PM +0200:
> > Mmm, I "think" that wouldn't be something new. There is no guarantee that
> > client would not get a late response delivery by server of a request that
> > client has already thrown away.
> 
> No. Well, it shouldn't -- responding to tflush should guarantee that the
> associated request is thrown away by the server
> 
> https://9fans.github.io/plan9port/man/man9/flush.html

Yes, but that's another aspect of Tflush, its main purpose actually: client 
tells server that it no longer cares of previously sent request with oldtag=X. 
That prevents the server routines from hanging for good on things that client 
no longer cares for anyway, which otherwise evntually might lead to a complete 
server lockup on certain setups.

On QEMU side we have a dedicated 'synth' fs driver test case to ensure that 
this really works (a simulated fs I/O call that never returns -> Tflush aborts 
it -> Test Passed):

https://github.com/qemu/qemu/blob/master/tests/qtest/virtio-9p-test.c#L1234

> Order is not explicit, but I read this:
> > If it recognizes oldtag as the tag of a pending transaction, it should
> > abort any pending response and discard that tag.
> 
> late replies to the oldtag are no longer allowed once rflush has been
> sent.

That's not quite correct, it also explicitly says this:

"The server may respond to the pending request before responding to the 
Tflush."

And independent of what the 9p2000 spec says, consider this:

1. client sends a huge Twrite request
2. server starts to perform that write but it takes very long
3.A impatient client sends a Tflush to abort it
3.B server finally responds to Twrite with a normal Rwrite

These last two actions 3.A and 3.B may happen concurrently within the same 
transport time frame, or "at the same time" if you will. There is no way to 
prevent that from happening.

> But I guess that also depends on the transport being sequential -- that
> is the case for TCP but is it true for virtio as well? e.g. if a server
> replies something and immediately replies rflush are we guaranteed
> rflush is received second by the client?

That's more a higher level 9p server controller portion issue, not a low level 
transport one:

In the scenario described above, QEMU server would always send Rflush response 
second, yes. So client would receive:

1. Rwrite or R(l)error
2. Rflush

If the same assumption could be made for any 9p server implementation though, 
I could not say.

As for transport: virtio itself is really just two FIFO ringbuffers (one 
ringbuffer client -> server, one ringbuffer server -> client). Once either 
side placed their request/response message there, it is there, standing in the 
queue line and waiting for being pulled by the other side, no way back. Both 
sides pull out messages from their FIFO one by one, no look ahead. And a 
significant large time may pass for either side to pull the respective next 
message. Order of messages received on one side, always corresponds to order 
of messages being sent by other side, but that only applies to one ringbuffer 
(direction). The two ringbuffers (message directions) are completely 
independent from each other though, so no assumption can be made between them.


> There's also this bit:
> > When the client sends a Tflush, it must wait to receive the
> > corresponding Rflush before reusing oldtag for subsequent messages
> 
> if we free the request at this point we'd reuse the tag immediately,
> which definitely lead to troubles.

Yes, that's the point I never understood why this is done by Linux client. I 
find it problematic to recycle IDs in a distributed system within a short time 
window. Additionally it also makes 9p protocol debugging more difficult, as 
you often look at tag numbers in logs and think, "does this reference the 
previous request, or is it about a new one now?"

> > What happens on server side is: requests come in sequentially, and are
> > started to be processed exactly in that order. But then they are actually
> > running in parallel on worker threads, dispatched back and forth between
> > threads several times. And Tflush itself is really just another request.
> > So there is no guarantee that the response order corresponds to the order
> > of requests originally sent by client, and if client sent a Tflush, it
> > might still get a response to its causal, abolished "normal" request.
> 
> yes and processing flush ought to get a lock or something and look for
> oldtag.
> Looking at qemu code it does it right: processing flush find the old
> request and marks it as cancelled, then it waits for the request to
> finish (and possibly get discarded) during which (pdu_complete) it'll
> wake the flush up; so spurrious replies of a tag after flush should not
> be possible.
> 
> --
> Dominique




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
