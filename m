Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A1C28B14C
	for <lists+v9fs-developer@lfdr.de>; Mon, 12 Oct 2020 11:18:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kRtyH-0001I9-9S; Mon, 12 Oct 2020 09:18:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <anant.thazhemadam@gmail.com>) id 1kRty9-0001Ge-Gj
 for v9fs-developer@lists.sourceforge.net; Mon, 12 Oct 2020 09:18:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ov3FUKrNTHLpkrGh5RLsSQkZzOmYXtgceijebKP/orE=; b=XW756Wp2S9TqKNsQNkmX7UCLHc
 PV4YuaBdWWvNDUs2gLNzo2VeoPcDV8ABwtebMuTWD8TroweIMkXHRtpbqJScvQuMUD7nqTHda2BUG
 qMHvvOxvoEyL8llCWjmsLMBcsddMo4ygB+6A6uRkGv2/yhje0CQuAkyFJ2FtQHgjKK9I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ov3FUKrNTHLpkrGh5RLsSQkZzOmYXtgceijebKP/orE=; b=A93ppSzG30ayFGsgv79jPMBitO
 3VuQ6LINWfbiMqxSrLYsBPHKjvF8jBX7ZUAYQ1VH5+KGVukF2AxIiBGMcnhweCcXE2yqeBglNPnES
 6slKpwNRVDxNTp/MDCqqSyITW/mEtJXqL3ldSo5kHoNKwWCQJ+HgbbBofNpjN7xjxgO8=;
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kRtxx-00BtlR-MB
 for v9fs-developer@lists.sourceforge.net; Mon, 12 Oct 2020 09:18:13 +0000
Received: by mail-pg1-f194.google.com with SMTP id y14so13629643pgf.12
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 12 Oct 2020 02:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Ov3FUKrNTHLpkrGh5RLsSQkZzOmYXtgceijebKP/orE=;
 b=Pxf91ZADA3kHjPOTZCRMhqikUJb6PIBg3jJeAbwA/Hf8O18uGy2b0oXYhxlV/BTduC
 n/djlhrL8iuzGzI7fyqZRmsCzqHugC0fvDI6OpfiJFg7FdKqYnTdmoeIF/AlzDZ5fUEA
 cBaj2zgLb7ITgxsXWhbRAPzZnTFP+3UHN2w9KWALiaD2FJ2TbDn2oT4W3M8DfHtf1FkF
 Nx7OVH7Z4k3RDHxutTwnSsOZ18/lCgUUtzsjLalW1qCDcBlrMHA60QSMgpW29f0Yhhdx
 Z8VjKTKEySkDlq43+F+xVpHzakF9ZASwJtHFB/iKmb1BZkItovGokmMJMfOIrigkWNRN
 Xe3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Ov3FUKrNTHLpkrGh5RLsSQkZzOmYXtgceijebKP/orE=;
 b=Sw5gvAKmxiZt3+vERbyuLI2XF5pAhHytSfAbexSNFqYNOsKDkX+prfB/DoZ94aQ/yC
 f3Hdyzjy8gzF36/VihBvHAUgJ7QWcxCMgefXgjyvvVRFeLYKX7Vcg+WKAHXOe5JE3b4j
 Y6cM/LT9opbPJSYqeBcQNDfqMPJWKubxLBfGxxgFrRgnahg6ga521xBV94BHsvPJjWJP
 SzHUyLkdFVTM4D5AgF57ewD0b5e0HhFFgGWTwvQ7Z1bq3kHlrd00XqZ2njeQFyVlUXdr
 gtVLvhprh5pB/pK7jVBMq2CnbDBTr8PKdGFMKCNduSxZpcYTM+b3m+z6hzKtpk5Jahaj
 zMDg==
X-Gm-Message-State: AOAM531Z/MY1mvBs6lEwz0JrsSzJqok7CNComVZM0eXWPZfCPBF5iU0u
 HjOEs605fZOGmOBVPTjC3Kc=
