Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA0F643819
	for <lists+v9fs-developer@lfdr.de>; Mon,  5 Dec 2022 23:28:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p2Jwm-0003Xj-Fi;
	Mon, 05 Dec 2022 22:28:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p2Jwk-0003Xa-UI
 for v9fs-developer@lists.sourceforge.net;
 Mon, 05 Dec 2022 22:28:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=co4mLeZEIyazkvh2r1VcvDziHJ44lzOCp9RDU9TLwok=; b=d/3FEvCFA6dpwXatcCHAYpefQa
 t+KehLu3nVJVA9GxKVvF4Fa7uMCNq5XdJlipCNRC8Fkhn7INsCprPUCGoBAJo75kxSrGqRss+0eX9
 qkDNQFttoAaKMw17lVXDDXLtXvAuPghHyOFHbqPPAKyHNwOongWydPJO4R1wWFEie+hc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=co4mLeZEIyazkvh2r1VcvDziHJ44lzOCp9RDU9TLwok=; b=j496WaFMnM09QQkfx5QkZ8yhBM
 Y0DJ4blNBEeNDUyn6qfKbkwW8YubNt+DCEH1P3yp29PKItue9i3hqRerDmei6Ykb+LylLvvRRrT6h
 wMjNnQvbkOJsxp5A8paIpPX5INkLFj8DgUyBinWKnMnEqjA+yu9JnW4q11HqCi49TZ6c=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p2Jwh-0079Z0-0p for v9fs-developer@lists.sourceforge.net;
 Mon, 05 Dec 2022 22:28:22 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B754DC01D; Mon,  5 Dec 2022 23:28:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1670279298; bh=co4mLeZEIyazkvh2r1VcvDziHJ44lzOCp9RDU9TLwok=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QHNALYTllijiOhHJxNwg/dno58sA0voCZf550EHllbtK1LJ4UYroQiEu1BPsfpYB5
 XhARYMw5TTMjuoH56RCVu9d123lMAntmVbvp08AGW+BrWANXvhzEuF64w5lY/L2k8R
 u5G4v6S8fSIC0Iv4yoLQBAwU981b5TkbRwVvgwgEyUfKXCqXlNQcUyonm/szqKg7YE
 ScrHWQ6DDQO+En4xBM75bMuelkgWSpUQIyjpSzTX6WgpZHPvpGsmcUhq9F1t0rmlq+
 B+rbeX3AW4kVaRu0mAgpv39PX4nu7WSrLO2hxThZdjQASv4aAVOeafqaHqUzgbxZkk
 bfOmWkNEiqEAQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id A171EC009;
 Mon,  5 Dec 2022 23:28:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1670279298; bh=co4mLeZEIyazkvh2r1VcvDziHJ44lzOCp9RDU9TLwok=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QHNALYTllijiOhHJxNwg/dno58sA0voCZf550EHllbtK1LJ4UYroQiEu1BPsfpYB5
 XhARYMw5TTMjuoH56RCVu9d123lMAntmVbvp08AGW+BrWANXvhzEuF64w5lY/L2k8R
 u5G4v6S8fSIC0Iv4yoLQBAwU981b5TkbRwVvgwgEyUfKXCqXlNQcUyonm/szqKg7YE
 ScrHWQ6DDQO+En4xBM75bMuelkgWSpUQIyjpSzTX6WgpZHPvpGsmcUhq9F1t0rmlq+
 B+rbeX3AW4kVaRu0mAgpv39PX4nu7WSrLO2hxThZdjQASv4aAVOeafqaHqUzgbxZkk
 bfOmWkNEiqEAQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 8da8fe49;
 Mon, 5 Dec 2022 22:28:03 +0000 (UTC)
Date: Tue, 6 Dec 2022 07:27:48 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Y45wZEvO8gOanV85@codewreck.org>
References: <20221205124756.426350-1-asmadeus@codewreck.org>
 <3368929.hG1Ktuj5m1@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3368929.hG1Ktuj5m1@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Mon, Dec 05,
 2022 at 04:19:01PM
 +0100: > I must have missed the prior discussion, but looking at the suggested
 Good point,
 I'll add a link to the report as well... It's this thread:
 https://lkml.kernel.org/r/CA+G9fYsK5WUxs6p9NaE4e3p7ew_+s0SdW0+FnBgiLWdYYOvoMg@mail.gmail.com
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1p2Jwh-0079Z0-0p
Subject: Re: [V9fs-developer] [PATCH] 9p/client: fix data race on req->status
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
Cc: v9fs-developer@lists.sourceforge.net,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Marco Elver <elver@google.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Mon, Dec 05, 2022 at 04:19:01PM +0100:
> I must have missed the prior discussion, but looking at the suggested

Good point, I'll add a link to the report as well...
It's this thread:
https://lkml.kernel.org/r/CA+G9fYsK5WUxs6p9NaE4e3p7ew_+s0SdW0+FnBgiLWdYYOvoMg@mail.gmail.com

> solution: if there is no lock, then adding READ_ONCE() and WRITE_ONCE() would
> not fix cross-CPU issues, as those would not have a memory barrier in that
> case.
> 
> Shouldn't that therefore rather be at least smp_load_acquire() and
> smp_store_release() at such places instead?

The barrier is here -- I think we're just protecting against compiler
reordering or if on some arch the store isn't actually atomic.

This code path actually was broken before I added the barrier a while
ago (2b6e72ed747f68a03), as I was observing some rare but very real
errors on a big server so I'm fairly confident that for at least x86_64
the generated code isn't too bad, but if KCSAN helps catching stuff I
won't complain.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
