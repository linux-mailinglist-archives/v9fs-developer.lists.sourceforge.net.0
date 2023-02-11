Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2AE692F4B
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Feb 2023 09:06:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pQktg-0005D0-3l;
	Sat, 11 Feb 2023 08:06:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pQkte-0005Ct-DY
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Feb 2023 08:06:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/4p9G+PVx8BGkfwEmhVgFFfnUl5ZHemCeP8SNirq5Lw=; b=CzUuXAwO0Jb6eyp+dW82InjAWC
 MQ7mtSr2K44fd3XV7A4/q93Sik2gHL6L00eEgUJsPbwTeje99PZMdHVY1ZV69tQhO7hV/R5vW3AFA
 6xuSkidJQczxK5ni7IKwtyVeVfX+eJqyZhWNUPmehAu40CkB5kjcaiw5R8t6q0ZPLQEg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/4p9G+PVx8BGkfwEmhVgFFfnUl5ZHemCeP8SNirq5Lw=; b=ldrQA/i39GikZS3ML4ugKdqJZg
 AhasFc+h740EhFsMx4iWgi9/kheyGCXk0XXWQG8H1E9EN+mPXidUUdXMqvBwWEgrPJLBQRnT54JCp
 JjZ9pC3Geq9Djw9XaqzQk8bfwhPEhmXFaep28QVQj8r14MYV137GkQ4O9av1UyHB21c0=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pQktZ-0001bO-0l for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Feb 2023 08:06:09 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 1AC0AC009; Sat, 11 Feb 2023 09:06:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676102782; bh=/4p9G+PVx8BGkfwEmhVgFFfnUl5ZHemCeP8SNirq5Lw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MfrpC9pJJ/BrdRivl8Yphmxj5QyjY2PL9qu2jNwEliDylRLQ2bqAJrnBukY1Ot2AK
 pCdwnO+M4FHX95DJa2bQ1/Wc6I5tUpo2S8l8dI+iexYoIOe3kSTMsE46RBiu4dXanI
 buaUiTO1LC7zoZjj9on7/IInsKVjAdc/tB3xferFwHbI3KN1kwcTQHtdTY1d2X8sXZ
 pUQlgLPtsC2vrwYPYPGQTa329gURDF63NfTMi75CUkCPplwB4NzzXGczQqdlL9ODaw
 +9wdrrUzlH7Vs5o5Or2VoSsSqvjR6XFdImnCoM6IXmK5vTuJmgbnDAgnoxgVptW9Ji
 vN+BgxBcyyjiQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 52444C009;
 Sat, 11 Feb 2023 09:06:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676102781; bh=/4p9G+PVx8BGkfwEmhVgFFfnUl5ZHemCeP8SNirq5Lw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XcIOAxaKklddAXtfwh3QZJOZWBvjhO64tAB61EL25BX2JbwIVbj4iqTxjyLpLeQJX
 YC44bKPVLfSEny3Vat9VvD8SF6sbSQBG5GvX2FXuEdSogTQ02RV0vsa3FtHm3+i2zL
 jGL0w3SnJ8/ayvaZJSCJvTqlV7lGKHodxIFplC6PLNdmdLqQSMuS7DwmCYpnozxvX3
 pyq0aQgk+dhn9F/8nAe/7RWleQ6uCzggET47CE2QepGaeJ6gv5hW6moAGcEcqJzxdS
 USJA9oO+6PARLCGc/xIiUWktDQbDHcdGXtaQ2+y1lQ20cbJOrjlfL2FFaH+4raZLeZ
 jXFh13qSNBd6Q==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 0c5daf8e;
 Sat, 11 Feb 2023 08:05:54 +0000 (UTC)
Date: Sat, 11 Feb 2023 17:05:39 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Y+dMU4dRatN40BLF@codewreck.org>
References: <20230211075023.137253-1-asmadeus@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230211075023.137253-1-asmadeus@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dominique Martinet wrote on Sat, Feb 11, 2023 at 04:50:18PM
 +0900: > A few problems I ran into today: > [...] Ah, one more thing I forgot:
 I'm still convinced that p9_virtio_zc_request is wrong in its current (before
 these patches), and adding this on top doesn't make it any better. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pQktZ-0001bO-0l
Subject: Re: [V9fs-developer] [PATCH 0/5] Take 3 at async RPCs and no longer
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

Dominique Martinet wrote on Sat, Feb 11, 2023 at 04:50:18PM +0900:
> A few problems I ran into today:
> [...]

Ah, one more thing I forgot: I'm still convinced that
p9_virtio_zc_request is wrong in its current (before these patches), and
adding this on top doesn't make it any better.

We'll likely want to fix that too before merging this, giving another
reason to dealy this for 6.4.

p9_virtio_zc_request shouldn't unpin the pages if wait_event_killable is
interrupted, and the flush async cb should call back in the transport to
unpin at that point or something?

I'm probably repeating myself here but I really don't have time in the
day for everything, so that too will have to wait...
(and there's probably more I forgot, but that'll do for now)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
