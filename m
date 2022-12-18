Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1814D64FF53
	for <lists+v9fs-developer@lfdr.de>; Sun, 18 Dec 2022 16:38:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6vk5-0001lf-O4;
	Sun, 18 Dec 2022 15:38:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1p6vk4-0001lZ-A5
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 15:38:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u8WxtGqAuSUy/qkzXhWDNFWY4cwLjWDK1kgxLVBLWZE=; b=mixIv0Kpnj8fO7aM+zUFxFeRC4
 i8836tWMecDv5TSBnXFSH4Y9UWInYCqEo61ko69sgca27o8TGP2W4fLz3B7vphncNXiBT9fbTm5uk
 WvKh6q1LjJ84jeAaJag8vHzTHanLgxQ9oqPOiL0GrthaAcdkKfdqQC0oRFs/JXQHwCWo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u8WxtGqAuSUy/qkzXhWDNFWY4cwLjWDK1kgxLVBLWZE=; b=aiRsjBDBCCaOxTMo/0rbpOtMYk
 eIgBt/6d0eq5ggO6EX5voswd7s/LTVPCd83QQ78LGQOFfcFiZ65t2ohXN7dvdodjO6wQQ7jZDRz9K
 zw4qsNHU4ohqsQZ3u5HnAldAOktMeRNVz1vCttUz+AHwNt6UVxWfzjahMtrRz8xt4o8c=;
Received: from mail-wr1-f47.google.com ([209.85.221.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p6vjy-003RTw-4i for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 15:38:20 +0000
Received: by mail-wr1-f47.google.com with SMTP id h16so6576520wrz.12
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 18 Dec 2022 07:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=u8WxtGqAuSUy/qkzXhWDNFWY4cwLjWDK1kgxLVBLWZE=;
 b=j9SO18Pd5grl0AgjVmtg6ebLjUiKKBsXGgl7BB8bHYVHLqJcMB//GYswQ5FzAupGc1
 JA9nS4+ZKGfL8hPrH9rSTRoRrUBnZZS9HB9AyyLZ/jivc36/Q1fTsV/A91kKpwZX3rtL
 vRQNFf9QEasOHzWTDvvLAj910Vl/B0Jxxdx7niqSCvfLwTLPjBG1Jox93AHSZE1WAQsh
 TUlyxo88qA8HMrOyNYEHidh6IR1/5XR9/84J0KIqeN5/9pIJH110XWuz1o63LB7nFm3V
 dlMIIKN5wKOxToyehIWL1fA1npfGCqhHvilrW0PlOCs5n6naQZQgkaLpYGbY3Lc/CLdA
 TsRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=u8WxtGqAuSUy/qkzXhWDNFWY4cwLjWDK1kgxLVBLWZE=;
 b=cV/P5rErShvbaQv2xwY4jaZjTQM3Wq9x7qQWDMeWXOOA/BdNE5KwRm1MiBdSQ94voz
 YEzMgyhAzcHpDvAfzg6d8qujs+WrOZGC4HAVHhza1I5BYBbgSmbsW59f8kYgKw/6S7ZG
 IRFk9PvgjQFLWv5FCK51L9mvHRWcZpnwwms3QVlzhzNYYDJYZJE5ygSH2Tuuljp0WNOU
 dMnXiYWzROTJuLb04YbiuqyIXkYC5rETbjUkqZ9FOKQDTVndezjjQ3ABt/ogymlW28A9
 KXsIvJuPnf/M8HlNYOxMFKG/komoBm75VLRKenFaajossDnau0oUF+jYMoPnvNBkFfho
 oIAw==
X-Gm-Message-State: ANoB5pmCVVY2Guz027UnvCDHQR3NUcIRFaT63iNaUzjFy20PIsLONgSo
 V3oJtl4gn/GpAOYnlSrPoCQXbJHQxTMIuu9paOs=
X-Google-Smtp-Source: AA0mqf4jvnpsNM7D3f3OoSDkDdgby1NdyQFbOPf+xvcildMRPb6dr4PN2y/Apona8TLAU2iscE9NBGhLi3s3TdO3gTI=
X-Received: by 2002:adf:e303:0:b0:22e:3c66:bda1 with SMTP id
 b3-20020adfe303000000b0022e3c66bda1mr51168699wrj.139.1671377887428; Sun, 18
 Dec 2022 07:38:07 -0800 (PST)
MIME-Version: 1.0
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
 <20221217185210.1431478-2-evanhensbergen@icloud.com>
 <4530979.Ltmge6kleC@silver>
In-Reply-To: <4530979.Ltmge6kleC@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sun, 18 Dec 2022 09:37:56 -0600
Message-ID: <CAFkjPTmoQvzaSsSOAgM9_0+knudWsdi8=TnMOTXZj05hT6tneQ@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  So - here was my thinking - when the cache is enabled, we
 are mostly transferring page sized chunks. Having the MSIZE be 128k exactly
 means we are transferring 31 pages instead of 32. But I think you are right
 and I got this wrong, it needs to be P9_RD_HDR_SZ or something not P9_HDRSZ
 -- P9_HDRSZ just covers size[4]+op[1]+tag[2] and I really want it to cover
 size[4]+op[1]+tag[2]+co [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.47 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1p6vjy-003RTw-4i
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] [PATCH 1/6] Adjust maximum MSIZE to account
 for p9 header
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
Cc: lucho@ionkov.net, linux-kernel@vger.kernel.org, rminnich@gmail.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

So - here was my thinking - when the cache is enabled, we are mostly
transferring page sized chunks.  Having the MSIZE be 128k exactly means we
are transferring 31 pages instead of 32.

But I think you are right and I got this wrong, it needs to be P9_RD_HDR_SZ
or something not P9_HDRSZ --
P9_HDRSZ just covers size[4]+op[1]+tag[2] and I really want it to cover
size[4]+op[1]+tag[2]+count[4] (11 for read) or
size[4]+op[1]+tag[2]+fid[4]+offset[8]+count[4] (23 for write).

Should have just copied the code from npfs (srv->msize = (128*1024)+24) --
but I think I thought P9_HDRSZ was something different than it actually was
(and was stupid enough not to check) - I guess we need a constant for the
maximum packet size other than payload.

      -eric




On Sun, Dec 18, 2022 at 8:55 AM Christian Schoenebeck <
linux_oss@crudebyte.com> wrote:

> On Saturday, December 17, 2022 7:52:05 PM CET Eric Van Hensbergen wrote:
> > Add maximum p9 header size to MSIZE to make sure we can
> > have page aligned data.
> >
> > Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>
> > ---
> >  net/9p/client.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/net/9p/client.c b/net/9p/client.c
> > index fef6516a0639..416baf2f1edf 100644
> > --- a/net/9p/client.c
> > +++ b/net/9p/client.c
> > @@ -28,7 +28,7 @@
> >  #define CREATE_TRACE_POINTS
> >  #include <trace/events/9p.h>
> >
> > -#define DEFAULT_MSIZE (128 * 1024)
> > +#define DEFAULT_MSIZE ((128 * 1024) + P9_HDRSZ)
>
> Adding 7 would make what page aligned exactly, the payload? And how?
>
> >
> >  /* Client Option Parsing (code inspired by NFS code)
> >   *  - a little lazy - parse all client options
> >
>
>
>
>

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
