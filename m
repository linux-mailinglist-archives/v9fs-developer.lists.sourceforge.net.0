Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 235793B0F31
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Jun 2021 23:03:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lvnYT-0005CL-SL; Tue, 22 Jun 2021 21:03:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1lvnYS-0005CC-OY
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Jun 2021 21:03:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HMR4unNIvosEkM7YP6TmchXmd0KH3uqdRi9sNvieci0=; b=mdwvpLvMx9KapOEzBLxBAgnxFw
 u5BNBB+L71h/ua0oMcq3rqbPDxEOpa3tEupZe8EfkN3MBDTyaycHoAWRLC0xUGegLfvDFG2q2HdsL
 22Z/UecX00INdwFmUcIYD9NKreepumF5OZcnMyciTEgMnuUgDBI35wqh9MeyvJmunAsM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HMR4unNIvosEkM7YP6TmchXmd0KH3uqdRi9sNvieci0=; b=dnVsN7hay+kSo2RwAH0YEW1wWY
 iRhVMOw7yPJBYGY/2FK2nSzR3GpRfSc1a4T6luiJ/wklYaHd0AOp2zzJAL2hkFVCsB1R8a1Ul+Zlk
 GWpZqu31rn0ELYTnrk+m3+YlkJbqNjBK5pGxWN6DSKmwQm1J/3awugmOn1WKkP+rxlyw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lvnYQ-00057n-4T
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Jun 2021 21:03:35 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 9E722C01C; Tue, 22 Jun 2021 23:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1624395802; bh=HMR4unNIvosEkM7YP6TmchXmd0KH3uqdRi9sNvieci0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TXisU0e1ptgLwIoro3Scw6OGxd8eKu3UrK6nfJ+4GoKc1GFCzMUMPtBveeVIlq05U
 7vusR6f3ccsqDwh5tHrehqgallNGnVCvIljpFK1lykePFnrsVAswJ91T7ZJ70OPDdI
 7F5gpDuXvzqRGF2RbGhoJDk+s+6p/+4munKzfpVTrL04XZjsSU3by2xPn7vFdlSm6H
 yD+covM9C2PhSVI5u/FbnuE/yfXr1E596QlYOFAA3yNQ706mMZyehNdZ3MyAxvYKwd
 m0sFJc/XeQ6IhbHdZ73jIRbFo5Vm5yVks5Vqodm22+SJx8emzEn3lkDrhKa2SDrw68
 +2iVp9zq95yEQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id C7643C009;
 Tue, 22 Jun 2021 23:03:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1624395802; bh=HMR4unNIvosEkM7YP6TmchXmd0KH3uqdRi9sNvieci0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TXisU0e1ptgLwIoro3Scw6OGxd8eKu3UrK6nfJ+4GoKc1GFCzMUMPtBveeVIlq05U
 7vusR6f3ccsqDwh5tHrehqgallNGnVCvIljpFK1lykePFnrsVAswJ91T7ZJ70OPDdI
 7F5gpDuXvzqRGF2RbGhoJDk+s+6p/+4munKzfpVTrL04XZjsSU3by2xPn7vFdlSm6H
 yD+covM9C2PhSVI5u/FbnuE/yfXr1E596QlYOFAA3yNQ706mMZyehNdZ3MyAxvYKwd
 m0sFJc/XeQ6IhbHdZ73jIRbFo5Vm5yVks5Vqodm22+SJx8emzEn3lkDrhKa2SDrw68
 +2iVp9zq95yEQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 963b3b99;
 Tue, 22 Jun 2021 21:03:16 +0000 (UTC)
Date: Wed, 23 Jun 2021 06:03:01 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: jim.cromie@gmail.com
Message-ID: <YNJQBc4dawzwMrhn@codewreck.org>
References: <CAJfuBxxH9KVgJ7k0P5LX3fTSa4Pumcmu2NMC4P=TrGDVXE2ktQ@mail.gmail.com>
 <YNIaFnfnZPGVd1t3@codewreck.org>
 <CAJfuBxywD3QrsoGszMnVbF2RYcCF7r3h7sCOg6hK7K60E+4qKA@mail.gmail.com>
 <CAJfuBxw-JUpnENT9zNgTq2wdHqH-77pAjNuthoZYbtiCud4T=g@mail.gmail.com>
 <CAJfuBxxsye593-vWtXz5As0vBCYEMm_R9r+JL=YMuD6fg+QGNA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJfuBxxsye593-vWtXz5As0vBCYEMm_R9r+JL=YMuD6fg+QGNA@mail.gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lvnYQ-00057n-4T
Subject: Re: [V9fs-developer] KCSAN BUG report on p9_client_cb /
 p9_client_rpc
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
Cc: v9fs-developer@lists.sourceforge.net, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi,

let's keep the lists in Cc :)

jim.cromie@gmail.com wrote on Tue, Jun 22, 2021 at 02:55:19PM -0600:
> heres a fuller report - Im seeing some new stuff here.

Thanks, the one two should be the same as p9_client_cb / p9_client_rpc
and p9_client_cb / p9_virtio_zc_request are very similar, and also the
same to the first you had, so the patch didn't really work.

I thought after sending it that it probably needs to be tag =
READ_ONCE(req->tc.tag) instead of just assigning it... Would you mind
trying that?

> Im running in a vm, using virtme, which uses 9p to share host filesystems
> since 1st report to you, Ive added --smp 2 to my testing, it seems to
> have increased reporting

I'm ashamed to say I've just never tried KCSAN... I can give it a try over
the next few weeks* if that patch + READ_ONCE doesn't cut it

(*sorry)

Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
