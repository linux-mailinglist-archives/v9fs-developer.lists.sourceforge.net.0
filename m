Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEFD497D99
	for <lists+v9fs-developer@lfdr.de>; Mon, 24 Jan 2022 12:08:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nBxCa-0002OK-04; Mon, 24 Jan 2022 11:07:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nBxCY-0002O2-2C
 for v9fs-developer@lists.sourceforge.net; Mon, 24 Jan 2022 11:07:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=906aLdz+I0qRY+XLR4gRuQlCFXv/vWmRdftupy1Lgho=; b=CrUqFFF4TM6/APkgD+HRsvWCRG
 DqsQpB3dcH8M8zfUHVkxk/r75pZUKu/LbTMCYsq7w86QYKZibk3IUgLjopE3Ao0ZrkoNnnq7SWyRQ
 r7C3lp3PD86l913xNzFXYGDzSkabapeZETqbeQFEK9vQ1UTTpu688wengr8AiE8n7Nes=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=906aLdz+I0qRY+XLR4gRuQlCFXv/vWmRdftupy1Lgho=; b=LKj005hP5jL2rxbbCe82uBRAoD
 Tcjlfu+DDEQh3Xkhd/HnOUCiawHkgm7WVXcSTaVHgBVdra2EL2cQQensWmU4IZrxcVUIMZuQ6yNjP
 IWHP3PBtj3RI5UAg4xO8ganKCmtQQ/WnecVopN0Psf5KPlRGF4gOcKt/g4JOcjynEbJo=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nBxCO-0006pK-NZ
 for v9fs-developer@lists.sourceforge.net; Mon, 24 Jan 2022 11:07:56 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 26687C01E; Mon, 24 Jan 2022 12:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1643022462; bh=906aLdz+I0qRY+XLR4gRuQlCFXv/vWmRdftupy1Lgho=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hSTRij+LjZvgH3iI09q+YCYC3/nYSyMJggUHag9ITyl6B5rvvi0AnqpANX7T9j7Kb
 Oa+XwWV9Qtr8wpS21mW4DxN/0j61pRDt8poCjpBlVotPKkRoft0tPeIlMsnmIYaaqH
 ScrB4XB+AjB9Bq1qfpaub3Mw7yuOO/Lgj9CWMd6N/ggG5vPP07rxMnh5Jlmh5S+KVy
 MAriMAuIfRh38qi0D8nCAF/z7EtcYl/oKXOAq3ECAL8rxbtiDxvemSiIEf8WZamcK5
 sCJDIz2fKZShc8VrWHEVefKlyJCEOn93Ppo3kWur1kAFXwxxcxQu9FDfIPpNnteLpx
 WWWCMz9JGatjw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 026DDC009;
 Mon, 24 Jan 2022 12:07:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1643022461; bh=906aLdz+I0qRY+XLR4gRuQlCFXv/vWmRdftupy1Lgho=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sv12hwipGD3L76wBT+IIKrDkWsrmRVO5141hMCyIXuXjEQUg2XALVqYYkpn3ZbMHG
 +cSn0wJXYRHnQDWD8U6qzQL04bqaNMcJSPtD0p25tce0zyC45PffOjv58nNq5Ux5Hn
 +3dysbxuHI2Cz/Jpx18wAbLrp1PcfzGkoAa/zmr0lRE6wWQbDj1obn+cEhyc5t0TK9
 PmAkcaBqOo5KfstN8QQDr+wcVrKk64QD/JMm21w03PmlT7XnhRKh3R3/9HYkS16Zca
 KhIoiavYKcaHcfBAggLg7g8LL32YlEh9BIzLHza9izYT9iEZPe/MeX1nw8jBNYzfDw
 +o+ThYtJCR8yw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id b04e8f30;
 Mon, 24 Jan 2022 11:07:35 +0000 (UTC)
Date: Mon, 24 Jan 2022 20:07:20 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Nikolay Kichukov <nikolay@oldum.net>
Message-ID: <Ye6IaIqQcwAKv0vb@codewreck.org>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <29a54acefd1c37d9612613d5275e4bf51e62a704.camel@oldum.net>
 <1835287.xbJIPCv9Fc@silver>
 <5111aae45d30df13e42073b0af4f16caf9bc79f0.camel@oldum.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5111aae45d30df13e42073b0af4f16caf9bc79f0.camel@oldum.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Nikolay Kichukov wrote on Mon, Jan 24, 2022 at 11:21:08AM
 +0100: > It works, sorry for overlooking the 'known limitations' in the first
 > place. When do we expect these patches to be merged upstream? 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nBxCO-0006pK-NZ
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Christian Schoenebeck <linux_oss@crudebyte.com>,
 Greg Kurz <groug@kaod.org>, v9fs-developer@lists.sourceforge.net,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Nikolay Kichukov wrote on Mon, Jan 24, 2022 at 11:21:08AM +0100:
> It works, sorry for overlooking the 'known limitations' in the first
> place. When do we expect these patches to be merged upstream?

We're just starting a new development cycle for 5.18 while 5.17 is
stabilizing, so this mostly depends on the ability to check if a msize
given in parameter is valid as described in the first "STILL TO DO"
point listed in the cover letter.

I personally would be happy considering this series for this cycle with
just a max msize of 4MB-8k and leave that further bump for later if
we're sure qemu will handle it.
We're still seeing a boost for that and the smaller buffers for small
messages will benefit all transport types, so that would get in in
roughly two months for 5.18-rc1, then another two months for 5.18 to
actually be released and start hitting production code.


I'm not sure when exactly but I'll run some tests with it as well and
redo a proper code review within the next few weeks, so we can get this
in -next for a little while before the merge window.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
