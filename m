Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB76642B4E
	for <lists+v9fs-developer@lfdr.de>; Mon,  5 Dec 2022 16:19:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p2DFX-0002Nk-15;
	Mon, 05 Dec 2022 15:19:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1p2DFV-0002Nd-NA
 for v9fs-developer@lists.sourceforge.net;
 Mon, 05 Dec 2022 15:19:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MTyipn3/uiEaeHK3wKKsTALavbnGCjUvVFxs3KzPAMY=; b=MjMh1VGJUmjyY2DueGSAxpjqBy
 gYM9SYyxr+w4tcJviJr3PV4Zox1KxlXTorTHWQISoHUopPogpzczoRkbuU1NJFlKMz/NiNV4QFRAr
 JEpGVw2UdTgZ0sPp5KNIJjIM+cvmUxp1CjeeRNZFT1NhSvSqHvvtksJ5V7KYNVhac1tw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MTyipn3/uiEaeHK3wKKsTALavbnGCjUvVFxs3KzPAMY=; b=gcICy7XaE1r0w1Ec7KpV+VP6PY
 7VuGM70U5pwJt8aewjbr1UH2uRFL2O0GM2CtTGqExbQRGUXovCDT2dr1I/H/e3M+xADThZ0uBX8R4
 q0Maknhpxx8dyfpLsYQGFj80fCQpn2o+qgb7gqNJ4V7zZVErxJp8rh62O1nOUYxqxe8w=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p2DFN-0007A9-SL for v9fs-developer@lists.sourceforge.net;
 Mon, 05 Dec 2022 15:19:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=MTyipn3/uiEaeHK3wKKsTALavbnGCjUvVFxs3KzPAMY=; b=TCe9/re9gJhq+wUcGBja5Ga82O
 M9vzBgSKe8uRc3bwCrVBnOXzTwsxltkc8HlrOvpBAVjdjAgfOOdgVdOjeEOUjMsX9Z1ikn0URqApN
 G9JMIJnhI4e9haiK3bjeATKWgCuhwc+AdHii1hFmRLkHq2BGxmNTBaZj3bihyjgg/PKUd9H0f+bWg
 0oel4oAbJCsd9WIjZyce5echdrsRVbwiw5NxPzDsPwGjJFmfT0rYSeqYwCFVU0JsTBFfMD14LXlbE
 oa19yvg8nDJBXh3kIBtbAyEimP1eG8+Jv9bFaP0pljwoiMVWYycqONtfCXCyt885qAgSM2NmPROJb
 ys4u2uP9bGuyxjcm5vHSasVtVbbx/lEAin2cs5vxtc3FZR0yxGvPeHLNz/ofZgnOd9bA2P6dN3/OI
 ZIZZ7XazRXQPySk6iBTE3gXYbcMU0RQ8yjTT942o1UV8Hdq95O1wBRnAgQDw8KT9fH7czaUxPt72B
 A4uS7RPDvri42FpnNJWjwhde8dVUiViP+W+rk35BxTM5CVM8IbK6rDmYZjKYJoyN4lOYZb9fG+Zh/
 kXQN01j1kFrfODFSaYTrl1VY4jeavuh+T62eglUXWdPsLtot+TAf3RQ7Mw2zt2x6rOAA//qR4aPnX
 pIjFoFIpGFwuDvfctuwijO12E59xEGTu3C+7ZFSeo=;
To: Dominique Martinet <asmadeus@codewreck.org>,
 Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Mon, 05 Dec 2022 16:19:01 +0100
Message-ID: <3368929.hG1Ktuj5m1@silver>
In-Reply-To: <20221205124756.426350-1-asmadeus@codewreck.org>
References: <20221205124756.426350-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Monday, December 5, 2022 1:47:56 PM CET Dominique Martinet
 wrote: > KCSAN reported a race between writing req->status in p9_client_cb
 and > accessing it in p9_client_rpc's wait_event. > > Accesses [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1p2DFN-0007A9-SL
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: v9fs-developer@lists.sourceforge.net, Marco Elver <elver@google.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Monday, December 5, 2022 1:47:56 PM CET Dominique Martinet wrote:
> KCSAN reported a race between writing req->status in p9_client_cb and
> accessing it in p9_client_rpc's wait_event.
> 
> Accesses to req itself is protected by the data barrier (writing req
> fields, write barrier, writing status // reading status, read barrier,
> reading other req fields), but status accesses themselves apparently
> also must be annotated properly with WRITE_ONCE/READ_ONCE when we
> access it without locks.
> 
> Follows:
>  - error paths writing status in various threads all can notify
> p9_client_rpc, so these all also need WRITE_ONCE
>  - there's a similar read loop in trans_virtio for zc case that also
> needs READ_ONCE
>  - other reads in trans_fd should be protected by the trans_fd lock and
> lists state machine, as corresponding writers all are within trans_fd
> and should be under the same lock. If KCSAN complains on them we likely
> will have something else to fix as well, so it's better to leave them
> unmarked and look again if required.
> 
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> Suggested-by: Marco Elver <elver@google.com>
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>

I must have missed the prior discussion, but looking at the suggested
solution: if there is no lock, then adding READ_ONCE() and WRITE_ONCE() would
not fix cross-CPU issues, as those would not have a memory barrier in that
case.

Shouldn't that therefore rather be at least smp_load_acquire() and
smp_store_release() at such places instead?

Best regards,
Christian Schoenebeck





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
