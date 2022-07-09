Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFC656CA26
	for <lists+v9fs-developer@lfdr.de>; Sat,  9 Jul 2022 16:43:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oABg8-00021D-8s; Sat, 09 Jul 2022 14:43:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oABg5-00020z-1s
 for v9fs-developer@lists.sourceforge.net; Sat, 09 Jul 2022 14:43:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Aw3ipmbfX7HeLppcMOKDUFXLlpt4/DN5yWy0NUdSWr8=; b=M6rFPhcNwzno1drs98wSb/NZU7
 c5dQ/h3/r49r2V4zzfniUWuWAhTRuP/O1U/2gr5VDtGq6ArUx03TDGWg3+J4cLmhH/ZR97n408oHV
 cAwGxf7ocEpQoc8gpBNwlKGGIe7UpDVOSp5aDW674sk9BGho98mzBxq7ai9Tux4ixmT4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Aw3ipmbfX7HeLppcMOKDUFXLlpt4/DN5yWy0NUdSWr8=; b=kYOBlCydkvwMmmykBe9KtwqTqu
 t0i6Wmj0xL79I7ocMiid3Sde9Z817XgrYJq2JjWiuoECWbXOSeKHJbIbFy1ijWg3TEIRcHniM38xm
 KGmgxeITsnsimSFbeGTSMelR9JGsDfnQvLby/FLmA/sZ8jBwFb4m0A8aaoNGWjBQrea0=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oABg0-0007HA-Gv
 for v9fs-developer@lists.sourceforge.net; Sat, 09 Jul 2022 14:43:24 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id E0193C01D; Sat,  9 Jul 2022 16:43:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657377793; bh=Aw3ipmbfX7HeLppcMOKDUFXLlpt4/DN5yWy0NUdSWr8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V19aw6m+IhT5CXd4C2FkkNHbsOLZE6eTdbj6/oqtQLlJ34AWsr25i1NA86VGcOTxN
 k5zlJCtWOa9FlFPQuyCWd6ureanl/m0kRr/b/02uKaAyAZ1EL0Me4zwvqVRrMfgkRv
 ppgz+z5gY3vS21TH3mQuyHPC16SCpHoNzr8GiVDLnCZImGdcPJc2PS1lig+ozkyCEi
 CHNkFysRZoKhdN0R4T+pE67KUOdMIQFeBucfEV8N7rFnlyIC2GsjuejZZAEEf8W8x6
 n6SMZkZ6849+5wJoY7LDaiXRnjy0DfhNrG/RgxZcSDr2nJeP4Zjo1SMnIP12PL7J8Z
 SrUYn9T5LJt5Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 5396BC009;
 Sat,  9 Jul 2022 16:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657377793; bh=Aw3ipmbfX7HeLppcMOKDUFXLlpt4/DN5yWy0NUdSWr8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V19aw6m+IhT5CXd4C2FkkNHbsOLZE6eTdbj6/oqtQLlJ34AWsr25i1NA86VGcOTxN
 k5zlJCtWOa9FlFPQuyCWd6ureanl/m0kRr/b/02uKaAyAZ1EL0Me4zwvqVRrMfgkRv
 ppgz+z5gY3vS21TH3mQuyHPC16SCpHoNzr8GiVDLnCZImGdcPJc2PS1lig+ozkyCEi
 CHNkFysRZoKhdN0R4T+pE67KUOdMIQFeBucfEV8N7rFnlyIC2GsjuejZZAEEf8W8x6
 n6SMZkZ6849+5wJoY7LDaiXRnjy0DfhNrG/RgxZcSDr2nJeP4Zjo1SMnIP12PL7J8Z
 SrUYn9T5LJt5Q==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id bf5b7337;
 Sat, 9 Jul 2022 14:43:08 +0000 (UTC)
Date: Sat, 9 Jul 2022 23:42:53 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YsmT7WHDh9NXZ/nV@codewreck.org>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <72042449.h6Bkk5LDil@silver> <Yskxs4uQ4v8l7Zb9@codewreck.org>
 <1690934.P4sCSNuWZQ@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1690934.P4sCSNuWZQ@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Sat, Jul 09,
 2022 at 04:21:46PM
 +0200: > > The best thing to do would probably to just tell the client it
 can't use > > the mempools for flushes -- the flushes are rare [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oABg0-0007HA-Gv
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net,
 Kent Overstreet <kent.overstreet@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Sat, Jul 09, 2022 at 04:21:46PM +0200:
> > The best thing to do would probably to just tell the client it can't use
> > the mempools for flushes -- the flushes are rare and will use small
> > buffers with your smaller allocations patch; I bet I wouldn't be able to
> > reproduce that anymore but it should probably just forbid the mempool
> > just in case.
> 
> So the problem is that one task ends up with more than 1 request at a time, 
> and the buffer is allocated and associated per request, not per task. If I am 
> not missing something, then this scenario (>1 request simultaniously per task) 
> currently may actually only happen with p9_client_flush() calls. Which 
> simplifies the problem.

Yes that should be the only case where this happens.


> So probably the best way would be to simply flip the call order such that 
> p9_tag_remove() is called before p9_client_flush(), similar to how it's 
> already done with p9_client_clunk() calls?

I don't think we can do that safely without some extra work - because
until we get the reply from the flush, the legitimate reply to the
original request can still come. It's perfectly possible that by the
time we sent the flush the server will have sent the normal reply to our
original request -- actually with flush stuck there it's actually almost
certain it has...

For trans fd for example the reads happen in a worker thread, if that
buffer disappears too early it'll fail with EIO and the whole mount will
break down as I think that'll just kill the read worker...
(actually how does that even work, it checks for rreq->status !=
REQ_STATUS_SENT but it should be FLSHD at this point .... erm)

In theory we can probably adjust the cancel() callback to make sure that
we never use the recv/send buffers from there on but it might be tricky,
still for tcp that's this 'm->rc.sdata' that will be read into and can
point to a recv buffer if we're mid-reading (e.g. got header for that
reply but it wasn't done in a single read() call and waiting for more
data); and that operatres without the client lock so we can't just take
it away easily...

Well, that'll need careful considerations... I think it'll be much
simpler to say flush calls are allocated weird and don't use the
mempool, even if it's another bit of legacy that'll be hard to
understand why we did that down the road...



> > Anyway, I'm not comfortable with this patch right now, a hang is worse
> > than an allocation failure warning.
> 
> As you already mentioned, with the pending 'net/9p: allocate appropriate 
> reduced message buffers' patch those hangs should not happen, as Tflush would 
> then just kmalloc() a small buffer. But I would probably still fix this issue 
> here nevertheless, as it might hurt in other ways in future. Shouldn't be too 
> much noise to swap the call order, right?

I definitely want to fix this even with your patches, yes.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
