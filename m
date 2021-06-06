Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C78439D2D3
	for <lists+v9fs-developer@lfdr.de>; Mon,  7 Jun 2021 04:12:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lq4l2-0006FV-0k; Mon, 07 Jun 2021 02:12:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1lq4l0-0006FN-Dp
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Jun 2021 02:12:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a1qmuhTbRMTd0aB2zPF4gCLCyeO0G69jA1FO5xmsoZE=; b=cL7WM4gsFg/AqWx7Zl70a+J2Pc
 u1LJHpivF5vE2qiNuzWZWcZm11/B3Yc9QdYzaCnDPQRbqjGH1wYpKOOeIhrn3qOp5hq2mERF4v07d
 YzG1G1nhw9JWyNz6JNRKo0on2e3kgtncPA7Oo4W1WdBrkkvYxYyXP6h1LQ0YiLp9Nq3w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a1qmuhTbRMTd0aB2zPF4gCLCyeO0G69jA1FO5xmsoZE=; b=Vwr4b+HWly8f+eK4cKWFgxE5Gl
 gd2t2hnPXHmaTtzNIVIzCENcwsxyJYWNyUrxIC6zJVj0EUm9X0pkaYdKtAFsD7SLYI0NRFHxPGemZ
 zcNWuAwODakzP5kOF2cTSFxajsp85+XOegXeZw+6IeLQCk6KDCUC2DxlK7NLyhlxNdjU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lq4kr-0000Cx-3u
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Jun 2021 02:12:52 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id EA817C01E; Mon,  7 Jun 2021 01:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1623023176; bh=a1qmuhTbRMTd0aB2zPF4gCLCyeO0G69jA1FO5xmsoZE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NmGfezxeJxwOv5BqY9/PwoWrqOmWeXpy4pgg8FwqU8JyewqKx7hNYFUMDHz3YoPh8
 1jpdGB/jSDuHGZ9dUe1d6LIKlSLIzLEn5Znd4VvwmlymnEsDgxDL5HSGjlF/bo40uz
 2cIZsnL4VrqetV5fK193sTj9TgYCYi/0D3cefGZSEmTMLdnM1mYlYZdCzbGz1ogZ18
 zLKyCNgQQlMCP7zgq0+K60q9QLjcB/3vXroyZP1OKHDnotfyvNVOfWXDtkDqJ7wbOy
 nKj9b1Y5Xxe3Zke07nBZD57v7smNkhuT8caOzTTRBvBVU3uUi7tWHQR/yA6DN3JqNW
 x02F9A+nqxh2w==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id DB4DCC009;
 Mon,  7 Jun 2021 01:46:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1623023176; bh=a1qmuhTbRMTd0aB2zPF4gCLCyeO0G69jA1FO5xmsoZE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NmGfezxeJxwOv5BqY9/PwoWrqOmWeXpy4pgg8FwqU8JyewqKx7hNYFUMDHz3YoPh8
 1jpdGB/jSDuHGZ9dUe1d6LIKlSLIzLEn5Znd4VvwmlymnEsDgxDL5HSGjlF/bo40uz
 2cIZsnL4VrqetV5fK193sTj9TgYCYi/0D3cefGZSEmTMLdnM1mYlYZdCzbGz1ogZ18
 zLKyCNgQQlMCP7zgq0+K60q9QLjcB/3vXroyZP1OKHDnotfyvNVOfWXDtkDqJ7wbOy
 nKj9b1Y5Xxe3Zke07nBZD57v7smNkhuT8caOzTTRBvBVU3uUi7tWHQR/yA6DN3JqNW
 x02F9A+nqxh2w==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 38eba9d2;
 Sun, 6 Jun 2021 23:46:10 +0000 (UTC)
Date: Mon, 7 Jun 2021 08:45:55 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Changbin Du <changbin.du@gmail.com>
Message-ID: <YL1eM+mzjuggDvqp@codewreck.org>
References: <20210606230922.77268-1-changbin.du@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210606230922.77268-1-changbin.du@gmail.com>
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
X-Headers-End: 1lq4kr-0000Cx-3u
Subject: Re: [V9fs-developer] [PATCH v3 0/3] 9p: add support for root file
 systems
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux-doc@vger.kernel.org,
 Eric Van Hensbergen <ericvh@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 linux-kernel@vger.kernel.org, "Enrico Weigelt,
 metux IT consult" <lkml@metux.net>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Changbin Du wrote on Mon, Jun 07, 2021 at 07:09:19AM +0800:
> Just like cifs and nfs, this short series enables rootfs support for 9p.
> Bellow is an example which mounts v9fs with tag 'r' as rootfs in qemu
> guest via virtio transport.
> 
>   $ qemu-system-x86_64 -enable-kvm -cpu host -m 1024 \
>         -virtfs local,path=$rootfs_dir,mount_tag=r,security_model=passthrough,id=r \
>         -kernel /path/to/linux/arch/x86/boot/bzImage -nographic \
>         -append "root=/dev/v9fs v9fsroot=r,trans=virtio rw console=ttyS0 3"

Thanks for rebasing -- I haven't forgotten, just been otherwise busy.

Will make time for this and the netfs rework over the next couple of
weeks.


Just a couple of notes:

linux-fsdevel@vger is still not in Cc of the patches, and they weren't
for any other version except for one of my replies, so it might be worth
resending just for them as it touches do_mounts.c / root_dev.h


>  MAINTAINERS                                 |  8 ++-

I don't think it's worth adding yourself as MAINTAINERS for this, will
likely strip it out (I know I'm the one who asked for your help if
people have problems with this, but we should keep contacts simple)
I'll forward you requests when they come if it's not trivial and you're
not subscribed to the v9fs-developer@sf list

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
