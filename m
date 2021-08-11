Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 248863E88F2
	for <lists+v9fs-developer@lfdr.de>; Wed, 11 Aug 2021 05:43:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mDf9U-0000OE-KD; Wed, 11 Aug 2021 03:43:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <islituo@gmail.com>) id 1mDf9T-0000O4-Op
 for v9fs-developer@lists.sourceforge.net; Wed, 11 Aug 2021 03:43:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vrb80UciTsVqMxG5b5nPDvYOOH38G+q5ISCWYX524aA=; b=kTkrBJGIObsIJuw93May/Uhgy
 ePbsiTFGXgRcIBVnl0scGEEm+PoQc8PoLvvG5hiNpFemRqsXgEXPZi3ZWCLG5jGjeS4S8SIaTb9z+
 qTHkUCDQYhfnFk0SlnQnh0cFyQ/6FavqwFMXxnkV1G+jmBc5nAXy2JR3HedccbrJ60ZS8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:
 To:Subject:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Vrb80UciTsVqMxG5b5nPDvYOOH38G+q5ISCWYX524aA=; b=RR5+1HEcC4/LmC2ztxFw+l78D2
 B00JTPV9ERK48F75tUrovWrxvN195iSLg56RKPSdYxX6pfDjTWlUzNu/9Kxv+7F0PXDc2W3gOzDzC
 6FiSbHkCoCfUliaON2ilTJU19aWt9G3XyB2pkGh2XucdYzvqo2w9ZBs9AQuVzZHWPya8=;
Received: from mail-pj1-f53.google.com ([209.85.216.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mDf9S-0002vJ-9r
 for v9fs-developer@lists.sourceforge.net; Wed, 11 Aug 2021 03:43:35 +0000
Received: by mail-pj1-f53.google.com with SMTP id
 lw7-20020a17090b1807b029017881cc80b7so7500889pjb.3
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 10 Aug 2021 20:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language;
 bh=Vrb80UciTsVqMxG5b5nPDvYOOH38G+q5ISCWYX524aA=;
 b=Y/wdaIrCley853pXYm42rcvtH0ybXMQMj3T6g0OGeXl/FOl6coj0DScWiNuCbUSGI8
 X5MXUsoP9lATZ3QrutlGuP1yqY9hqcdo3dUkkBXe8p34U162b6lXcRBl1PfX1F/z8ul1
 2cIXINXT9nbm4noFsqTmNcEDAfCaAAp+RXXaqnMtNAw4Jp+Qp8t4EU9y/wmL+ruNoZWy
 jufTbhfGB61AxIMyxIF0OZsViNdsUhLmjDiQqYs0pM0yGKrnRPs3QBrUuaOn+73OB/8w
 wusgKFBQ3GISq8TyfWyQX6ms4LjMVBrPRrzS4/6rc/1PHLe936FnZvqEIVXiPxOWNwv+
 QlwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=Vrb80UciTsVqMxG5b5nPDvYOOH38G+q5ISCWYX524aA=;
 b=VDO10aAWgJ0JL7EK9apSAp8XGeCzG8a8VSZcB8+syyMZVL/jVnH56Y7RnyAkmLuynh
 EnImQYeEASKK8ECaX8MpxL6wsMv2/FkOGYDncfMw0LFmAxdh1X7G4LAV1nbrcXfRZwPD
 YjjJzVwSofSxGnqo/rnPY8GkwM3kn3/qyK+KLPBzInho0iSMMmatAo9hdrdVZUSt0ISE
 U57OLPX36R4ghoEka6dM+iZ0Yya0kvkBSaCALqAaaUnIt5ZBmSdxkCkubNYIRQ3CKBDb
 2dHPEalT9iKh4MCjfCM6m2ckE+Rv+q3jzKMK4nSOHlkrhnhIBGBv8Ahhm2jGOcz5Jv64
 MUnQ==
X-Gm-Message-State: AOAM532fYKhHoRmLxW1KGIedXH3PlUxF/KHkhcKovoO6pNi4wDZndsdZ
 8sEFUtDmITfDrrMvhCSFEzM=
X-Google-Smtp-Source: ABdhPJyajQCWE1gxzk4rM+kelNCELOnMk5zEnwX7aLEMUOwhvdGJlHqEXcA2KXQ76hZla6cENE1cUA==
X-Received: by 2002:a62:9712:0:b029:3be:3408:65a9 with SMTP id
 n18-20020a6297120000b02903be340865a9mr26915532pfe.63.1628653408819; 
 Tue, 10 Aug 2021 20:43:28 -0700 (PDT)
Received: from [10.178.0.78] ([85.203.23.37])
 by smtp.gmail.com with ESMTPSA id z15sm26387016pfn.90.2021.08.10.20.43.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Aug 2021 20:43:28 -0700 (PDT)
To: asmadeus@codewreck.org, Leon Romanovsky <leon@kernel.org>
References: <20210810132007.296008-1-islituo@gmail.com>
 <YRKFXpilGXnKZ2yH@unreal> <YRKLKGtxVZAbKVG5@codewreck.org>
From: Tuo Li <islituo@gmail.com>
Message-ID: <e2211654-fca4-0f5e-db01-7942ee526d13@gmail.com>
Date: Wed, 11 Aug 2021 11:43:24 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <YRKLKGtxVZAbKVG5@codewreck.org>
Content-Language: en-US
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (islituo[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.53 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mDf9S-0002vJ-9r
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] [PATCH] net: 9p: Fix possible null-pointer
 dereference in p9_cm_event_handler()
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, baijiaju1990@gmail.com, kuba@kernel.org,
 v9fs-developer@lists.sourceforge.net, TOTE Robot <oslab@tsinghua.edu.cn>,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Thanks for your feedback! This problem is reported because the check
in RDMA_CM_EVENT_DISCONNECTED. However, it may be a defensive check and
the variable rdma can not be NULL.

Best wishes,
Tuo Li


On 2021/8/10 22:20, asmadeus@codewreck.org wrote:
> Leon Romanovsky wrote on Tue, Aug 10, 2021 at 04:55:42PM +0300:
>> On Tue, Aug 10, 2021 at 06:20:07AM -0700, Tuo Li wrote:
>>> The variable rdma is checked when event->event is equal to
>>> RDMA_CM_EVENT_DISCONNECTED:
>>>    if (rdma)
>>>
>>> This indicates that it can be NULL. If so, a null-pointer dereference will
>>> occur when calling complete():
>>>    complete(&rdma->cm_done);
>>>
>>> To fix this possible null-pointer dereference, calling complete() only
>>> when rdma is not NULL.
>> You need to explain how is it possible and blindly set if () checks.
>> I would say first "if (rdma)" is not needed, but don't know for sure.
> Sounds like static analysis because there's a if (rdma) check in
> RDMA_CM_EVENT_DISCONNECTED above, so if that needed check then it will
> bug right afterwards
>
> I'd tend to agree I don't think it's possible client->trans is null
> there (it's filled right after rdma_create_id which defines the handler,
> there might be a window where the callback is called before? But as I
> understand it shouldn't be called until we resolve address and connect
> then later disconnect)
>
> So, I agree with Leon - unless you have a backtrace of a real bug
> let's remove the other 'if' if you want to cleanup something for your
> robot.
>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
