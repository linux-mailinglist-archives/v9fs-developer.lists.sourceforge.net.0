Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BDE63C67C
	for <lists+v9fs-developer@lfdr.de>; Tue, 29 Nov 2022 18:34:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p04Ul-00039H-Uw;
	Tue, 29 Nov 2022 17:34:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <axboe@kernel.dk>) id 1p04Ui-000396-Ek
 for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 17:34:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cfz3Mcgxkqb1OqUShW9AvM1bJWJ5IVPUimuhgnHTUfM=; b=OskJSEsZIXTy5r9AcCtlE11y3n
 0//dzDz2c7Fv4AEmrgx7PdcwPoYaRhgFVMMWdqEpGex24Rp7Kl2r82i42jIZkmpR8vocnFftCenpw
 OaFry7Q9q8LHwN1Fr3grqtMeVaJjY9ptJGiEa5/98xKah6D3NHHsdFzCLRrmL3WdcQlI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cfz3Mcgxkqb1OqUShW9AvM1bJWJ5IVPUimuhgnHTUfM=; b=lv18QyuK+NGpt/s/8mJQzIYlbb
 Z8sIlOh5SFNw/mU69B8MKyR78DDb8jW9IiNqhtiCLFFKjzoc8M+egtDlHPAQSkzSZKMo363nwTn8V
 BV0EIGDw9dtM2D3OznNsjsntf+SW/8k7poufcYV6TR1AKlF1FUtCEymToyZJBYiX1u6Q=;
