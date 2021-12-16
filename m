Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 445E4476893
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 04:18:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxhHT-0007ti-7f; Thu, 16 Dec 2021 03:18:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jasowang@redhat.com>) id 1mxhHS-0007tc-DX
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 03:18:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+B6iF5v2h52ZS6af9Ru3mvKMM/Y6Xv7ONEyz4ZfHeJc=; b=VHZ7YkI5Br/YlNNLuBNoEie1UI
 I2eqjC6SPh5S71pFqot1wz7yptnRuhuJi8A9cUJ3JpQY4apXGfCcfEbrsPtzTJ6wpDCEaQfeGcId2
 5IE0AFq89HbxYaT/TgJSyXTrRojPc+yx0S6AdQ+Rexxt8E3Bnk8r0KkUfo74CWEDrmRQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+B6iF5v2h52ZS6af9Ru3mvKMM/Y6Xv7ONEyz4ZfHeJc=; b=j/GEWrFzJlI/x3bd4x5uOAd2od
 IKo4NyUgHfIz9UK1N9wVVVnmR7/JAcmc4/3wKS58RlhJkU64gO3LihA09yoFkkiDB8B5DV7p6ch3a
 r5BFKSjI1XCZYzI4uBD8J8UUCiHAiesEQ84+VraR42TpgkHz9xnaE3mnYzYIQuhm4lUY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxhHN-00HBUE-Aw
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 03:18:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639624675;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+B6iF5v2h52ZS6af9Ru3mvKMM/Y6Xv7ONEyz4ZfHeJc=;
 b=SBDySK9rR828LydnNKqmAbj3fOdARKTmAHi7pE+ZVGHu6o2Rxf7t9TufWsRiYACKchaRhJ
 BCRIDSU0QGhmjgw6ZGwOxck9dMe72VyuS6Li1pf0pghL/C/ZySC/vzIWn3j+zkXQOvlXbS
 eWT/pbmSV+zdmTQXj/aNtyE/3aLVyKg=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-550-5yHx3i4OOluwde8xUGKogg-1; Wed, 15 Dec 2021 22:17:51 -0500
X-MC-Unique: 5yHx3i4OOluwde8xUGKogg-1
Received: by mail-lj1-f199.google.com with SMTP id
 m20-20020a2eb6d4000000b002219b019ae8so7647128ljo.16
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 15 Dec 2021 19:17:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+B6iF5v2h52ZS6af9Ru3mvKMM/Y6Xv7ONEyz4ZfHeJc=;
 b=fPGA8Cbwj3/UCt26mgGdlabT5FC0FAEDE7SI6n+P+7mG6oSHT6pvavA3igxy9EGJvm
 q6ATYGSQwJe37N93TelrGIE4s9H+eLhUaLZbXfw6P+ExoN/lYVPWjtpF8TrMjeObFYKG
 f7iCuyifdcudMyyzs+UMuwAceqgykyNBlCF0CMESBPx6FZHWt0Ob9ePWBd/s3e8dU8u0
 uVjTCsR74C088BwyEZ3V+HCZuRCO7Hjk8qR2S1a92/w77+iKnnLU1Pk0aeL0QzO0UgYt
 dQcxCOwrZxID4080AI1RPKADXFIEasMpvINHHzOFh6DzxU5b9QNEYaOIcQsIuS0zc3IZ
 KB8w==
X-Gm-Message-State: AOAM530wh3bJAqEcwXvd0FuwdN9QPV3xJZ6ypi093H/Hdhoe6saN45ZQ
 ijIlNlbyD57LlBvFAh+4H3rOQ9eBOubO5tPurSOoncVZc5XGD58dD84V/o1MPQbct3NtjQUA4ok
 PSggh1qXsOIiJ469zpdMH5KJu1t+EDsB7C8iStkH5A8ThaXN6+vs=
X-Received: by 2002:a2e:8507:: with SMTP id j7mr13138228lji.307.1639624670283; 
 Wed, 15 Dec 2021 19:17:50 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzybEQzi7rWzYE9jmfV9nP+8CV6LzV7oVHuDufrPBpOHg5wimO1iedL9ILZ1jIXZssjM84pJjnht+DIQlb6M6g=
X-Received: by 2002:a2e:8507:: with SMTP id j7mr13138220lji.307.1639624670128; 
 Wed, 15 Dec 2021 19:17:50 -0800 (PST)
MIME-Version: 1.0
References: <20211216030836.81989-1-zhuran@mail.ustc.edu.cn>
In-Reply-To: <20211216030836.81989-1-zhuran@mail.ustc.edu.cn>
From: Jason Wang <jasowang@redhat.com>
Date: Thu, 16 Dec 2021 11:17:39 +0800
Message-ID: <CACGkMEv3unSNMvj78e_Cdynz6zaTz-BZ5e20wF3dMURODqe1Hg@mail.gmail.com>
To: zhuxinran <zhuran@mail.ustc.edu.cn>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jasowang@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 16,
 2021 at 11:09 AM zhuxinran <zhuran@mail.ustc.edu.cn>
 wrote: > > start my first kernel patch commit > Patch looks good but this
 is not a good change log. It should be something like "Fix typo in the comment
 for p9_virtio_create()" 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mxhHN-00HBUE-Aw
Subject: Re: [V9fs-developer] [PATCH] virtio: fix spelling error
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
Cc: lucho@ionkov.net, ericvh@gmail.com,
 linux-kernel <linux-kernel@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 v9fs-developer@lists.sourceforge.net, davem <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Dec 16, 2021 at 11:09 AM zhuxinran <zhuran@mail.ustc.edu.cn> wrote:
>
> start my first kernel patch commit
>

Patch looks good but this is not a good change log.

It should be something like "Fix typo in the comment for p9_virtio_create()"

Thanks

> Signed-off-by: zhuxinran <zhuran@mail.ustc.edu.cn>
> ---
>  net/9p/trans_virtio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
> index bd5a89c4960d..f7dc561ca516 100644
> --- a/net/9p/trans_virtio.c
> +++ b/net/9p/trans_virtio.c
> @@ -648,7 +648,7 @@ static int p9_virtio_probe(struct virtio_device *vdev)
>   * @args: args passed from sys_mount() for per-transport options (unused)
>   *
>   * This sets up a transport channel for 9p communication.  Right now
> - * we only match the first available channel, but eventually we couldlook up
> + * we only match the first available channel, but eventually we could look up
>   * alternate channels by matching devname versus a virtio_config entry.
>   * We use a simple reference count mechanism to ensure that only a single
>   * mount has a channel open at a time.
> --
> 2.33.1
>
>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
