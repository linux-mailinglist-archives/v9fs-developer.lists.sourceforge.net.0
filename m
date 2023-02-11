Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B46692F37
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Feb 2023 08:51:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pQkex-0005eM-GK;
	Sat, 11 Feb 2023 07:50:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pQkew-0005eG-FD
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Feb 2023 07:50:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mZ7V6TvH4FiikbfdBWS/VYGEygwMettD8agI1gFOm1M=; b=FG+2EvQVEL0fj3UySOhV6saiVv
 8px2CXq9JbMQ4J6Q5Z/QHFheoUmbj1fBlwsRJEerruyb4BQuRrjC3iS1M43Z8B1GQ+Wy6jy6COmzo
 crpdzPXGHdopICHrLe/nRnX+YtA6QZ9oWdyExKaG8960H63WQraWR1ge+B6VP1dim7eo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mZ7V6TvH4FiikbfdBWS/VYGEygwMettD8agI1gFOm1M=; b=X
 0hPzOWbLi++7lMCuKSj2Q8kPSM5chu90YaflrAKIE6v4fgIY6M8TJSxNnaQPxGX8Z7V8dnZ4sW0xK
 P3oG/X6IXu/uUj9x+gi8xIPHCkc0k3EOFhhNRxtNzx1L0C5OeRnxPmpcMQQegB6vp4FfQAG9xk9Cv
 hh6SDLWnhfTa2UbE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pQker-0001BZ-CO for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Feb 2023 07:50:58 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 0EC42C01E; Sat, 11 Feb 2023 08:51:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676101870; bh=mZ7V6TvH4FiikbfdBWS/VYGEygwMettD8agI1gFOm1M=;
 h=From:To:Cc:Subject:Date:From;
 b=Sim4YISfEupjBbCSUW1dEtp1xy9940T9KIHPYJaHTzfTBMgTRimF9S0F9c6KjOGHU
 CVj/VBiQGPfGgO7P12lhm0etBp+UKNS7EULawsi7oRKOeQ4e6czX1EZQJF48QLxcxo
 h0vbdWVrBEq4W82UfDnK49Bg9GqKBF4ceHXsF+GZP5+8OYJ3aP1YLBGL7IJr4CLWAa
 y6ChuTVKp7Dc9Cn+tc7BqaE7NIzy2tNneRGw8Rwk64CBec9gbxGHOwPZAgf0Q/EnlW
 GKfANzIEWwyDY4nFEFzVpzeMeWEqB5Mm3D0cxXsy30xX8AhN/5k1DdZ2tbdYBJ4UK8
 bFBiFFV3rPy3Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id F1B04C009;
 Sat, 11 Feb 2023 08:51:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676101869; bh=mZ7V6TvH4FiikbfdBWS/VYGEygwMettD8agI1gFOm1M=;
 h=From:To:Cc:Subject:Date:From;
 b=UaVAGdvP1UrXfRlpEefbJxV82II9TLvIIo+tumn/ZPRwDTUbRn/lx4jItfYP6rWig
 lbs+hmErZz+dBzQYpBmDPwuZATvqkgYApuUB98U9e/jfg1QAStbnyJH7lfnvbl7FB5
 ZYOzsDbp5YBZbcsNW2u2PFhzmza7wSq2RTVxo9UJ+GLzLVVN3a4fxpCk4Dvq/JF6Dw
 ZKAuP/D/tT7IX2l5dtgzxUKMVdX9GtK1O5TjX8/iOFU3QZLavVSug48Ip3kOO4DH06
 OQsMkYsprDppSotSZAzDpAZl5vIlvIks8g146FIP6BddXMaRYAF0JaeKlk03KFFizZ
 VSQjqJGL+omxw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 7a50f303;
 Sat, 11 Feb 2023 07:50:41 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
Date: Sat, 11 Feb 2023 16:50:18 +0900
Message-Id: <20230211075023.137253-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I've been working on async RPCs for a while and never had
 time to debug the last issues this had, but by limiting the async clunks to
 failures the impact is drastically smaller and I've not been able [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
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
X-Headers-End: 1pQker-0001BZ-CO
Subject: [V9fs-developer] [PATCH 0/5] Take 3 at async RPCs and no longer
 looping forever on signals
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Jens Axboe <axboe@kernel.dk>,
 Pengfei Xu <pengfei.xu@intel.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I've been working on async RPCs for a while and never had time to debug
the last issues this had, but by limiting the async clunks to failures
the impact is drastically smaller and I've not been able to reproduce
any more bug so far.

This will require some more testing and I'm tempted to say this is not
worth rushing this into the merge window next week-ish; the new problem
Jens reported with task_work isn't really new and I'd rather get this
right than rush new bugs in given the sour experience I've had with this
patch series... Hopefully it'll get in this time.
With that in mind I plan to take the patches in to my -next branch after
the merge window, so this has time to get reviewed first.

I'd like to measure impact on performance as well, but really spent way
more time on this than I already have, so that'll have to wait a bit.

The only good thing here is that this shouldn't conflict with Eric's
rework...


A few problems I ran into today:
 - not doing async clunks for retries led to massive fid leaks as soon
as I started doing async flush; I've described that in the clunk patch
but basically all the servers we tested with always replied with the
clunk before the flush, so the first clunk was never an error, so there
wasn't a need to retry at all... Because if it had it'd fall with
ERESTARTSYS immediately again, and it didn't.
This isn't perfect, but hopefully should be good enough to avoid too
many problems.

 - for flush itself, the waiting for all in-flight flushes before
sending new rpc isn't great, but I don't have any better idea.
I think in the general case we could get away with not waiting at all
most of the time (check if there are any pending flush sent by the
current tid?), but the current approach by making the thread not
killable at all (!) is much more conservative, so I feel like we
should try this much even if it costs a bit.


Anyway, here goes nothing. Comments please!


Dominique Martinet (5):
  9p/net: move code in preparation of async rpc
  9p/net: share pooled receive buffers size exception in p9_tag_alloc
  9p/net: implement asynchronous rpc skeleton
  9p/net: add async clunk for retries
  9p/net: make flush asynchronous

 include/net/9p/client.h |  15 +-
 net/9p/client.c         | 508 +++++++++++++++++++++++++---------------
 2 files changed, 339 insertions(+), 184 deletions(-)

-- 
2.39.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
