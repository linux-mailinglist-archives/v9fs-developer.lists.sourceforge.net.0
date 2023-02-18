Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D0469BDFA
	for <lists+v9fs-developer@lfdr.de>; Sun, 19 Feb 2023 00:41:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTWpY-0003kK-Nf;
	Sat, 18 Feb 2023 23:41:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTWpX-0003kD-GE
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 23:41:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HAUEnvBlrX3pgMjJsHk6fkvC7qMVL5+b0htLmoE8se0=; b=ZcgjxZONvnwSomePTlQPvKOebj
 e/ogt7xhqDYcCqXbNMbXf1l0KLkX/RdkMXDuz/6CO/J2Dr2UBhWVVb6RJLob+cA4ed/fjvadLKkRL
 AF5IkyWxl6cIrsZNaj21Ckqb7bDdHidlEAh0I5u7tUjHnNUT1bS8wXUnykmCCblG5UWs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HAUEnvBlrX3pgMjJsHk6fkvC7qMVL5+b0htLmoE8se0=; b=m8Jh76uoV2x6kx5AgMHYOPG0ZP
 IOI3Rn8AyztbfnCmfl3WCoVZHyudm5xFQnTghhjgsf5FIvv/YY/gw5wyJ1A+rwbYXBshjbIiT/p+4
 /2nV7jmBFbVfd5bsA4QvX3ADw26S6KfJwq6GKqPoTLtGo6Hbky5Ywot11I32euQUAMgE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTWpT-0006IN-Mx for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 23:41:22 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 0036AC01C; Sun, 19 Feb 2023 00:41:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676763698; bh=HAUEnvBlrX3pgMjJsHk6fkvC7qMVL5+b0htLmoE8se0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eQDdPq4QR9bi2ivS7nZhHaesdDfafQwgzmQ1aPKsFISaOb7micdmz3nYNzbWzH9Yl
 DbXrEAjefJnA1W2TtpNwlCZ+VYt1Tg8o2VeHXuW9CJVA1I5wObU/ylp3f32CIP87w9
 n/8AyA8zZsuBh+J1ZUCmYwRxKtREvUrpFWEuvNzk/mq7szdw5TrdYd3cN5YofvZTdX
 IFbvycvf1F9hjtoY0zv+6EktInLiffn20Vs6fm1s8FzivZ+gmX0M8kTaeI9VzMvIWC
 FaeQnnOiuME5peJKKhvRUNmi1+dNCV8/ItAQxqDoj891VWV5Mm5+X2w+DwPoem0Qfo
 OrG8DqNvTEVnw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id EAAB3C009;
 Sun, 19 Feb 2023 00:41:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676763697; bh=HAUEnvBlrX3pgMjJsHk6fkvC7qMVL5+b0htLmoE8se0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WsyLK2w/1io4fNdrRIb2eNuiOejlLmWvTCUDsmODdYcRObVGmmABkQzDih+L6cwVn
 Kg0bt94PdK+O/a70+ETjouq30gCWEHI36WS5MGLntu0FERiEgo9SXV2SovEka4KArn
 Qv6kavd6IQYp+ph695I8GJUQYMb0GeBN3zwGtLgs4tnNfmv7f1t53r6mgVOlv7+xw+
 Q4hl3UZbQdoDkGF71MBoqlul/4WZIGgOQwCAbzhCpoCZTetkGqqEcryncjZ0lzgMtm
 Ia7rIF3lf0LmPa0qhOynhlAxEf5Cw7s//U3vatrV+MjxkrJtcUpzKhCM2D26OY3zib
 4G6rzn2gWyZLA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 03fa2c52;
 Sat, 18 Feb 2023 23:41:08 +0000 (UTC)
Date: Sun, 19 Feb 2023 08:40:53 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@gmail.com>
Message-ID: <Y/FiBbMQcEblQ/XR@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-11-ericvh@kernel.org>
 <Y/Ch8o/6HVS8Iyeh@codewreck.org> <1983433.kCcYWV5373@silver>
 <CAFkjPT=xhEEedeYcyn1FFcngqOJf_+8ynz4zeLbsXPOGoY6aqw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkjPT=xhEEedeYcyn1FFcngqOJf_+8ynz4zeLbsXPOGoY6aqw@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 04:24:08PM
 -0600: > Yeah, I guess it depends on what options we want to separate, >
 writeback == mmap so we can eliminate one option and just use mmap [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pTWpT-0006IN-Mx
Subject: Re: [V9fs-developer] [PATCH v4 10/11] fs/9p: writeback mode fixes
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
Cc: lucho@ionkov.net, Christian Schoenebeck <linux_oss@crudebyte.com>,
 linux-kernel@vger.kernel.org, rminnich@gmail.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 04:24:08PM -0600:
> Yeah, I guess it depends on what options we want to separate,
> writeback == mmap so we can eliminate one option and just use mmap I
> suppose.

For history (since I implemented it for CEA back then), mmap was added
because we had applications relying on mmap (so wanted that to somehow
work) without turning to cache=loose as that doesn't behave well with
nfs-ganesha (in particular, fids not closed until memory pressure comes
reclaiming them, which can be very late or never come, doesn't work well
with ganesha that used to (and probably still does, didn't check) cap
the maximum number of fid active per client.

I think writeback would be acceptable for this usecase, especially since
with your patches we now flush on close.

For clarity though I'd use writeback in the documentation, and keep mmap
as a legacy mapping just for mount opts parsing; the behaviour is
slightly different than it used to be (normal read/writes were sync) so
it's good to be clear about that.

> I feel like readahead has value as it maintains the most
> consistency on the host file system since it shouldn't be doing any
> writeback buffering.  readahead and mmap are different than loose in
> that they don't do any do any dir cache.  To your earlier comments (in
> a different thread) it very well may be that eventually we separate
> these into file_cache=[ readahead | mmap | loose ] and dir_cache = [
> tight | temporal | loose ] and fscache is its own beast.

Separating the two makes sense implementation-wise as well, I like this
idea.
What would the difference be between file_cache=writeback and loose?
Do you plan some form of revalidation with writeback, e.g. using qid
version that loose wouldn't do? (sorry if it's already done, I don't
recall seeing that)

fscache is currently a cache option but it's pretty much unrelated, we
can have it as a separate option and alias cache=fscache to
`file_cache=writeback(loose),dir_cache=loose,fscache=on`
but on its own it ought to work with any level of file_cache and no
dir_cache...
The test matrix will be fun, though :|

> It struck me as well with xattr enabled we may want to have separate
> caches for xattr caching since it generates a load of traffic with
> security on.

xattr caching currently isn't done at all afaik, and it'd definitely
make sense with any kind of dir_cache... That'd likely halve the
requests for some find-like workloads.
Probably another new option as well..

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
