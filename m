Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FAE572E52
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Jul 2022 08:39:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBW1k-0002Mx-B8; Wed, 13 Jul 2022 06:39:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kent.overstreet@gmail.com>) id 1oBW1j-0002Mr-QU
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 06:39:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gWkpUUzApawwJR2aamV/fgK66eMtR6xDSFbaB2LkNYI=; b=efFJYk1Q04Y66uH8YcF4jmhm+L
 LhnX3F2rrN3+sOUdQmU4Luzq9QlzQiuRrMj91pnuXiUPNfbXhaHNbpADL8fXH5z9PW1f/d2jVBtTp
 bff/t2tgwHHAPMOwv9IlNj5JwhvVsKY2tDcwaeISWAx8p6+Xcmm2HcQhRpRFoT1wIQOE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gWkpUUzApawwJR2aamV/fgK66eMtR6xDSFbaB2LkNYI=; b=PpflMouZ+Swi5VP8g70inUBQmn
 2iOm5BRd7qFmhY2sDcBxsrgY9Qd73ma2Z/+MTQdd83A4aPlLWUFUgh8SZd0A0+IWMHwxaCE/bm0RK
 Xq/Cx9pi7s7nAzxGJFlvoxp/fYhWy35uFP+mYqT8FqjZ5wesxl89N/YPk+uijwXoX7w8=;
Received: from mail-qt1-f177.google.com ([209.85.160.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oBW1h-00FQi1-Ry
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 06:39:14 +0000
Received: by mail-qt1-f177.google.com with SMTP id i21so9882148qtw.12
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 12 Jul 2022 23:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=gWkpUUzApawwJR2aamV/fgK66eMtR6xDSFbaB2LkNYI=;
 b=elHG3txMqbKZ0Hgz2CXaWzEdKvfGOSI3hHLUWrbJplgeOvYJvVmXhuA1EDE7Aqvpne
 siiKftydQlg1sxEqI99z+DR6ZZbzAHRvFvM/bgpz1nNsqU9tR5Wq1FWJ5rpT5xxayWYn
 eGT0xCVToAtrH03QMjeRTR9+48VER2tukKlgtMt06tbidpbDY+zsHDQ4jWOznP6j4Or6
 4Gdqj4/RVW52sahiHQda/a125HCOEpSHwmFWdPmpV/zfuDqLg12Nw4RyXmb3hpb+myGL
 gu/UU7L2BpPMDVJDUtkC0PFJi3sMz6aYP7beC/bkORNENqzf+gnlWnYP3JPYX5W4bqud
 Yg9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=gWkpUUzApawwJR2aamV/fgK66eMtR6xDSFbaB2LkNYI=;
 b=terrPJENtY9wITyy0c9By62CUKARlZVyriec9IfUvl0a5SUEx/P+yBIo8KYTz+aRu/
 JFNP0rx65FfMgCupa2LGCJ+TafZMCk2dOVM4+ScMCtlmTvpl44asBJs2CLbOq/NKoOrD
 1AMfjG8sY0kMJ+Yfy3cZh5eJwwkzTK5w22/+BDGy+T4Yw4oNw0S9AxBgP1SAkqrGzSJl
 ls/Vcl3ZX7Qo50Eey1xHO39HWgXSgKb9N2imJjl4tghoXvfAJgT/4hqEuvYUljSP97rD
 q6gXWrybIlhFT/IsH0VckU51ZSvtxrm47AVb81Vu8wsN8iRpwaOyM1j2bT6kE4ztjxM5
 WT7g==
X-Gm-Message-State: AJIora/Y+hmiBldNya5lWJ+mk5RIo6kylb3tJQevwFy3/5b4HEL85opv
 ACHo/u01tXE5n7skD09FNg==
X-Google-Smtp-Source: AGRyM1vipNm0vZXEBhnWy6tqduUht2fjLRfLPlMPVY68w7VsD7/4JYv1Loq0v4itdn2MI9k/4oRdEg==
X-Received: by 2002:a05:622a:1903:b0:31e:b737:a86d with SMTP id
 w3-20020a05622a190300b0031eb737a86dmr1515986qtc.630.1657694348045; 
 Tue, 12 Jul 2022 23:39:08 -0700 (PDT)
Received: from [192.168.1.210] (c-73-219-103-14.hsd1.vt.comcast.net.
 [73.219.103.14]) by smtp.gmail.com with ESMTPSA id
 z14-20020ac86b8e000000b0031eb393aa45sm6387375qts.40.2022.07.12.23.39.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Jul 2022 23:39:07 -0700 (PDT)
Message-ID: <0aa8323d-9461-a861-ac35-6952e7aeaf93@gmail.com>
Date: Wed, 13 Jul 2022 02:39:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
References: <12950409.o0bIpVV1Ut@silver>
 <20220713041700.2502404-1-asmadeus@codewreck.org>
From: Kent Overstreet <kent.overstreet@gmail.com>
In-Reply-To: <20220713041700.2502404-1-asmadeus@codewreck.org>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 7/13/22 00:17,
 Dominique Martinet wrote: > TFLUSH is called
 while the thread still holds memory for the > request we're trying to flush,
 so mempool alloc can deadlock > there. With p9_msg_buf_size( [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kent.overstreet[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.177 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.177 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oBW1h-00FQi1-Ry
Subject: Re: [V9fs-developer] [RFC PATCH] 9p: forbid use of mempool for
 TFLUSH
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Latchesar Ionkov <lucho@ionkov.net>, Greg Kurz <groug@kaod.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 7/13/22 00:17, Dominique Martinet wrote:
> TFLUSH is called while the thread still holds memory for the
> request we're trying to flush, so mempool alloc can deadlock
> there. With p9_msg_buf_size() rework the flush allocation is
> small so just make it fail if allocation failed; all that does
> is potentially leak the request we're flushing until its reply
> finally does come.. or if it never does until umount.

Why not just add separate mempools for flushes? We don't have to 
allocate memory for big payloads so they won't cost much, and then the 
IO paths will be fully mempool-ified :)


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
