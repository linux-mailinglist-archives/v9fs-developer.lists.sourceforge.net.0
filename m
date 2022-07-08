Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD3256AFB9
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 Jul 2022 03:16:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o9cbU-0003XI-45; Fri, 08 Jul 2022 01:16:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o9cbR-0003XC-Ae
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jul 2022 01:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UJjmT92o0tq2NPms9eaGL1i8GJsh7AZ6Ngz2TnmkHGQ=; b=UExlW6SkUp5HQCYmj5ONiMLNN9
 GoMmyYyGE+ocU2BeAFBOo5Cgzo0C+gs6WjCPldYecw9u5B2TOJf+cgmgfsOTluH/dYsUlMdlc3Ik1
 M+4v2PkqBGfyPEirt53vjy4go2Dk/w88JL+fQnFTSdYmoNtFwkvK9RiE219p5EmN4890=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UJjmT92o0tq2NPms9eaGL1i8GJsh7AZ6Ngz2TnmkHGQ=; b=fDjZYjSWmHpFOb5q43diynSsRS
 DZ+6v4pQ7WDWxTjdzDDJspo37K/l6us4WkBqhJuY8ERZV3IsxuQ0XSsnciFoATBVYE6tjueMBX44c
 fk20BPEXeB2kmyl5nhjdb5xV+efMVheCdbnLJLi1kd9RxXprhopfUyEMCcU3LhLAv2nk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o9cbN-00ALOV-SE
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jul 2022 01:16:17 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D5714C01F; Fri,  8 Jul 2022 03:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657242964; bh=UJjmT92o0tq2NPms9eaGL1i8GJsh7AZ6Ngz2TnmkHGQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZXcWYi8D3wHR7VxnPPOWByGClt2Wl4ayPoQA627leJWQR5dQEcSueSEV0YLPjNkd2
 Wh0adMyXKF/l9pJHBi+1o6HXaxKDN+ogZEXJKKlsu7kEipbi/ZCU+zCkUdwLB22I0u
 4yyP8BWvMngsViPOvqYTtFuzkLmV1C8RTxFyWbhJaKh/7yHGv5v7eBORIZBALeqzbK
 8amMzLVZggrY1Xpt5Scp0mDvXH63DwBcITC7UrCswcJ4gBLtgIiQlaaabNAEugix8m
 HnNaurfKE4uzi44xlVDS8muBup61WCrIFq4vJFIuG4CDzomkYKl+lVGzsY2pJrW3gd
 vPB1dbrzkQeYQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E6676C009;
 Fri,  8 Jul 2022 03:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657242964; bh=UJjmT92o0tq2NPms9eaGL1i8GJsh7AZ6Ngz2TnmkHGQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZXcWYi8D3wHR7VxnPPOWByGClt2Wl4ayPoQA627leJWQR5dQEcSueSEV0YLPjNkd2
 Wh0adMyXKF/l9pJHBi+1o6HXaxKDN+ogZEXJKKlsu7kEipbi/ZCU+zCkUdwLB22I0u
 4yyP8BWvMngsViPOvqYTtFuzkLmV1C8RTxFyWbhJaKh/7yHGv5v7eBORIZBALeqzbK
 8amMzLVZggrY1Xpt5Scp0mDvXH63DwBcITC7UrCswcJ4gBLtgIiQlaaabNAEugix8m
 HnNaurfKE4uzi44xlVDS8muBup61WCrIFq4vJFIuG4CDzomkYKl+lVGzsY2pJrW3gd
 vPB1dbrzkQeYQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 51780399;
 Fri, 8 Jul 2022 01:15:57 +0000 (UTC)
Date: Fri, 8 Jul 2022 10:15:42 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Eric Van Hensbergen <ericvh@gmail.com>
Message-ID: <YseFPgFoLpjOGq40@codewreck.org>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <7534209.h2h7kyIpJd@silver>
 <CAFkjPT=GAoViYd0E7CZQDq3ZjhmYT0DsBytfZXnE10JL0P8O-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkjPT=GAoViYd0E7CZQDq3ZjhmYT0DsBytfZXnE10JL0P8O-Q@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Fri, Jul 08, 2022 at 10:44:45AM
 +1000: > there are other 9p virtio servers - several emulation platforms
 support it > sans qemu. Would you happen to have any concrete example? I'd
 be curious if there are some that'd be easy to setup for test for example;
 my current validation setup lacks a bit of diversity... 
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
X-Headers-End: 1o9cbN-00ALOV-SE
Subject: Re: [V9fs-developer] [PATCH v4 00/12] remove msize limit in virtio
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, netdev@vger.kernel.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric Van Hensbergen wrote on Fri, Jul 08, 2022 at 10:44:45AM +1000:
> there are other 9p virtio servers - several emulation platforms support it
> sans qemu.

Would you happen to have any concrete example?
I'd be curious if there are some that'd be easy to setup for test for
example; my current validation setup lacks a bit of diversity...

I found https://github.com/moby/hyperkit for OSX but that doesn't really
help me, and can't see much else relevant in a quick search

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