Received: from mail-il1-f173.google.com ([209.85.166.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p04Uc-0002pF-57 for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 17:34:07 +0000
Received: by mail-il1-f173.google.com with SMTP id z9so6949027ilu.10
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 29 Nov 2022 09:34:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=cfz3Mcgxkqb1OqUShW9AvM1bJWJ5IVPUimuhgnHTUfM=;
 b=aB+ZuGMOzbK18zkd0jlC4zEUTSM38tp9K/bCtuVmGeRWETnLRpEwg6Cfsis6G/o8YB
 2HqB7jorwoOw6h/LjLMxu5ed5EZE92927W/9yhpp/QruynXSUNxJp0OMoVkixJnRoaDz
 PSuOZAOkF9I4gSS32lclTss+2DBuTn/ncV2ntYH8YMzg9PF3tm8qf0hVKILYBg2UDCmD
 wbUFp/1Fi7NjOLDWJsNeD/wtnDvCVPYo4knWim39AeNTc1EFLvMkEGW6VYwyktGtW5Qx
 +UBWGG0y4yJft2CYMgbAUi9qHrNg41pvQg2NXxZ0NdMCIm2c1JLzlQ89YLhdvsbn7Bys
 PI7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cfz3Mcgxkqb1OqUShW9AvM1bJWJ5IVPUimuhgnHTUfM=;
 b=1IKkAvu919XYkP2Q+2DQ9svKwNzx4W2MagVxZ1edlu66pcZurPuJ9fRjJwsXa2SOtT
 B3rJhiIRNBEJZL5pEjfS+3GaSvdysPkbJRN8qfXLR8843jsTCTO7Tjv3kASKjmbC7MTd
 6hSoUoZuNuOJGT3OjoUKGbYaeLspMB1piEM9Hdg9mlO6KP1UWsyvpZTCXkMdz+2TdPO6
 zisF0m6Vo9cyaj6HqzZLXsHM7mv7c3GA3otH+3cXK4Q51VmXG0Ug+h7byFJUU4/mxj7q
 UAlYE+nuyFMUlGNcQOUCFdUN9u7FrqlNVDAzF/MNY+AVE6INEKlZKe7Fopz9+Pmw2+oH
 g/PA==
X-Gm-Message-State: ANoB5pnurCTHR2ZasU3rpYUunC0mjlHpFofripa6UZ8mTLNsiCNO5rlI
 +9p/lJ2Vi+uWp8ZcAmch+M+sGrjNYLJJlNf8
X-Google-Smtp-Source: AA0mqf5swFLksPgiEDo6TRTvtGl0tdoW1L9fhbh0pRyA3vgdzDg/DHK7jSPhCQbx1VNNnHFBlq3wIw==
X-Received: by 2002:a63:ce58:0:b0:473:e2bb:7fc0 with SMTP id
 r24-20020a63ce58000000b00473e2bb7fc0mr33307253pgi.604.1669741713274; 
 Tue, 29 Nov 2022 09:08:33 -0800 (PST)
Received: from [192.168.1.136] ([198.8.77.157])
 by smtp.gmail.com with ESMTPSA id
 h23-20020a63e157000000b00434272fe870sm8633883pgk.88.2022.11.29.09.08.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Nov 2022 09:08:32 -0800 (PST)
Message-ID: <9044e2b7-193f-ade4-b4a3-69e40b12088a@kernel.dk>
Date: Tue, 29 Nov 2022 10:08:30 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Li Zetao <lizetao1@huawei.com>
References: <20221128021005.232105-1-lizetao1@huawei.com>
 <20221129160615.3343036-1-lizetao1@huawei.com>
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <20221129160615.3343036-1-lizetao1@huawei.com>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 11/29/22 9:06 AM, Li Zetao wrote: > This patchset fixes
    similar issue, the root cause of the > problem is that the virtqueues are
    not stopped on error > handling path. Not related to just this patchset,
   but guys, Huawei really *REALLY* need to get the email situation sorted. I'm
    digging whole/half patchsets out of spam every morning. 
 
 Content analysis details:   (-2.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.166.173 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.166.173 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1p04Uc-0002pF-57
Subject: Re: [V9fs-developer] [PATCH v2 0/5] Fix probe failed when modprobe
 modules
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
Cc: lucho@ionkov.net, david@redhat.com, jasowang@redhat.com,
 linux_oss@crudebyte.com, pmorel@linux.vnet.ibm.com,
 dri-devel@lists.freedesktop.org, gurchetansingh@chromium.org,
 edumazet@google.com, kraxel@redhat.com, airlied@gmail.com, kuba@kernel.org,
 pabeni@redhat.com, olvaffe@gmail.com, st@redhat.com, ericvh@gmail.com,
 rusty@rustcorp.com.au, linux-block@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, stefanha@redhat.com, airlied@redhat.com,
 cornelia.huck@de.ibm.com, virtualization@lists.linux-foundation.org,
 pankaj.gupta.linux@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, pbonzini@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gMTEvMjkvMjIgOTowNuKAr0FNLCBMaSBaZXRhbyB3cm90ZToKPiBUaGlzIHBhdGNoc2V0IGZp
eGVzIHNpbWlsYXIgaXNzdWUsIHRoZSByb290IGNhdXNlIG9mIHRoZQo+IHByb2JsZW0gaXMgdGhh
dCB0aGUgdmlydHF1ZXVlcyBhcmUgbm90IHN0b3BwZWQgb24gZXJyb3IKPiBoYW5kbGluZyBwYXRo
LgoKTm90IHJlbGF0ZWQgdG8ganVzdCB0aGlzIHBhdGNoc2V0LCBidXQgZ3V5cywgSHVhd2VpIHJl
YWxseSAqUkVBTExZKiBuZWVkCnRvIGdldCB0aGUgZW1haWwgc2l0dWF0aW9uIHNvcnRlZC4gSSdt
IGRpZ2dpbmcgd2hvbGUvaGFsZiBwYXRjaHNldHMgb3V0Cm9mIHNwYW0gZXZlcnkgbW9ybmluZy4K
ClRoaXMgaGFzIGJlZW4gYnJvdWdodCB1cCBpbiB0aGUgcGFzdC4gQW5kIG5vLCB0aGUgY2xvdWQg
dmFyaWFudCBvZgp0aGUgZW1haWwgYWxzbyBkb2Vzbid0IHdvcmsgcHJvcGVybHkuCgpUYWxrIHRv
IHlvdXIgSVQgZGVwYXJ0bWVudCwgZ2V0IHRoaXMgc29ydGVkIG9uY2UgYW5kIGZvciBhbGwuIFlv
dSByaXNrCnlvdXIgcGF0Y2hlcyBiZWluZyBkdW1wZWQgb24gdGhlIGZsb29yIGJlY2F1c2UgcGVv
cGxlIGRvbid0IHNlZSB0aGVtLApvciBvbmx5IHNlZSBzbWFsbCBwYXJ0cyBvZiBhIHBhdGNoc2V0
LiBBbmQgaXQncyByZWFsbHkgYW5ub3lpbmcgdG8gaGF2ZQp0byBkZWFsIHdpdGggYXMgYSByZWNp
cGllbnQuCgotLSAKSmVucyBBeGJvZQoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxv
cGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
