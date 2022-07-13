Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C654572EDA
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Jul 2022 09:12:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBWY4-000151-Aj; Wed, 13 Jul 2022 07:12:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oBWY2-00014v-Ks
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 07:12:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c5Xq6MAbIOWGs66QYYBt/zBq3dTbFAGujt8LMl/IQ+0=; b=EFNKEQ1DdEp7Ox2aCBncCraAIq
 D+dkVFg8PdWCwZaSRp3WT/d+5CCxTBWYfHpadEEeeLbcziC6rDED0sg3r9cHcjr47aZw95TBIwjiy
 /Q2DUhBohgc+IT9CumAViTD52vg2eLG+q8BXs78+vIsjfnIbVjNuOl0J5DihRUTIKaJw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c5Xq6MAbIOWGs66QYYBt/zBq3dTbFAGujt8LMl/IQ+0=; b=ldoFC6sBvCPQF9TDkqtxsPvT2T
 xx/VRYP8tH2uO4vbo1Fm8du3bhsPPMw8dyCEGAQbuUAMQNyaLhnVbuLUWSWtI3U75V79/tYmEk7WJ
 rxchCk3A8u/r7PY2z4jfOqKvUP3niQe1vA/u4iDFHFjECuB7BhvR7aIEiwvI3Qde+RM8=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBWXz-00FRwe-0R
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 07:12:39 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B0E42C01E; Wed, 13 Jul 2022 09:12:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657696347; bh=c5Xq6MAbIOWGs66QYYBt/zBq3dTbFAGujt8LMl/IQ+0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ylDrCMaXjdknDbl8tiJxwUWGLbHD9Y+QgMYZTO8qqA42RDSO/LfEANT6k5Or1ySLg
 +kqWTV4Wo8HHjErYfWBcUj6QyHVKnSHOThUOOyIDf2t1LZRkHpgulmsq5pA1Ztjkdw
 hVv+KhbtwQIKMfuD9iiw3vWDg5aaytjAaY69o1qZ6qu/mpQQywDiKjCMPYsNm6I1Qj
 2HjpVGDRGeLB5h42XeEjuUUH8ixPofN7lvMjDaHnYh0r6xuZjnVAL0rriuDCKZLfby
 zrQnNrKEqeZhVv3NMLns2EqnJU8n7CPUcBpMk+aQCavUJ+V69oeW1JDK11F6359mp/
 mfY62ysGnCOaQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id DE484C009;
 Wed, 13 Jul 2022 09:12:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657696347; bh=c5Xq6MAbIOWGs66QYYBt/zBq3dTbFAGujt8LMl/IQ+0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ylDrCMaXjdknDbl8tiJxwUWGLbHD9Y+QgMYZTO8qqA42RDSO/LfEANT6k5Or1ySLg
 +kqWTV4Wo8HHjErYfWBcUj6QyHVKnSHOThUOOyIDf2t1LZRkHpgulmsq5pA1Ztjkdw
 hVv+KhbtwQIKMfuD9iiw3vWDg5aaytjAaY69o1qZ6qu/mpQQywDiKjCMPYsNm6I1Qj
 2HjpVGDRGeLB5h42XeEjuUUH8ixPofN7lvMjDaHnYh0r6xuZjnVAL0rriuDCKZLfby
 zrQnNrKEqeZhVv3NMLns2EqnJU8n7CPUcBpMk+aQCavUJ+V69oeW1JDK11F6359mp/
 mfY62ysGnCOaQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 75c57f87;
 Wed, 13 Jul 2022 07:12:20 +0000 (UTC)
Date: Wed, 13 Jul 2022 16:12:05 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Kent Overstreet <kent.overstreet@gmail.com>
Message-ID: <Ys5wRdSwtTeLF6nc@codewreck.org>
References: <12950409.o0bIpVV1Ut@silver>
 <20220713041700.2502404-1-asmadeus@codewreck.org>
 <0aa8323d-9461-a861-ac35-6952e7aeaf93@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0aa8323d-9461-a861-ac35-6952e7aeaf93@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Kent Overstreet wrote on Wed, Jul 13,
 2022 at 02:39:06AM -0400:
 > On 7/13/22 00:17, Dominique Martinet wrote: > > TFLUSH is called while
 the thread still holds memory for the > > request we're trying [...] 
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oBWXz-00FRwe-0R
Subject: Re: [V9fs-developer] [RFC PATCH] 9p: forbid use of mempool for
 TFLUSH
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
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Kent Overstreet wrote on Wed, Jul 13, 2022 at 02:39:06AM -0400:
> On 7/13/22 00:17, Dominique Martinet wrote:
> > TFLUSH is called while the thread still holds memory for the
> > request we're trying to flush, so mempool alloc can deadlock
> > there. With p9_msg_buf_size() rework the flush allocation is
> > small so just make it fail if allocation failed; all that does
> > is potentially leak the request we're flushing until its reply
> > finally does come.. or if it never does until umount.
> 
> Why not just add separate mempools for flushes? We don't have to allocate
> memory for big payloads so they won't cost much, and then the IO paths will
> be fully mempool-ified :)

I don't think it really matters either way -- I'm much more worried
about the two points I gave in the commit comment section: mempools not
being shared leading to increased memory usage when many mostly-idle
mounts (I know users who need that), and more importantly that the
mempool waiting is uninterruptible/non-failible might be "nice" from the
using mempool side but I'd really prefer users to be able to ^C out of
a mount made on a bad server getting stuck in mempool_alloc at least.

It looked good before I realized all the ways this could hang, but now I
just think for something like 9p it makes more sense to fail the
allocation and the IO than to bounce forever trying to allocate memory
we don't have.

Let's first see if you still see if you still see high order allocation
failures when these are made much less likely with Chritisan's patch.

What I intend to push this cycle is in
https://github.com/martinetd/linux/commits/9p-test
up to 'net/9p: allocate appropriate reduced message buffers'; if you can
easily produce them I'd appreciate if you could confirm if it helps.

(just waiting for Chritian's confirmation + adjusting the strcmp for
rdma before I push it to 9p-next)
--
Dominique



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
