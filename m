Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF92476A59
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 07:26:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxkDP-0001Bg-Ii; Thu, 16 Dec 2021 06:26:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1mxkDN-0001Ba-CA
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 06:26:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G7/h/q2M+jNsAkaxCIUPRJ0ZLteZm6BldoJyWM2m9Js=; b=NIAc8C7L85S7EXodiPgwN6d6WT
 EQwfPglnFRZsU0Jb8/xgYz/sFdcxJ/EtsUeVbYtXk2LISe4Iyv2Kfyzrf+XYKuUtXCf5ioFWo5BBU
 R99R/63VyYssxP2nwte51KOnaEQAsC7w+AayLMP70+JmJtf2LPVRc20UHOjkwsh28oWA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G7/h/q2M+jNsAkaxCIUPRJ0ZLteZm6BldoJyWM2m9Js=; b=lclk9W3r2d3aA650yEASfLh1yx
 ssD4xEZrqAHT1E3pZYGIVfTQzlu7EIXZztjt5ZPzC0gxPSdHT+mjwFA4cxdtw1Hr/n7nWqBR8wOan
 wgnA5xNVmmJMzdItqM3e4xKBU4oHdBFkgo9maZ1ReFEItyVgHtpsVuJ+NwXBepIbP1Ss=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxkDG-0001wU-Ke
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 06:26:06 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id C5CA4C01F; Thu, 16 Dec 2021 07:25:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1639635947; bh=G7/h/q2M+jNsAkaxCIUPRJ0ZLteZm6BldoJyWM2m9Js=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wbHwvOoXAfav81BcAHf7RE0Zomgt3gCn0whh5OWzdNgyc+5wZOt/gdtUSsQEykxx2
 GeDjyzCDtD2oiaxTjAMo/NZdfUNx9jMl+bjuOWdWRarRMS+LKOPYjrQ7gVr6y3L0uc
 WcB18nMrODo0LgF5ZZdtq28rRZiFW7kxOAfZdvMv8oAiPj9H4DnLrBhmSenWFA8XLd
 gVEzfsrkQYghHdA6ZfAEWgUNHA/gObQiOXPvFAioJYXCP477LznfbdfHctuK+qDYu8
 ueH4CWPNKMo2b3p+ILPDWIe+T5uBxG/HlRFURVT4zt1wmaPdZJELmi1K8JSvCSTnNJ
 3JB1a9eQIrRkA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id F15A4C009;
 Thu, 16 Dec 2021 07:25:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1639635947; bh=G7/h/q2M+jNsAkaxCIUPRJ0ZLteZm6BldoJyWM2m9Js=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wbHwvOoXAfav81BcAHf7RE0Zomgt3gCn0whh5OWzdNgyc+5wZOt/gdtUSsQEykxx2
 GeDjyzCDtD2oiaxTjAMo/NZdfUNx9jMl+bjuOWdWRarRMS+LKOPYjrQ7gVr6y3L0uc
 WcB18nMrODo0LgF5ZZdtq28rRZiFW7kxOAfZdvMv8oAiPj9H4DnLrBhmSenWFA8XLd
 gVEzfsrkQYghHdA6ZfAEWgUNHA/gObQiOXPvFAioJYXCP477LznfbdfHctuK+qDYu8
 ueH4CWPNKMo2b3p+ILPDWIe+T5uBxG/HlRFURVT4zt1wmaPdZJELmi1K8JSvCSTnNJ
 3JB1a9eQIrRkA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id d04c076f;
 Thu, 16 Dec 2021 06:25:41 +0000 (UTC)
Date: Thu, 16 Dec 2021 15:25:26 +0900
From: asmadeus@codewreck.org
To: zhuxinran <zhuran@mail.ustc.edu.cn>
Message-ID: <Ybrb1pTnWYsoc4wX@codewreck.org>
References: <20211216061439.4186-1-zhuran@mail.ustc.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211216061439.4186-1-zhuran@mail.ustc.edu.cn>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > [PATCH V2] Next time, please try to set the in-reply-to.
 for example, with your first mail,
 it would be something like this: git send-email
 --to xx --cc yy \ --in-reply-to 20211216030836.81989-1-zhuran@mail.ustc.edu.cn
 \ 0001-9p-trans_virtio-Fix...patch 
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
X-Headers-End: 1mxkDG-0001wU-Ke
Subject: Re: [V9fs-developer] [PATCH V2] 9p/trans_virtio: Fix typo in the
 comment for p9_virtio_create()
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
Cc: lucho@ionkov.net, ericvh@gmail.com, linux-kernel@vger.kernel.org,
 kuba@kernel.org, v9fs-developer@lists.sourceforge.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

> [PATCH V2]

Next time, please try to set the in-reply-to.
for example, with your first mail, it would be something like this:

git send-email --to xx --cc yy \
   --in-reply-to 20211216030836.81989-1-zhuran@mail.ustc.edu.cn \
   0001-9p-trans_virtio-Fix...patch


zhuxinran wrote on Thu, Dec 16, 2021 at 02:14:39PM +0800:
> Fix typo in the comment for p9_virtio_create()

Both the subject line and this line are displayed in the git log so we
don't really need this either, I'll remove this line and apply.

Thanks!
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
