Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E1058F7F6
	for <lists+v9fs-developer@lfdr.de>; Thu, 11 Aug 2022 08:54:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oM24m-0000nO-KM; Thu, 11 Aug 2022 06:53:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oM24l-0000nD-2B
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Aug 2022 06:53:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nhBlDGBzdW/ef8TRsMdZP7ZIRUnOqyqodEb3SWZVQ7U=; b=YkoUunhJucTQWDnfWH35Aci5J5
 3zmrh3O9Uv3ybfUzPlpSGzsnyD081ZW8Ej8qstb2fTFeTraBfJeyTQAo6jRfHPkEBM5IaArRgC1qy
 rTd+W4fXIo3n9PxJ4JLwDqt8ng92STtIACpdS0OI/MzO0O58VVZcSmldvh1+x1DCEeB4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nhBlDGBzdW/ef8TRsMdZP7ZIRUnOqyqodEb3SWZVQ7U=; b=HvhHCwOtYZv1k24OBtG1ndU8Vi
 kzny0IjvFpQJHG03VrZjD7xcYTDSg1yTB/UW9UW7NWnzfky5zvf3eQyTPV0uroAKcocvqGzRVEtmn
 WB1QIzJyfQwiFY+bnGWZWESEgrKqYgk4a+G9A0ceuiHGGJnUwb6VdtGci7J0DRv3eM/o=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oM24e-00060G-Qu
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Aug 2022 06:53:49 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 31F8DC01D; Thu, 11 Aug 2022 08:53:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1660200817; bh=nhBlDGBzdW/ef8TRsMdZP7ZIRUnOqyqodEb3SWZVQ7U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bay5QxYSivGYW+8i3QnLyWyFkH6AUqS8erDhFkSJhUHNMTpAdFGEaPxYd9bjAYYdT
 lqgwC2JlwtXpvuzXeSZn78cLnCPQ1T3oT94ZDWbIjdV2J0M2iw677Wnn3tARdurvIZ
 oUrXXgHH6sbM5RbGfQnXEmfyHbu5h9LAWDCtC3Iuji9h1afI9/qqdgVtlPWT4jdjih
 LWJTjvtAxLndE5BkHf3SYWZSYD+B5qzT6MuT+KE0GejMecg14waCquWVbAijOq0tNr
 WpAb7apE2b7KWTTNB3JeUDOSJiF5i/SAMN0883YEspVA+Uc2lnbU9yyxjKuq8J2kJz
 JaoLZ3H3LufNQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 0029EC009;
 Thu, 11 Aug 2022 08:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1660200816; bh=nhBlDGBzdW/ef8TRsMdZP7ZIRUnOqyqodEb3SWZVQ7U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tyWiPXvYZRGOxODrrkkASrryb0OKgCaqlyKaWB/dmHk7G6KWd4FAzvxndQhBCCqFq
 bpqUMeYP6XCBNw/oczqQ5Bt1qMbZELfY+3tM5U0Jkjaf4Uh4q22dCoSOyM7IUtBoBw
 BPKEKBa17TW1bWdVCcqeRyJQmBJIGr619f5hlMgEhEpCZodIfn94Hak2RA16dyYffV
 nU74kKuo7OQ69z6TT5u/CY9lZ+Iim0P/X+An5u7mzP3GrWyucp1nLUPt70a7YNYyOI
 dfByLVurgikEBuWJDVa2k/4rjsPkZiMRecOZ/ZkGezrYBXmx4VHYmSq+COY+1U4B9P
 KBFfQwfz3zVQg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id ce3c10db;
 Thu, 11 Aug 2022 06:53:29 +0000 (UTC)
Date: Thu, 11 Aug 2022 15:53:14 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Message-ID: <YvSnWrfU7kM4Ia9r@codewreck.org>
References: <000000000000da8a9b0570a29c01@google.com>
 <f00146b5-0a14-ac24-3d7b-3d4deeb96359@I-love.SAKURA.ne.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f00146b5-0a14-ac24-3d7b-3d4deeb96359@I-love.SAKURA.ne.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Tetsuo Handa wrote on Thu, Aug 11, 2022 at 03:01:23PM
 +0900: > https://syzkaller.appspot.com/text?tag=CrashReport&x=154869fd080000
 > suggests that p9_client_rpc() is trapped at infinite retry loop 
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
X-Headers-End: 1oM24e-00060G-Qu
Subject: Re: [V9fs-developer] INFO: task hung in iterate_supers
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
 syzbot <syzbot+2349f5067b1772c1d8a5@syzkaller.appspotmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 syzkaller-bugs@googlegroups.com, linux-fsdevel@vger.kernel.org,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi,

Tetsuo Handa wrote on Thu, Aug 11, 2022 at 03:01:23PM +0900:
> https://syzkaller.appspot.com/text?tag=CrashReport&x=154869fd080000
> suggests that p9_client_rpc() is trapped at infinite retry loop

Would be far from the first one, Dmitry brought this up years ago...


> But why does p9 think that Flush operation worth retrying forever?

I can't answer much more than "it's how it was done"; I started
implementing asynchronous flush back when this was first discussed but
my implementation introduced a regression somewhere and I never had time
to debug it; the main "problem" is that we (currently) have no way of
freeing up resources associated with that request if we leave the
thread.
The first step was adding refcounting to requests and this is somewhat
holding up, so all's left now would be to properly clean things up if we
leave this call.

You can find inspiration in my old patches[1] if you'd like to give it a
try:
[1] https://lore.kernel.org/all/20181217110111.GB17466@nautica/T/


Note that there is one point that wasn't discussed back then, but
according to the 9p man page for flush[2], the request should be
considered successful if the original request's reply comes before the
flush reply.
This might be important e.g. with caching enabled and mkdir, create or
unlink with caching enabled as the 9p client has no notion of cache
coherency... So even if the caller itself will be busy dealing with a
signal at least the cache should be kept coherent, somehow.
I don't see any way of doing that with the current 9pfs/9pnet layering,
9pnet cannot call back in the vfs.

[2] https://9fans.github.io/plan9port/man/man9/flush.html


> The peer side should be able to detect close of file descriptor on local
> side due to process termination via SIGKILL, and the peer side should be
> able to perform appropriate recovery operation even if local side cannot
> receive response for Flush operation.

The peer side (= server in my vocabulary) has no idea about processes or
file descriptors, it's the 9p client's job to do any such cleanup.

The vfs takes care of calling the proper close functions that'll end up
in clunk for fids properly, there was a report of fid leak recently but
these are rare enough...

The problem isn't open fids though, but really resources associated with
the request itself; it shouldn't be too hard to do (ignoring any cache
coherency issue), but...

> Thus, why not to give up upon SIGKILL?

... "Nobody has done it yet".


Last year I'd probably have answered that I'm open to funding, but
franlky don't have the time anyway; I'll be happy to review and lightly
test anything sent my way in my meager free time though.

(And yes, I agree ignoring sigkill is bad user experience)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
