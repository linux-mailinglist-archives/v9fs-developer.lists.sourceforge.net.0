Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 531A7576E03
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Jul 2022 14:45:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oChAG-0003rG-Is; Sat, 16 Jul 2022 12:44:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oChAF-0003rA-G1
 for v9fs-developer@lists.sourceforge.net; Sat, 16 Jul 2022 12:44:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IA4QPpfoiFnQ2zfDlGVbxad+iB79l2GmGj2fr9NMdbI=; b=aKwrGTjBiA2pGM2evr/S3WszaX
 MU92QAlycLVC57GaMq5Tljhx5m0zpxGfw5djScZTNQudbpozjHMAZCGma0zKR3Zl0NCGkSlY472Vm
 iGFr3Nt80Xrys29XLckwJfS4gNw6eQxUWAYVotT2ICNBrw+Uxi8/EySCtN8V2fadi1Jw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IA4QPpfoiFnQ2zfDlGVbxad+iB79l2GmGj2fr9NMdbI=; b=fWDiEXDLl9qf7vRFZU1H/5uttp
 Ne7t7WuJu9c3Nr1HHIWaP9H8YhTjyhMraXYrCWPokXxbyXyu5VHtMOO46fVameg01TjggAwwTZ3UT
 4GrqcmVgfeXGAyKrcVvWqYgJ6MSLeSxs1n61I136ks/74IQJif1vWYTON1jVfPseIHnA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oChAB-000zuc-RZ
 for v9fs-developer@lists.sourceforge.net; Sat, 16 Jul 2022 12:44:56 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 632C4C01F; Sat, 16 Jul 2022 14:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657975485; bh=IA4QPpfoiFnQ2zfDlGVbxad+iB79l2GmGj2fr9NMdbI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G0uAyt4wTJPwOceVj+tlHrPj+xmBFviQ7X72SyBqhVvgLf0Vq68vGLIIDf6wGXHpv
 /ZoOJrTDJ/7Blr/3hNrEUTHLHuxb6tTD1oYo8LbV1YmKnk3onzxQ66NJe//OyrfuQv
 0AQf7Kri+WDki7x02bSb8nUbNMHAMedqQX8y+qSsL3SeSu/z1XecxwH39UGDC5l1zU
 wjsCW0VEeD3bkxcIO0tbLGva8SwAYSUiyXzVLp+NXCxzP7arfxRS/3ttAOW+noskG+
 DmHYsL8U+iRGezh0eAytTnlufMGiOUo4SaizZE/4yoyZW8VLqeSQL5RhExfZoGvirN
 7VQ7QSgT6Se5w==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 6FD49C009;
 Sat, 16 Jul 2022 14:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657975484; bh=IA4QPpfoiFnQ2zfDlGVbxad+iB79l2GmGj2fr9NMdbI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tZk+QlpZgl3gWazkAqaUwVdiv4ez3fRI+jeHGHtsI3erIAIMwdA1jmZx0ebHfbWVU
 1aaY/JAS2JZxpjfcFKv2fJZ/TAfJC+BQzWw9ZaSyvSV87MkX5KMbR2Ix2hSrRQ0y0N
 ahAxOvyFc8X+Blr3uZfPBQwYVgsZ6M51BORkdeLkWuxpfa2o8X/nzKuiIwSMEjAPv/
 bKfltFQLMLeKaKoiFv58lsooYIFQcb1NPSK7SgJ8bAzXEmtAWkIMiz0wIEJjcevcTZ
 Cpwyj2Naba4imZ5BnXZtnHiWM2OiOXFvOzH7EaYHkiJUCjzup7BBaEYS8iBlJZNGsX
 oo7aT4BxhUpUg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 0e23bbef;
 Sat, 16 Jul 2022 12:44:39 +0000 (UTC)
Date: Sat, 16 Jul 2022 21:44:24 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YtKyqPx/FX1BbDqW@codewreck.org>
References: <cover.1657920926.git.linux_oss@crudebyte.com>
 <6713865.4mp09fW1HV@silver> <YtKm4M8W+rL+buNj@codewreck.org>
 <4065120.gss6piHCF5@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4065120.gss6piHCF5@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Sat, Jul 16,
 2022 at 02:10:05PM +0200: > > OTOH,
 linux got softiwarp merged in as RDMA_SIW which works perfectly
 > > with my rdma applications, after fixing/working arou [...] 
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
X-Headers-End: 1oChAB-000zuc-RZ
Subject: Re: [V9fs-developer] [PATCH v6 00/11] remove msize limit in virtio
 transport
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Sat, Jul 16, 2022 at 02:10:05PM +0200:
> > OTOH, linux got softiwarp merged in as RDMA_SIW which works perfectly
> > with my rdma applications, after fixing/working around a couple of bugs
> > on the server I'm getting hangs that I can't reproduce with debug on
> > current master so this isn't exactly great, not sure where it goes
> > wrong :|
> > At least with debug still enabled I'm not getting any new hang with your
> > patches, so let's call it ok...?
> 
> Well, I would need more info to judge or resolve that, like which patch 
> exactly broke RDMA behaviour for you?

I wouldn't have troubles if I knew that, I don't have access to the
hardware I last used 9p/rdma on so it might very well be a softiwarp
compatibility problem, server version, or anything else.

At the very least I'm not getting new errors and the server does receive
everyhing we sent, so as far as these patches are concerned I don't
think we're making anything worse.


I'll get back to you once I hear back from former employer (if they can
have someone run some tests, confirm it works and/or bisect that), I
really spent too much time trying to get the old adapter I got working
already...

All I can say is that there's no error anywhere, I've finally reproduced
it once with debug and I can confirm the server sent the reply and
didn't get any error in ibv_post_send() so the message should have been
sent, but the client just never processed it.
Next step would be to add/enable some logs on the client see if it
actually received something or not and go from there, but I'd like to
see something that works first...

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
