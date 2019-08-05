Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C528214F
	for <lists+v9fs-developer@lfdr.de>; Mon,  5 Aug 2019 18:09:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hufXr-0000Hk-6X; Mon, 05 Aug 2019 16:09:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bart.vanassche@gmail.com>) id 1hufXp-0000H6-Rv
 for v9fs-developer@lists.sourceforge.net; Mon, 05 Aug 2019 16:09:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ILZYy/Qkh2SOroGxB401ESLDlG+ppsquN1OQynPyiSU=; b=BiInguGhucezKpXLNEm2QrC6ne
 NFiFOcMv1LeC8xKMLEGndTPgImpaNsRehY4jAsCKohLYT0W134cifk7e5l0vorcrw7hHGJAQgdusR
 ne7l2Rd/HjGG6EE2Sb7C4hOvrLe/YfgBtmZ1ym3FyojJ1z1D8CiMYqL24M5Zv8aeiu2w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ILZYy/Qkh2SOroGxB401ESLDlG+ppsquN1OQynPyiSU=; b=TLv3SHMSCoFO7zbcWvgNh07b2q
 c2j1QAL+LbQuihEQ+6xDa8hvubj928x5JLvbTaGlYWKxJ9xIgNQPSXppfQ6kOjaNV/CvNu/oZ+8Rt
 EJFRVjWLIgetv3X9v43VZC3N+FxEfooWAM35JkUv89Zj2u7l83z9wbRDBytIuAZSWzto=;
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hufXo-00BKoE-G9
 for v9fs-developer@lists.sourceforge.net; Mon, 05 Aug 2019 16:09:09 +0000
Received: by mail-pg1-f194.google.com with SMTP id n4so4710342pgv.2
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 05 Aug 2019 09:09:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ILZYy/Qkh2SOroGxB401ESLDlG+ppsquN1OQynPyiSU=;
 b=nQP86Yqk3GFv083wevulFkhFBAdR78RlTIZvCexnTtnu4j9UtQ9F3loH5kDgP6h1e9
 7dxpfPa+q6KA9E5tKG8XNR06cfJ9ZPEciG42O2Oum0iKiHNdRIQaqnTD/nyIxEV58xbu
 rkENHftY1SSPLhGKk1ZONqGxvGEUcz3lT6Do9qS6HFEkSnu/aR0bh5s/iESHnVSsgno7
 tFg9cn6w2jmMy5rA1i+K/Qyh5z64HDFx0FWuhTD6M8dQccgUP7d+ioRFbgAbD+abRed1
 CYAF/b3wa+1m3TJnTHlpbCIcMJWRAnDvc2YJHXhKVelTzk7P25fUfPaLZMDhsWciZc0N
 OKQQ==
X-Gm-Message-State: APjAAAW5riYH9oOQCLQw+wxbhmKbKW8KW+yLp5rOzYmtbUPjjfUHDsmc
 vh81sihORwGkEuoAtRR6+XpL+a43
X-Google-Smtp-Source: APXvYqwAxl1pBS8AeJ6EZK9QTwP7S8jW1nhyg9FAGS/zhrgSmhxNmxd6AUEWfED1glvlzd4Q5NiPYA==
X-Received: by 2002:a62:2aca:: with SMTP id
 q193mr75352974pfq.209.1565021342284; 
 Mon, 05 Aug 2019 09:09:02 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id b136sm111692066pfb.73.2019.08.05.09.09.00
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 09:09:01 -0700 (PDT)
To: Chuck Lever <chuck.lever@oracle.com>, jgg@ziepe.ca
References: <20190729171923.13428.52555.stgit@manet.1015granger.net>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <f181b5b6-df7c-d657-4ec6-4a4e56a9b5ff@acm.org>
Date: Mon, 5 Aug 2019 09:09:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729171923.13428.52555.stgit@manet.1015granger.net>
Content-Language: en-US
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (bart.vanassche[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hufXo-00BKoE-G9
Subject: Re: [V9fs-developer] [PATCH v3] rdma: Enable ib_alloc_cq to spread
 work over a device's comp_vectors
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
Cc: linux-rdma@vger.kernel.org, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 7/29/19 10:22 AM, Chuck Lever wrote:
> diff --git a/drivers/infiniband/ulp/srpt/ib_srpt.c b/drivers/infiniband/ulp/srpt/ib_srpt.c
> index 1a039f1..e25c70a 100644
> --- a/drivers/infiniband/ulp/srpt/ib_srpt.c
> +++ b/drivers/infiniband/ulp/srpt/ib_srpt.c
> @@ -1767,8 +1767,8 @@ static int srpt_create_ch_ib(struct srpt_rdma_ch *ch)
>   		goto out;
>   
>   retry:
> -	ch->cq = ib_alloc_cq(sdev->device, ch, ch->rq_size + sq_size,
> -			0 /* XXX: spread CQs */, IB_POLL_WORKQUEUE);
> +	ch->cq = ib_alloc_cq_any(sdev->device, ch, ch->rq_size + sq_size,
> +				 IB_POLL_WORKQUEUE);
>   	if (IS_ERR(ch->cq)) {
>   		ret = PTR_ERR(ch->cq);
>   		pr_err("failed to create CQ cqe= %d ret= %d\n",
Hi Chuck,

Please Cc me for future srp and srpt patches. I think my name appears 
next to both drivers in the MAINTAINERS file.

Thanks,

Bart.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
