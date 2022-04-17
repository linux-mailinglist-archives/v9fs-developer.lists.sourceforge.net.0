Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 418255047CE
	for <lists+v9fs-developer@lfdr.de>; Sun, 17 Apr 2022 14:57:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ng4Sh-0006tQ-O7; Sun, 17 Apr 2022 12:57:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1ng4Sg-0006tK-Oc
 for v9fs-developer@lists.sourceforge.net; Sun, 17 Apr 2022 12:57:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tHEP8gfQwDFMMxr4TFcTxg5xIKCVyVv7/0p74EUs/nY=; b=Ijzf4ngYDyPXUP1H/STB2eTBu7
 jU4j2JfM0M5+yqEK5Vlcxh5r2pB+6D49ClzmHs0emX6joY5tQdAmIZSxYDqfJj6LHovvvGtwsmYpV
 55FS7lyaK/NbGIu7n0xl6zQEhmVueHWbD8Bt++mgzlXXxZvHc/IOolWirbwom2J6HuQs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tHEP8gfQwDFMMxr4TFcTxg5xIKCVyVv7/0p74EUs/nY=; b=jpQa5N+FL1y3Yvr4iatnINCXv9
 okpLgkfPPpgcC03hw+fNcodlYnYdbCPaCqMxoyYE0vEWojiBVy4GVlPT+KBzCFEIrxhrOsWPzVLV9
 rHp36D+lPnLjoVYjLlU6DLhDyYVJMA9kLbtKpgS78tVYjh/y0kbydeEM7M73Nnr6y7Ec=;
Received: from [91.121.71.147] (helo=nautica.notk.org)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ng4SY-0005nw-JS
 for v9fs-developer@lists.sourceforge.net; Sun, 17 Apr 2022 12:57:05 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 0C2CEC01D; Sun, 17 Apr 2022 14:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1650200205; bh=tHEP8gfQwDFMMxr4TFcTxg5xIKCVyVv7/0p74EUs/nY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bSPuxDtWuYG0ub+oHnLvmU/l6NpKJBOKU22mDeIBmZ4NrG05HPtQuukBnC5LkSQ+W
 BYIq4RcXsLt2Vc39bUqbTzutaZf4BbfyfxnlkagrEcw25SnwNUqwTfoqWTeHAPStOB
 Fe1NFKii2kE4YXQPGy7usRmQNfbyLg6GH2DLbhtfmkwKkq//vg+r/QzYdojQOJXZaW
 VDxkB1G9wN4uweuf7fG3lC4fZiNfZeJjDOyOKXr7hoP6PI2zKP9HKcTrkDRHrqdbI6
 6TeEGXc7NQF4mofBp8DnEcphThcgnLkOyKxDc0A+XUkM3QFBtiU9177jsfXJpqk4oy
 +p1kJXMCr7qVA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 51C11C009;
 Sun, 17 Apr 2022 14:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1650200204; bh=tHEP8gfQwDFMMxr4TFcTxg5xIKCVyVv7/0p74EUs/nY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CtflF6i30N58Ns/YghbsJqu0IVwstb5hoRHlCqDHS0Z8knR2Ge9BAoz9Ld0D06ssb
 KgcHe0knkl1FMjGYJNbxBUHqeAfZTmTqJdGHcOz97838ae2Gxz2PL1DJGcqSCnD0ZB
 UDJ/Dqdmgbbjr6MPzk8JaWrbsimFhbcd7qVtn6rqiKvSZngeJjRxeaYP5Th04zj8bJ
 Z4SDHf2y+R/K1AYaXSPGkDTJk0gic0J5WJAJXMayJNfSVYamKeKrQ5FNc0zHXMQiXf
 ohaZGwn8evqUVG0/WdMfnOqobYfhXBi4qRlVCXc4qhVYOo1riAscMpy9M6NVs4EQiN
 G3GtvhMsPugUg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 4a89f87c;
 Sun, 17 Apr 2022 12:56:37 +0000 (UTC)
Date: Sun, 17 Apr 2022 21:56:22 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YlwOdqVCBZKFTIfC@codewreck.org>
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <3119964.Qa6D4ExsIi@silver> <YlX/XRWwQ7eQntLr@codewreck.org>
 <2551609.RCmPuZc3Qn@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2551609.RCmPuZc3Qn@silver>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Thu, Apr 14,
 2022 at 02:44:53PM
 +0200: > > Yes, I'm not sure why I can't reproduce... All my computers are
 pretty > > slow but the conditions should be met. > > I'll try [...] 
 Content analysis details:   (1.1 points, 6.0 required)
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
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1ng4SY-0005nw-JS
Subject: Re: [V9fs-developer] 9p fs-cache tests/benchmark (was: 9p fscache
 Duplicate cookie detected)
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
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, David Howells <dhowells@redhat.com>,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Thu, Apr 14, 2022 at 02:44:53PM +0200:
> > Yes, I'm not sure why I can't reproduce... All my computers are pretty
> > slow but the conditions should be met.
> > I'll try again with a command line closer to what you just gave here.
> 
> I'm not surprised that you could not reproduce the EBADF errors yet. To make 
> this more clear, as for the git client errors: I have like 200+ git 
> repositories checked out on that test VM, and only about 5 of them trigger 
> EBADF errors on 'git pull'. But those few repositories reproduce the EBADF 
> errors reliably here.
> 
> In other words: these EBADF errors only seem to trigger under certain 
> circumstances, so it requires quite a bunch of test material to get a 
> reproducer.
> 
> Like I said though, with the Bullseye installation I immediately get EBADF 
> errors already when booting, whereas with a Buster VM it boots without errors.

Okay, I had missed that!

I've managed to reproduce with git:
https://gaia.codewreck.org/local/tmp/c.tar.zst

This archive (~300KB) when decompressed is a ~150MB repo where git reset
produces EBADF reliably for me.

From the looks of it, write fails in v9fs_write_begin, which itself
fails because it tries to read first on a file that was open with
O_WRONLY|O_CREAT|O_APPEND.
Since this is an append the read is necessary to populate the local page
cache when writing, and we're careful that the writeback fid is open in
write, but not about read...

Will have to think how we might want to handle this; perhaps just giving
the writeback fid read rights all the time as well...
Ran out of time for tonight, but hopefully we can sort it out soonish now!

> If somebody has some more ideas what I can try/test, let me know. However ATM 
> I won't be able to review the netfs and vfs code to actually find the cause of 
> these issues.

You've been of great help already, thanks!

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
