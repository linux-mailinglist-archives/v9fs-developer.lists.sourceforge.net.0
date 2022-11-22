Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68929633341
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 03:27:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxJ0J-0001y2-0e;
	Tue, 22 Nov 2022 02:27:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sstabellini@kernel.org>) id 1oxJ0H-0001xw-V6
 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 02:27:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tJFWBTue8OBH2dnfi6eA94on2C11SstGOCnv7waFDx4=; b=kRYqA6vxzc3dFM5pdb7ZKx8u92
 VUDjx5EmxXqEneLFqquf6IGmhfFn160LubuUcTH4nfWPUMYaymapV+WYo/4vDG15+SPFHv2vj+bED
 XjoYHiZQjFVc1usJGg6v81aLaPRXN8cW/Ux5DH0jXUwm6ZbmxPrbPe8K2YiLhbwu0mAI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tJFWBTue8OBH2dnfi6eA94on2C11SstGOCnv7waFDx4=; b=USu6FCKaDnBxXdReVZYQlzizBh
 AvWesvMh6FJ+bZKaf5KSqWp3TII7Zxp7saMggx57C0Ly0Ayn/czhvY2ShIUAmCq4kPf6om3oSooVI
 ionEH4FtxSCiQSyf4vR3yAUfZwy2y1L57tmaVq8i/WuUxUBf4s+8ZgkY/+MOLsOLhK4I=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxJ0H-0007Cp-8W for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 02:27:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E8434B8190D;
 Tue, 22 Nov 2022 02:27:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB3E8C433D6;
 Tue, 22 Nov 2022 02:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669084029;
 bh=f8p3NDnP/ojCepGk1AfQOss+D4LjgykOMOD0RmRlGuY=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=E5+sYQuKK2lhq+DeQ130EEzF0FrgB7RmSmgtfMWx0SAUYOdv3FqvcLjKJCCWBSaiM
 mjw1/nBicH/Z48AK2xGmScKOTVNBJCBhq0mYDdPzpjMcFmaWdp2WzkOgd6s0qHRktS
 bBsj83kgnscLSe3eKy1kOYt58hZloDz7mBDFc86Nm0s4IizQ9Fpvwut7LsYilwWVON
 X8OMr/0QQMdWFXL1YjpvWZ6yVu13arhmPaXL09cuzU26r4WhN/FAXzZa6MxR1Jo/Wg
 4qzgE3G7hgynJQro473jfFw/ehKsoUfH793UVunXmi/sOlk4AvKciTXZLqzbJuLiPA
 rt1/5+MeVKTVg==
Date: Mon, 21 Nov 2022 18:27:08 -0800 (PST)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@ubuntu-linux-20-04-desktop
To: Christian Schoenebeck <linux_oss@crudebyte.com>
In-Reply-To: <cover.1669072186.git.linux_oss@crudebyte.com>
Message-ID: <alpine.DEB.2.22.394.2211211826570.1049131@ubuntu-linux-20-04-desktop>
References: <cover.1669072186.git.linux_oss@crudebyte.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 22 Nov 2022, Christian Schoenebeck wrote: > Follow-up
 fix for: >
 https://lore.kernel.org/linux-kernel/Y3hADWgV9JeajmfF@codewreck.org/
 > > Stefano, I am optimistic that this also works with Xen [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oxJ0H-0007Cp-8W
Subject: Re: [V9fs-developer] [PATCH 0/2] net/9p: fix response size check in
 p9_check_errors()
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
 Stefano Stabellini <sstabellini@kernel.org>, linux-kernel@vger.kernel.org,
 GUO Zihua <guozihua@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 22 Nov 2022, Christian Schoenebeck wrote:
> Follow-up fix for:
> https://lore.kernel.org/linux-kernel/Y3hADWgV9JeajmfF@codewreck.org/
> 
> Stefano, I am optimistic that this also works with Xen, but I have not
> tested it.

Tested-by: Stefano Stabellini <sstabellini@kernel.org>


> Christian Schoenebeck (2):
>   net/9p: distinguish zero-copy requests
>   net/9p: fix response size check in p9_check_errors()
> 
>  include/net/9p/9p.h |  2 ++
>  net/9p/client.c     | 12 ++++++++----
>  2 files changed, 10 insertions(+), 4 deletions(-)
> 
> -- 
> 2.30.2
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
