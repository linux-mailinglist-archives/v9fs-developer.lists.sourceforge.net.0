Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E167B277E5
	for <lists+v9fs-developer@lfdr.de>; Fri, 15 Aug 2025 06:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PlKJ1uGW2Lk3pY7DOag7LdpfSomgs0j0D+eddicWcgQ=; b=N9ZznqHadPWJlpF05Z7auzMnzA
	faevpSL2+LUSrUdzBbINGh1NNH0Y2jgmRm74CQhLcEXfL+BRL8+CZgk0aN+lViDe/sw4sUKt23btu
	SdGo6SmJ3xM+7ScBQWXsXvU2WWizCBhbhEn+hcIAP8PWmo5nWpfQMy2DJ2A7D7re3894=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ummPc-00064t-Tk;
	Fri, 15 Aug 2025 04:51:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ummPZ-00064m-Kl
 for v9fs-developer@lists.sourceforge.net;
 Fri, 15 Aug 2025 04:51:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8uxBniPwyaO+yNFnnHEfGjdgeq+9rf4sD2sPCvixeD8=; b=WNvlKqWsfSviynbh4msukf7bbc
 ZAUtH9l7umaCoQTcsWsMP7COfegTiHTUWgyS1jpPey/otF+q93EepLOGtiOObQw1Jy4hvoIpYBpYI
 ejLmB2Sbzdk5AO+GJZ42+Z3vFkKJzzCF/qeKhzuU66/pZz0VbTo+aYqSK/A6uFiH4G7w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8uxBniPwyaO+yNFnnHEfGjdgeq+9rf4sD2sPCvixeD8=; b=VxeIiYJe0Rh/y8ZohUMbtajvM+
 4TeFgMsM09Yt69GtcQ0AAILSIWKYOaVeDaKJsl2EKPI+f4jzBydpTY6Y5iUc70/kQ5y9MvqUhc65Y
 ITo1PxVajllq2zybiC0siE9x415Zkw4cZfcJU8yTZDPKMg96E5AxKQ34BT85hp+ruMkE=;
Received: from submarine.notk.org ([62.210.214.84])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1ummPY-0004Tu-LL for v9fs-developer@lists.sourceforge.net;
 Fri, 15 Aug 2025 04:51:29 +0000
Received: from gaia.codewreck.org (localhost [127.0.0.1])
 by submarine.notk.org (Postfix) with ESMTPS id 58D9D14C2D3;
 Fri, 15 Aug 2025 06:51:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org;
 s=2; t=1755233476;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=8uxBniPwyaO+yNFnnHEfGjdgeq+9rf4sD2sPCvixeD8=;
 b=HTLgno2y3nd+UN7LonYAuK4aFtjsMowRW84yZrbBavcnUHzgBmY4wQj4k4FoaLWhRZ9Wdi
 CR3kJYCAXWCccz8haAyzQYzVs44GGGqAkxAEDjM35BknSOOxJFdXPVqWQspt2yXEQnNtly
 XKSd3S5HPlMGTrBI5TU6wa5CTS/g1ATMY4FqLmGjhqUR2hUZ8Knx5iElg2SqsShxb2tYeS
 mmZj6I9WZ/il9u7zdM48Wb5yRsJn8gJTwCaqaFJ/XqoQNhYsyd1laLzOKszRgfnX59Q8Fh
 WeHxIcjsEO4AKiO98s09q8i3XHf1BKM0E9RqdDwQy/OagRuuW0DaEaINmtLKxg==
Received: from localhost (gaia.codewreck.org [local])
 by gaia.codewreck.org (OpenSMTPD) with ESMTPA id e3824f1a;
 Fri, 15 Aug 2025 04:51:12 +0000 (UTC)
Date: Fri, 15 Aug 2025 13:50:57 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Nalivayko Sergey <Sergey.Nalivayko@kaspersky.com>
Message-ID: <aJ68sV1kH2CQ8eYr@codewreck.org>
References: <20250715154815.3501030-1-Sergey.Nalivayko@kaspersky.com>
 <aJ6U3DQn876wGS4C@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aJ6U3DQn876wGS4C@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dominique Martinet wrote on Fri, Aug 15, 2025 at 11:01:00AM
 +0900: > > Add an explicit check for REQ_STATUS_ERROR in p9_fd_cancelled
 before > > processing the request. Skip processing if the request i [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1ummPY-0004Tu-LL
Subject: Re: [V9fs-developer] [PATCH] net: 9p: fix double req put in
 p9_fd_cancelled
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Wang Hai <wanghai38@huawei.com>,
 lvc-project@linuxtesting.org, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, stable@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet wrote on Fri, Aug 15, 2025 at 11:01:00AM +0900:
> > Add an explicit check for REQ_STATUS_ERROR in p9_fd_cancelled before
> > processing the request. Skip processing if the request is already in the error
> > state, as it has been removed and its resources cleaned up.
> 
> Looking at the other status, it's quite unlikely but if other thread
> would make it FLSHD we should also skip these -- and I don't think it's
> possible as far as the logic goes but if it's not sent yet we would have
> nothing to flush either, so it's probably better to invert the check,
> and make it `if (req != SENT) return` ?
> 
> client.c already checks `READ_ONCE(oldreq->status) == REQ_STATUS_SENT`
> before calling cancelled but that's without lock, so basically we're
> checking nothing raced since that check, and it's not limited to RCVD
> and ERROR.
> 
> If you can send a v2 with that I'll pick it up.

Actually it's just as fast if I do it myself, if you have time please
check this makes sense:
https://github.com/martinetd/linux/commit/afdaa9f9ea451a935e9b7645fc7ffd93d58cdfed

This is a fix but I don't believe it's urgent (can only happen with a
bogus server, and while in theory we should aim to be robust to an
adversary server I don't believe 9p is anywhere near that point), so
I'll push it along with other fixes next cycle as I missed the 5.17
train

Thanks,
-- 
Dominique Martinet | Asmadeus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
