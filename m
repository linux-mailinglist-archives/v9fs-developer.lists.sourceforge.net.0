Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F076D33FF
	for <lists+v9fs-developer@lfdr.de>; Sat,  1 Apr 2023 23:00:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1piiKm-0005NW-Kl;
	Sat, 01 Apr 2023 21:00:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1piiKl-0005NQ-4G
 for v9fs-developer@lists.sourceforge.net;
 Sat, 01 Apr 2023 21:00:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G3TpORB302rpUESWCTLWtrKhqiCxbte4Q9GPCCJyQmg=; b=DoClA5At6G09JD7Px+lgSBeVAa
 3sYnAdHnKQFsHYZ5DGC4LNYRm5LTHd6abAv+1aX8lHGqrIAZ0u4Cfb9GDTvuR7Zdze3+mnlfe8Z06
 OxwYieAE+X9LA56l2aMJNpZB054SlnM9jgnRiJwxBSoWUiGufLVqbsvF3UgWak1X95Qc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G3TpORB302rpUESWCTLWtrKhqiCxbte4Q9GPCCJyQmg=; b=VilWbl7fVBxcqNFtAfDaCajgAL
 dzBrGfMqO3r9PjSMJTE4552AnzRzeir4l80E0HxvbGZKb0V1kO8CFIZd7TWS4x2DbJ9yObF3tUzn1
 6GxwlI/sBRGArAT18wQtb8y/A9XcBamowQA6pHhZvUQE/YlYJV8wpNAajLrnKiPxdmRg=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1piiKg-00CERs-W5 for v9fs-developer@lists.sourceforge.net;
 Sat, 01 Apr 2023 21:00:22 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id ADF2BC01D; Sat,  1 Apr 2023 23:00:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1680382810; bh=G3TpORB302rpUESWCTLWtrKhqiCxbte4Q9GPCCJyQmg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K7FV3gAb1lhSl8mMWywcM/YJFv8SOuVi0+j0pEAjU/kWNLZedAs1XCUYofiO2USDD
 +R/HJFgJm5LpryuPPLINDB+67alzMHJfyGRLpdfqQsnx9bWlY/le8MoFwSHw5rq5MS
 h6mfQYNK+9L65CfByZam6XAhES/tGTHzHy6F+Z9r4k3tTMrgSLVy/3tzld83bOD6K5
 3OxhhsX5PGa4Kzx9BBC/usazT1aPWxGRbfSDo3FvSxrI6PB46H8ysKYdI+70VJ8HA7
 52HgV8Sg2F9yCz7RLJa+5V84PeNXCSLs99HQbFFCWyRQwnmvXoVeZSPmUaEZEC130W
 APzLr9jP73KrA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 16B3AC01A;
 Sat,  1 Apr 2023 23:00:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1680382809; bh=G3TpORB302rpUESWCTLWtrKhqiCxbte4Q9GPCCJyQmg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0mHXB8DBExGVDIJexv4pQqAfbkHD5/a+0xb/MWDxBevhucVujPNXmhdhugY20RgJq
 kfQiHjZmpwo0A5Cv5WwBDNi87m62rOz14INzO77005Lp+28CWvxG+qJr0lB4vUUgKO
 7awyJDUMsbw3GMdod5sO/S6XtFNOcBALG90cGBW0V6MxvBBfvNt4ZH/GL7WLWt6/9Z
 KXZ5R8veLoCE7eXyFSOjgyKDwm5QPlep0qymLEtSsOYdQPh6L6RIUbPEHtEiIzLegk
 LoGip+LagTM/NO7zzalJ04lPUq8zPfQO2bgkSX5K2p0PcOzx0GKfUBMrX8hMQERmds
 MdoYPQ1bX1bBQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id fc614c44;
 Sat, 1 Apr 2023 21:00:04 +0000 (UTC)
Date: Sun, 2 Apr 2023 05:59:49 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <ZCibRa/WlySRnSF4@codewreck.org>
References: <20230401-ericvh-fix-maintainers-v1-1-e3c535b2b5cf@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230401-ericvh-fix-maintainers-v1-1-e3c535b2b5cf@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Apr 01, 2023 at 07:06:25PM
 +0000: > We've recently moved the mailing list to lists.linux.dev to move
 away > from the sourceforge infrastructure. This also updates the [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1piiKg-00CERs-W5
Subject: Re: [V9fs-developer] [PATCH] Update email address and mailing list
 for v9fs
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
Cc: lucho@ionkov.net, ericvh@gmail.com, v9fs@lists.linux.dev,
 linux_oss@crudebyte.com, rminnich@gmail.com,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric Van Hensbergen wrote on Sat, Apr 01, 2023 at 07:06:25PM +0000:
> We've recently moved the mailing list to lists.linux.dev to move away
> from the sourceforge infrastructure.  This also updates the website
> from the (no longer v9fs relevant?) swik.net address to the github
> group which contains pointers to test cases, the protocol, servers,
> etc.  This also changes my email from my gmail to my kernel.org
> address.
> 
> Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>

Acked-by: Dominique Martinet <asmadeus@codewreck.org>

Just a nit below.
(BTW, I think we can de facto start using only the new list pretty
quickly, there's little reason to stay on the old one)

> ---
>  MAINTAINERS | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 8d5bc223f305..6567bae7137b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -224,13 +224,13 @@ S:	Orphan / Obsolete
>  F:	drivers/net/ethernet/8390/
>  
>  9P FILE SYSTEM
> -M:	Eric Van Hensbergen <ericvh@gmail.com>
> +M:	Eric Van Hensbergen <ericvh@kernel.org>
>  M:	Latchesar Ionkov <lucho@ionkov.net>
>  M:	Dominique Martinet <asmadeus@codewreck.org>
>  R:	Christian Schoenebeck <linux_oss@crudebyte.com>
> -L:	v9fs-developer@lists.sourceforge.net
> +L:	v9fs@lists.linux.dev <v9fs@lists.linux.dev>

As far as as I can see there are no other list (or mail) that has the
same descripion as <mail> field; you can either drop the repeated
`<v9fs@lists.linux.dev>` entierly or we can give the list a name
like some (few) others do e.g. "9p filesystem developers <v9fs@...>"


>  S:	Maintained
> -W:	http://swik.net/v9fs
> +W:	http://github.com/v9fs
>  Q:	http://patchwork.kernel.org/project/v9fs-devel/list/
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
>  T:	git git://github.com/martinetd/linux.git
> 
> ---
> base-commit: 707823e7f22f3864ddc7d85e8e9b614afe4f1b16
> change-id: 20230401-ericvh-fix-maintainers-865452e6c43a

Oh, I was wondering what added that, it looks like a b4 feature?
That's interesting, I didn't know b4 also had whistles for sending mails
as well. I like more infos in here, I'll have to give it a try...

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