X-Google-Smtp-Source: ABdhPJxxXGtyhYKNPjMn5KenHZwRXjmQMFBS4Ovr6doT1BbITKj2ygbJJBvg7ch/3u6iFxAfxHNPgg==
X-Received: by 2002:a17:90b:4d05:: with SMTP id
 mw5mr9039646pjb.9.1602494275069; 
 Mon, 12 Oct 2020 02:17:55 -0700 (PDT)
Received: from [192.168.0.104] ([49.207.200.2])
 by smtp.gmail.com with ESMTPSA id w205sm19514691pfc.78.2020.10.12.02.17.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Oct 2020 02:17:54 -0700 (PDT)
To: Dominique Martinet <asmadeus@codewreck.org>
References: <20201012042404.2508-1-anant.thazhemadam@gmail.com>
 <20201012075910.GA17745@nautica>
From: Anant Thazhemadam <anant.thazhemadam@gmail.com>
Message-ID: <147004bd-5cff-6240-218d-ebd80a9b48a1@gmail.com>
Date: Mon, 12 Oct 2020 14:47:50 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201012075910.GA17745@nautica>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (anant.thazhemadam[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kRtxx-00BtlR-MB
Subject: Re: [V9fs-developer] [PATCH net] net: 9p: initialize
 sun_server.sun_path to have addr's value only when addr is valid
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
Cc: lucho@ionkov.net, syzbot+75d51fe5bf4ebe988518@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 kuba@kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, davem@davemloft.net
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


On 12-10-2020 13:29, Dominique Martinet wrote:
> Anant Thazhemadam wrote on Mon, Oct 12, 2020:
>> In p9_fd_create_unix, checking is performed to see if the addr (passed
>> as an argument) is NULL or not.
>> However, no check is performed to see if addr is a valid address, i.e.,
>> it doesn't entirely consist of only 0's.
>> The initialization of sun_server.sun_path to be equal to this faulty
>> addr value leads to an uninitialized variable, as detected by KMSAN.
>> Checking for this (faulty addr) and returning a negative error number
>> appropriately, resolves this issue.
> I'm not sure I agree a fully zeroed address is faulty but I agree we can
> probably refuse it given userspace can't pass useful abstract addresses
> here.


Understood. It's=A0 probably a better that I modify the commit message a li=
ttle and
send a v2 so it becomes more accurate.

> Just one nitpick but this is otherwise fine - good catch!

Thank you!

>
>> Reported-by: syzbot+75d51fe5bf4ebe988518@syzkaller.appspotmail.com
>> Tested-by: syzbot+75d51fe5bf4ebe988518@syzkaller.appspotmail.com
>> Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
>> ---
>>  net/9p/trans_fd.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
>> index c0762a302162..8f528e783a6c 100644
>> --- a/net/9p/trans_fd.c
>> +++ b/net/9p/trans_fd.c
>> @@ -1023,7 +1023,7 @@ p9_fd_create_unix(struct p9_client *client, const =
char *addr, char *args)
>>  =

>>  	csocket =3D NULL;
>>  =

>> -	if (addr =3D=3D NULL)
>> +	if (!addr || !strlen(addr))
> Since we don't care about the actual length here, how about checking for
> addr[0] directly?
> That'll spare a strlen() call in the valid case.
>
You mentioned how a fully zeroed address isn't exactly faulty. By extension=
, wouldn't that
mean that an address that simply begins with a 0 isn't faulty as well?
This is an interesting point, because if the condition is modified to check=
ing for addr[0] directly,
addresses that simply begin with 0 (but have more non-zero content followin=
g) wouldn't be
copied over either, right?
In the end, it comes down to what you define as a "valid" value that sun_pa=
th can have.
We've already agreed that a fully zeroed address wouldn't qualify as a vali=
d value for sun_path.
Are addresses that aren't fully zeroed, but only begin with a 0 also to be =
considered as an
unacceptable value for sun_path?

Thanks,
Anant






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
